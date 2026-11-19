package com.vuitton.android.domain.usecase.products;

import com.vuitton.android.domain.repository.ProductRepository;
import com.vuitton.foundation.model.domain.model.producttiny.RelatedProductAlgorithm;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/products/GetRelatedProductsUseCase;", "", "Lcom/vuitton/android/domain/repository/ProductRepository;", "repository", "<init>", "(Lcom/vuitton/android/domain/repository/ProductRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetRelatedProductsUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ProductRepository f50324a;

    @Inject
    public GetRelatedProductsUseCase(ProductRepository productRepository) {
        productRepository.getClass();
        this.f50324a = productRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, ContinuationImpl continuationImpl) {
        GetRelatedProductsUseCase$run$1 getRelatedProductsUseCase$run$1;
        if (continuationImpl instanceof GetRelatedProductsUseCase$run$1) {
            getRelatedProductsUseCase$run$1 = (GetRelatedProductsUseCase$run$1) continuationImpl;
            int i2 = getRelatedProductsUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getRelatedProductsUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getRelatedProductsUseCase$run$1 = new GetRelatedProductsUseCase$run$1(this, continuationImpl);
            }
        } else {
            getRelatedProductsUseCase$run$1 = new GetRelatedProductsUseCase$run$1(this, continuationImpl);
        }
        Object obj = getRelatedProductsUseCase$run$1.f50325b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getRelatedProductsUseCase$run$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        RelatedProductAlgorithm relatedProductAlgorithm = RelatedProductAlgorithm.MOST_PURCHASED_WITH;
        getRelatedProductsUseCase$run$1.d = 1;
        Object objB = this.f50324a.b(str, relatedProductAlgorithm, getRelatedProductsUseCase$run$1);
        return objB == coroutineSingletons ? coroutineSingletons : objB;
    }
}

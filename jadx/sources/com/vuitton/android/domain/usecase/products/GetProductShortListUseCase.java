package com.vuitton.android.domain.usecase.products;

import com.vuitton.android.domain.repository.ProductRepository;
import defpackage.md;
import java.util.ArrayList;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;", "", "Lcom/vuitton/android/domain/repository/ProductRepository;", "repository", "<init>", "(Lcom/vuitton/android/domain/repository/ProductRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetProductShortListUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ProductRepository f50310a;

    @Inject
    public GetProductShortListUseCase(ProductRepository productRepository) {
        productRepository.getClass();
        this.f50310a = productRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ArrayList arrayList, ContinuationImpl continuationImpl) {
        GetProductShortListUseCase$run$1 getProductShortListUseCase$run$1;
        if (continuationImpl instanceof GetProductShortListUseCase$run$1) {
            getProductShortListUseCase$run$1 = (GetProductShortListUseCase$run$1) continuationImpl;
            int i2 = getProductShortListUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getProductShortListUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getProductShortListUseCase$run$1 = new GetProductShortListUseCase$run$1(this, continuationImpl);
            }
        } else {
            getProductShortListUseCase$run$1 = new GetProductShortListUseCase$run$1(this, continuationImpl);
        }
        Object obj = getProductShortListUseCase$run$1.f50311b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getProductShortListUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            getProductShortListUseCase$run$1.d = 1;
            Object objH = this.f50310a.h(arrayList, getProductShortListUseCase$run$1);
            return objH == coroutineSingletons ? coroutineSingletons : objH;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}

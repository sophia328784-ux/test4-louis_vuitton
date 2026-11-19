package com.vuitton.android.domain.usecase.products;

import com.vuitton.android.domain.repository.LastViewedProductRepository;
import defpackage.b4;
import defpackage.md;
import defpackage.nj0;
import java.util.ArrayList;
import java.util.Collection;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase;", "", "Lcom/vuitton/android/domain/repository/LastViewedProductRepository;", "lastViewedProductRepository", "<init>", "(Lcom/vuitton/android/domain/repository/LastViewedProductRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class RemoveSkuFromLastViewedProductListUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LastViewedProductRepository f50345a;

    @Inject
    public RemoveSkuFromLastViewedProductListUseCase(LastViewedProductRepository lastViewedProductRepository) {
        lastViewedProductRepository.getClass();
        this.f50345a = lastViewedProductRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, ContinuationImpl continuationImpl) {
        RemoveSkuFromLastViewedProductListUseCase$run$1 removeSkuFromLastViewedProductListUseCase$run$1;
        if (continuationImpl instanceof RemoveSkuFromLastViewedProductListUseCase$run$1) {
            removeSkuFromLastViewedProductListUseCase$run$1 = (RemoveSkuFromLastViewedProductListUseCase$run$1) continuationImpl;
            int i2 = removeSkuFromLastViewedProductListUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                removeSkuFromLastViewedProductListUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                removeSkuFromLastViewedProductListUseCase$run$1 = new RemoveSkuFromLastViewedProductListUseCase$run$1(this, continuationImpl);
            }
        } else {
            removeSkuFromLastViewedProductListUseCase$run$1 = new RemoveSkuFromLastViewedProductListUseCase$run$1(this, continuationImpl);
        }
        Object obj = removeSkuFromLastViewedProductListUseCase$run$1.f50346b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = removeSkuFromLastViewedProductListUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            LastViewedProductRepository lastViewedProductRepository = this.f50345a;
            ArrayList arrayListZ0 = CollectionsKt.z0((Collection) lastViewedProductRepository.b().getValue());
            arrayListZ0.removeIf(new b4(new nj0(str, 15), 5));
            removeSkuFromLastViewedProductListUseCase$run$1.d = 1;
            if (lastViewedProductRepository.a(arrayListZ0, removeSkuFromLastViewedProductListUseCase$run$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            ((Result) obj).getClass();
        }
        return Unit.f71739a;
    }
}

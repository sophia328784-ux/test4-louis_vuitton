package com.vuitton.android.domain.usecase.products;

import com.vuitton.android.domain.repository.CatalogRepository;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/domain/usecase/products/GetProductVariationsAvailabilityUseCase;", "", "Lcom/vuitton/android/domain/repository/CatalogRepository;", "catalogRepository", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "<init>", "(Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetProductVariationsAvailabilityUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CatalogRepository f50314a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f50315b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f50316c;

    @Inject
    public GetProductVariationsAvailabilityUseCase(CatalogRepository catalogRepository, IsFeatureAvailableUseCase isFeatureAvailableUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase) {
        catalogRepository.getClass();
        isFeatureAvailableUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        this.f50314a = catalogRepository;
        this.f50315b = isFeatureAvailableUseCase;
        this.f50316c = requireCachedAppConfigUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, List list, ContinuationImpl continuationImpl) {
        GetProductVariationsAvailabilityUseCase$run$1 getProductVariationsAvailabilityUseCase$run$1;
        CatalogRepository catalogRepository;
        if (continuationImpl instanceof GetProductVariationsAvailabilityUseCase$run$1) {
            getProductVariationsAvailabilityUseCase$run$1 = (GetProductVariationsAvailabilityUseCase$run$1) continuationImpl;
            int i2 = getProductVariationsAvailabilityUseCase$run$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getProductVariationsAvailabilityUseCase$run$1.g = i2 - Integer.MIN_VALUE;
            } else {
                getProductVariationsAvailabilityUseCase$run$1 = new GetProductVariationsAvailabilityUseCase$run$1(this, continuationImpl);
            }
        } else {
            getProductVariationsAvailabilityUseCase$run$1 = new GetProductVariationsAvailabilityUseCase$run$1(this, continuationImpl);
        }
        Object objC = getProductVariationsAvailabilityUseCase$run$1.f50319e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getProductVariationsAvailabilityUseCase$run$1.g;
        if (i3 == 0) {
            ResultKt.b(objC);
            if (!this.f50316c.a().Y) {
                Result.Companion companion = Result.INSTANCE;
                return new Result.Failure(new GetAvailabilityException.NotECommerce());
            }
            Feature[] featureArr = {Feature.TWIST};
            CatalogRepository catalogRepository2 = this.f50314a;
            getProductVariationsAvailabilityUseCase$run$1.f50317b = catalogRepository2;
            getProductVariationsAvailabilityUseCase$run$1.f50318c = str;
            getProductVariationsAvailabilityUseCase$run$1.d = list;
            getProductVariationsAvailabilityUseCase$run$1.g = 1;
            objC = this.f50315b.c(featureArr, false, getProductVariationsAvailabilityUseCase$run$1);
            if (objC != coroutineSingletons) {
                catalogRepository = catalogRepository2;
            }
        }
        if (i3 != 1) {
            if (i3 == 2) {
                ResultKt.b(objC);
                return ((Result) objC).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        list = getProductVariationsAvailabilityUseCase$run$1.d;
        str = getProductVariationsAvailabilityUseCase$run$1.f50318c;
        catalogRepository = getProductVariationsAvailabilityUseCase$run$1.f50317b;
        ResultKt.b(objC);
        boolean zBooleanValue = ((Boolean) objC).booleanValue();
        getProductVariationsAvailabilityUseCase$run$1.f50317b = null;
        getProductVariationsAvailabilityUseCase$run$1.f50318c = null;
        getProductVariationsAvailabilityUseCase$run$1.d = null;
        getProductVariationsAvailabilityUseCase$run$1.g = 2;
        Object objA = catalogRepository.a(str, list, zBooleanValue, getProductVariationsAvailabilityUseCase$run$1);
        return objA == coroutineSingletons ? coroutineSingletons : objA;
    }
}

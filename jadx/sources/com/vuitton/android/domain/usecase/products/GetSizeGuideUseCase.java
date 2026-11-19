package com.vuitton.android.domain.usecase.products;

import com.vuitton.android.domain.repository.CatalogRepository;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;", "", "Lcom/vuitton/android/domain/repository/CatalogRepository;", "repository", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "<init>", "(Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetSizeGuideUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CatalogRepository f50327a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f50328b;

    @Inject
    public GetSizeGuideUseCase(CatalogRepository catalogRepository, IsFeatureAvailableUseCase isFeatureAvailableUseCase) {
        catalogRepository.getClass();
        isFeatureAvailableUseCase.getClass();
        this.f50327a = catalogRepository;
        this.f50328b = isFeatureAvailableUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, String str2, ContinuationImpl continuationImpl) {
        GetSizeGuideUseCase$run$1 getSizeGuideUseCase$run$1;
        if (continuationImpl instanceof GetSizeGuideUseCase$run$1) {
            getSizeGuideUseCase$run$1 = (GetSizeGuideUseCase$run$1) continuationImpl;
            int i2 = getSizeGuideUseCase$run$1.f50332f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getSizeGuideUseCase$run$1.f50332f = i2 - Integer.MIN_VALUE;
            } else {
                getSizeGuideUseCase$run$1 = new GetSizeGuideUseCase$run$1(this, continuationImpl);
            }
        } else {
            getSizeGuideUseCase$run$1 = new GetSizeGuideUseCase$run$1(this, continuationImpl);
        }
        Object objC = getSizeGuideUseCase$run$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getSizeGuideUseCase$run$1.f50332f;
        if (i3 == 0) {
            ResultKt.b(objC);
            Feature[] featureArr = {Feature.SIZE_GUIDE_PIM_ANDROID};
            getSizeGuideUseCase$run$1.f50329b = str;
            getSizeGuideUseCase$run$1.f50330c = str2;
            getSizeGuideUseCase$run$1.f50332f = 1;
            objC = this.f50328b.c(featureArr, false, getSizeGuideUseCase$run$1);
            if (objC != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i3 != 1) {
            if (i3 == 2 || i3 == 3) {
                ResultKt.b(objC);
                return ((Result) objC).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        str2 = getSizeGuideUseCase$run$1.f50330c;
        str = getSizeGuideUseCase$run$1.f50329b;
        ResultKt.b(objC);
        boolean zBooleanValue = ((Boolean) objC).booleanValue();
        CatalogRepository catalogRepository = this.f50327a;
        if (zBooleanValue && str2 != null) {
            getSizeGuideUseCase$run$1.f50329b = null;
            getSizeGuideUseCase$run$1.f50330c = null;
            getSizeGuideUseCase$run$1.f50332f = 2;
            Object objC2 = catalogRepository.c(null, str2, getSizeGuideUseCase$run$1);
            if (objC2 != coroutineSingletons) {
                return objC2;
            }
        } else {
            if (zBooleanValue || str == null) {
                Result.Companion companion = Result.INSTANCE;
                return null;
            }
            getSizeGuideUseCase$run$1.f50329b = null;
            getSizeGuideUseCase$run$1.f50330c = null;
            getSizeGuideUseCase$run$1.f50332f = 3;
            Object objC3 = catalogRepository.c(str, null, getSizeGuideUseCase$run$1);
            if (objC3 != coroutineSingletons) {
                return objC3;
            }
        }
        return coroutineSingletons;
    }
}

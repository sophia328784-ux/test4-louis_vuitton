package com.vuitton.android.domain.usecase.products;

import com.vuitton.android.domain.repository.CatalogRepository;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.availability.ProductStock;
import com.vuitton.foundation.model.domain.model.product.availability.SkuAvailability;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import defpackage.n00;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;", "", "Lcom/vuitton/android/domain/repository/CatalogRepository;", "catalogRepository", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "<init>", "(Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetProductAvailabilityUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CatalogRepository f50298a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f50299b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f50300c;

    @Inject
    public GetProductAvailabilityUseCase(CatalogRepository catalogRepository, IsFeatureAvailableUseCase isFeatureAvailableUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase) {
        catalogRepository.getClass();
        isFeatureAvailableUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        this.f50298a = catalogRepository;
        this.f50299b = isFeatureAvailableUseCase;
        this.f50300c = requireCachedAppConfigUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00ac A[Catch: all -> 0x00d1, TryCatch #0 {all -> 0x00d1, blocks: (B:30:0x00a6, B:32:0x00ac, B:33:0x00b2, B:35:0x00b8, B:38:0x00c5, B:41:0x00ce), top: B:46:0x00a6 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00b8 A[Catch: all -> 0x00d1, TryCatch #0 {all -> 0x00d1, blocks: (B:30:0x00a6, B:32:0x00ac, B:33:0x00b2, B:35:0x00b8, B:38:0x00c5, B:41:0x00ce), top: B:46:0x00a6 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c5 A[Catch: all -> 0x00d1, TryCatch #0 {all -> 0x00d1, blocks: (B:30:0x00a6, B:32:0x00ac, B:33:0x00b2, B:35:0x00b8, B:38:0x00c5, B:41:0x00ce), top: B:46:0x00a6 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00a6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x00cd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:? A[LOOP:0: B:33:0x00b2->B:52:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, ContinuationImpl continuationImpl) {
        GetProductAvailabilityUseCase$run$1 getProductAvailabilityUseCase$run$1;
        List list;
        String str2;
        CatalogRepository catalogRepository;
        Object objA;
        String str3;
        List list2;
        String str4;
        boolean zEquals;
        if (continuationImpl instanceof GetProductAvailabilityUseCase$run$1) {
            getProductAvailabilityUseCase$run$1 = (GetProductAvailabilityUseCase$run$1) continuationImpl;
            int i2 = getProductAvailabilityUseCase$run$1.f50305h;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getProductAvailabilityUseCase$run$1.f50305h = i2 - Integer.MIN_VALUE;
            } else {
                getProductAvailabilityUseCase$run$1 = new GetProductAvailabilityUseCase$run$1(this, continuationImpl);
            }
        } else {
            getProductAvailabilityUseCase$run$1 = new GetProductAvailabilityUseCase$run$1(this, continuationImpl);
        }
        Object obj = getProductAvailabilityUseCase$run$1.f50304f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getProductAvailabilityUseCase$run$1.f50305h;
        Object obj2 = null;
        if (i3 == 0) {
            ResultKt.b(obj);
            if (!this.f50300c.a().Y) {
                Result.Companion companion = Result.INSTANCE;
                return new Result.Failure(new GetAvailabilityException.NotECommerce());
            }
            List listV = n00.v(str);
            Feature[] featureArr = {Feature.TWIST};
            getProductAvailabilityUseCase$run$1.f50301b = str;
            CatalogRepository catalogRepository2 = this.f50298a;
            getProductAvailabilityUseCase$run$1.f50302c = catalogRepository2;
            getProductAvailabilityUseCase$run$1.d = str;
            getProductAvailabilityUseCase$run$1.f50303e = listV;
            getProductAvailabilityUseCase$run$1.f50305h = 1;
            Object objC = this.f50299b.c(featureArr, false, getProductAvailabilityUseCase$run$1);
            if (objC != coroutineSingletons) {
                obj = objC;
                list = listV;
                str2 = str;
                catalogRepository = catalogRepository2;
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            list = getProductAvailabilityUseCase$run$1.f50303e;
            str = getProductAvailabilityUseCase$run$1.d;
            catalogRepository = getProductAvailabilityUseCase$run$1.f50302c;
            str2 = getProductAvailabilityUseCase$run$1.f50301b;
            ResultKt.b(obj);
        } else {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str3 = getProductAvailabilityUseCase$run$1.f50301b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion2 = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            return objA;
        }
        try {
            list2 = ((ProductStock) objA).f67946a;
            if (list2 != null) {
                return null;
            }
            for (Object obj3 : list2) {
                str4 = ((SkuAvailability) obj3).f67947a;
                if (str4 == null) {
                    zEquals = false;
                } else {
                    SkuId.Companion companion3 = SkuId.INSTANCE;
                    zEquals = str4.equals(str3);
                }
                if (zEquals) {
                    obj2 = obj3;
                    break;
                }
            }
            return (SkuAvailability) obj2;
        } catch (Throwable th) {
            Result.Companion companion4 = Result.INSTANCE;
            return new Result.Failure(th);
        }
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        getProductAvailabilityUseCase$run$1.f50301b = str2;
        getProductAvailabilityUseCase$run$1.f50302c = null;
        getProductAvailabilityUseCase$run$1.d = null;
        getProductAvailabilityUseCase$run$1.f50303e = null;
        getProductAvailabilityUseCase$run$1.f50305h = 2;
        objA = catalogRepository.a(str, list, zBooleanValue, getProductAvailabilityUseCase$run$1);
        if (objA != coroutineSingletons) {
            str3 = str2;
            Result.Companion companion5 = Result.INSTANCE;
            if (!(objA instanceof Result.Failure)) {
                return objA;
            }
            list2 = ((ProductStock) objA).f67946a;
            if (list2 != null) {
                return null;
            }
            while (r10.hasNext()) {
                str4 = ((SkuAvailability) obj3).f67947a;
                if (str4 == null) {
                    zEquals = false;
                } else {
                    SkuId.Companion companion6 = SkuId.INSTANCE;
                    zEquals = str4.equals(str3);
                }
                if (zEquals) {
                    obj2 = obj3;
                    break;
                }
            }
            return (SkuAvailability) obj2;
        }
        return coroutineSingletons;
    }
}

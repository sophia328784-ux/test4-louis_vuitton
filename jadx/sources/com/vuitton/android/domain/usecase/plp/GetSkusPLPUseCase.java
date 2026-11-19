package com.vuitton.android.domain.usecase.plp;

import com.vuitton.android.domain.repository.CatalogRepository;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import defpackage.md;
import java.util.ArrayList;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/plp/GetSkusPLPUseCase;", "", "Lcom/vuitton/android/domain/repository/CatalogRepository;", "repository", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "<init>", "(Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetSkusPLPUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CatalogRepository f50244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f50245b;

    @Inject
    public GetSkusPLPUseCase(CatalogRepository catalogRepository, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase) {
        catalogRepository.getClass();
        requireCachedAppConfigUseCase.getClass();
        this.f50244a = catalogRepository;
        this.f50245b = requireCachedAppConfigUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ArrayList arrayList, ContinuationImpl continuationImpl) {
        GetSkusPLPUseCase$run$1 getSkusPLPUseCase$run$1;
        if (continuationImpl instanceof GetSkusPLPUseCase$run$1) {
            getSkusPLPUseCase$run$1 = (GetSkusPLPUseCase$run$1) continuationImpl;
            int i2 = getSkusPLPUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getSkusPLPUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getSkusPLPUseCase$run$1 = new GetSkusPLPUseCase$run$1(this, continuationImpl);
            }
        } else {
            getSkusPLPUseCase$run$1 = new GetSkusPLPUseCase$run$1(this, continuationImpl);
        }
        Object obj = getSkusPLPUseCase$run$1.f50246b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getSkusPLPUseCase$run$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        boolean z = this.f50245b.a().a0.f67282a;
        getSkusPLPUseCase$run$1.d = 1;
        Object objI = this.f50244a.i(arrayList, z, getSkusPLPUseCase$run$1);
        return objI == coroutineSingletons ? coroutineSingletons : objI;
    }
}

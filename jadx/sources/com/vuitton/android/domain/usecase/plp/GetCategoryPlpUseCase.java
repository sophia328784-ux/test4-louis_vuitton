package com.vuitton.android.domain.usecase.plp;

import com.vuitton.android.domain.repository.CatalogRepository;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;", "", "Lcom/vuitton/android/domain/repository/CatalogRepository;", "repository", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "<init>", "(Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetCategoryPlpUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CatalogRepository f50228a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f50229b;

    @Inject
    public GetCategoryPlpUseCase(CatalogRepository catalogRepository, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase) {
        catalogRepository.getClass();
        requireCachedAppConfigUseCase.getClass();
        this.f50228a = catalogRepository;
        this.f50229b = requireCachedAppConfigUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object a(String str, String str2, int i2, String str3, boolean z, ContinuationImpl continuationImpl) {
        GetCategoryPlpUseCase$run$1 getCategoryPlpUseCase$run$1;
        if (continuationImpl instanceof GetCategoryPlpUseCase$run$1) {
            getCategoryPlpUseCase$run$1 = (GetCategoryPlpUseCase$run$1) continuationImpl;
            int i3 = getCategoryPlpUseCase$run$1.d;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                getCategoryPlpUseCase$run$1.d = i3 - Integer.MIN_VALUE;
            } else {
                getCategoryPlpUseCase$run$1 = new GetCategoryPlpUseCase$run$1(this, continuationImpl);
            }
        } else {
            getCategoryPlpUseCase$run$1 = new GetCategoryPlpUseCase$run$1(this, continuationImpl);
        }
        GetCategoryPlpUseCase$run$1 getCategoryPlpUseCase$run$2 = getCategoryPlpUseCase$run$1;
        Object obj = getCategoryPlpUseCase$run$2.f50230b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = getCategoryPlpUseCase$run$2.d;
        if (i4 != 0) {
            if (i4 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            if (i4 == 2) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        RequireCachedAppConfigUseCase requireCachedAppConfigUseCase = this.f50229b;
        CatalogRepository catalogRepository = this.f50228a;
        if (z) {
            boolean z2 = requireCachedAppConfigUseCase.a().a0.f67282a;
            getCategoryPlpUseCase$run$2.d = 1;
            Object objG = catalogRepository.g(str, str2, i2, str3, z2, getCategoryPlpUseCase$run$2);
            if (objG != coroutineSingletons) {
                return objG;
            }
        } else {
            boolean z3 = requireCachedAppConfigUseCase.a().a0.f67282a;
            getCategoryPlpUseCase$run$2.d = 2;
            Object objH = catalogRepository.h(str, str2, i2, str3, z3, getCategoryPlpUseCase$run$2);
            if (objH != coroutineSingletons) {
                return objH;
            }
        }
        return coroutineSingletons;
    }
}

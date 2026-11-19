package com.vuitton.android.domain.usecase.catalog;

import com.vuitton.android.domain.repository.CatalogRepository;
import com.vuitton.foundation.model.domain.model.common.ResultStrategy;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/catalog/GetCatalogUseCase;", "", "Lcom/vuitton/android/domain/repository/CatalogRepository;", "repository", "<init>", "(Lcom/vuitton/android/domain/repository/CatalogRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetCatalogUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CatalogRepository f49612a;

    @Inject
    public GetCatalogUseCase(CatalogRepository catalogRepository) {
        catalogRepository.getClass();
        this.f49612a = catalogRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        GetCatalogUseCase$run$1 getCatalogUseCase$run$1;
        if (continuationImpl instanceof GetCatalogUseCase$run$1) {
            getCatalogUseCase$run$1 = (GetCatalogUseCase$run$1) continuationImpl;
            int i2 = getCatalogUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getCatalogUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getCatalogUseCase$run$1 = new GetCatalogUseCase$run$1(this, continuationImpl);
            }
        } else {
            getCatalogUseCase$run$1 = new GetCatalogUseCase$run$1(this, continuationImpl);
        }
        Object objN = getCatalogUseCase$run$1.f49613b;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getCatalogUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(objN);
            getCatalogUseCase$run$1.d = 1;
            objN = this.f49612a.n();
            if (objN != obj) {
            }
        }
        if (i3 != 1) {
            if (i3 == 2) {
                ResultKt.b(objN);
                return ((Result) objN).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(objN);
        getCatalogUseCase$run$1.d = 2;
        Object objC = ((ResultStrategy) objN).c(getCatalogUseCase$run$1);
        return objC == obj ? obj : objC;
    }
}

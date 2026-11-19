package com.vuitton.android.domain.usecase.products;

import com.vuitton.android.domain.repository.CatalogRepository;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.foundation.model.domain.model.plp.PlpPagination;
import com.vuitton.foundation.model.domain.model.plp.PlpSection;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/products/GetProductListBySkusUseCase;", "", "Lcom/vuitton/android/domain/repository/CatalogRepository;", "repository", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "<init>", "(Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetProductListBySkusUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CatalogRepository f50306a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f50307b;

    @Inject
    public GetProductListBySkusUseCase(CatalogRepository catalogRepository, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase) {
        catalogRepository.getClass();
        requireCachedAppConfigUseCase.getClass();
        this.f50306a = catalogRepository;
        this.f50307b = requireCachedAppConfigUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.util.ArrayList, java.util.Collection] */
    public final Object a(List list, ContinuationImpl continuationImpl) {
        GetProductListBySkusUseCase$run$1 getProductListBySkusUseCase$run$1;
        Object objI;
        ?? arrayList;
        if (continuationImpl instanceof GetProductListBySkusUseCase$run$1) {
            getProductListBySkusUseCase$run$1 = (GetProductListBySkusUseCase$run$1) continuationImpl;
            int i2 = getProductListBySkusUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getProductListBySkusUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getProductListBySkusUseCase$run$1 = new GetProductListBySkusUseCase$run$1(this, continuationImpl);
            }
        } else {
            getProductListBySkusUseCase$run$1 = new GetProductListBySkusUseCase$run$1(this, continuationImpl);
        }
        Object obj = getProductListBySkusUseCase$run$1.f50308b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getProductListBySkusUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            boolean z = this.f50307b.a().a0.f67282a;
            getProductListBySkusUseCase$run$1.d = 1;
            objI = this.f50306a.i(list, z, getProductListBySkusUseCase$run$1);
            if (objI == coroutineSingletons) {
                arrayList = objI;
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            arrayList = ((Result) obj).f71708b;
        }
        arrayList = objI;
        Result.Companion companion = Result.INSTANCE;
        if (!(arrayList instanceof Result.Failure)) {
            List list2 = ((PlpPagination) arrayList).d;
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : list2) {
                if (obj2 instanceof PlpSection.Products) {
                    arrayList2.add(obj2);
                }
            }
            arrayList = new ArrayList();
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                CollectionsKt.j(arrayList, ((PlpSection.Products) it.next()).f67854b);
            }
        }
        return arrayList;
    }
}

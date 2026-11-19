package com.vuitton.android.domain.usecase.plp;

import com.vuitton.android.domain.repository.CatalogRepository;
import com.vuitton.android.domain.usecase.authentication.oauth.GetSotTokenForTwistUserOrNullUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.foundation.model.domain.model.authentication.SotToken;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;", "", "Lcom/vuitton/android/domain/repository/CatalogRepository;", "catalogRepository", "Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;", "getSotTokenForTwistUserOrNullUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "<init>", "(Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetExclusivePLPUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CatalogRepository f50232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetSotTokenForTwistUserOrNullUseCase f50233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f50234c;

    @Inject
    public GetExclusivePLPUseCase(CatalogRepository catalogRepository, GetSotTokenForTwistUserOrNullUseCase getSotTokenForTwistUserOrNullUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase) {
        catalogRepository.getClass();
        getSotTokenForTwistUserOrNullUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        this.f50232a = catalogRepository;
        this.f50233b = getSotTokenForTwistUserOrNullUseCase;
        this.f50234c = requireCachedAppConfigUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object a(String str, int i2, ContinuationImpl continuationImpl) {
        GetExclusivePLPUseCase$run$1 getExclusivePLPUseCase$run$1;
        CatalogRepository catalogRepository;
        Object obj;
        int i3;
        if (continuationImpl instanceof GetExclusivePLPUseCase$run$1) {
            getExclusivePLPUseCase$run$1 = (GetExclusivePLPUseCase$run$1) continuationImpl;
            int i4 = getExclusivePLPUseCase$run$1.f50239h;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                getExclusivePLPUseCase$run$1.f50239h = i4 - Integer.MIN_VALUE;
            } else {
                getExclusivePLPUseCase$run$1 = new GetExclusivePLPUseCase$run$1(this, continuationImpl);
            }
        } else {
            getExclusivePLPUseCase$run$1 = new GetExclusivePLPUseCase$run$1(this, continuationImpl);
        }
        GetExclusivePLPUseCase$run$1 getExclusivePLPUseCase$run$2 = getExclusivePLPUseCase$run$1;
        Object obj2 = getExclusivePLPUseCase$run$2.f50238f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i5 = getExclusivePLPUseCase$run$2.f50239h;
        if (i5 == 0) {
            ResultKt.b(obj2);
            CatalogRepository catalogRepository2 = this.f50232a;
            getExclusivePLPUseCase$run$2.f50235b = catalogRepository2;
            getExclusivePLPUseCase$run$2.f50236c = str;
            getExclusivePLPUseCase$run$2.d = i2;
            getExclusivePLPUseCase$run$2.f50237e = i2;
            getExclusivePLPUseCase$run$2.f50239h = 1;
            Object objA = this.f50233b.a(getExclusivePLPUseCase$run$2);
            if (objA != coroutineSingletons) {
                catalogRepository = catalogRepository2;
                obj = objA;
                i3 = i2;
            }
        }
        if (i5 != 1) {
            if (i5 == 2) {
                ResultKt.b(obj2);
                return ((Result) obj2).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        int i6 = getExclusivePLPUseCase$run$2.f50237e;
        int i7 = getExclusivePLPUseCase$run$2.d;
        String str2 = getExclusivePLPUseCase$run$2.f50236c;
        CatalogRepository catalogRepository3 = getExclusivePLPUseCase$run$2.f50235b;
        ResultKt.b(obj2);
        SotToken sotToken = (SotToken) obj2;
        if (sotToken != null) {
            obj = sotToken.f66608a;
            i2 = i7;
            str = str2;
            catalogRepository = catalogRepository3;
            i3 = i6;
        } else {
            i2 = i7;
            str = str2;
            catalogRepository = catalogRepository3;
            i3 = i6;
            obj = null;
        }
        boolean z = this.f50234c.a().a0.f67282a;
        getExclusivePLPUseCase$run$2.f50235b = null;
        getExclusivePLPUseCase$run$2.f50236c = null;
        getExclusivePLPUseCase$run$2.d = i2;
        getExclusivePLPUseCase$run$2.f50239h = 2;
        Object objF = catalogRepository.f(str, i3, (String) obj, z, getExclusivePLPUseCase$run$2);
        return objF == coroutineSingletons ? coroutineSingletons : objF;
    }
}

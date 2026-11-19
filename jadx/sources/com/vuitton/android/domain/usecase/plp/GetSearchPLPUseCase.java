package com.vuitton.android.domain.usecase.plp;

import com.vuitton.android.domain.repository.SearchRepository;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;", "", "Lcom/vuitton/android/domain/repository/SearchRepository;", "repository", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "<init>", "(Lcom/vuitton/android/domain/repository/SearchRepository;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetSearchPLPUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SearchRepository f50240a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f50241b;

    @Inject
    public GetSearchPLPUseCase(SearchRepository searchRepository, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase) {
        searchRepository.getClass();
        requireCachedAppConfigUseCase.getClass();
        this.f50240a = searchRepository;
        this.f50241b = requireCachedAppConfigUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object a(String str, String str2, String str3, int i2, String str4, ContinuationImpl continuationImpl) {
        GetSearchPLPUseCase$run$1 getSearchPLPUseCase$run$1;
        if (continuationImpl instanceof GetSearchPLPUseCase$run$1) {
            getSearchPLPUseCase$run$1 = (GetSearchPLPUseCase$run$1) continuationImpl;
            int i3 = getSearchPLPUseCase$run$1.d;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                getSearchPLPUseCase$run$1.d = i3 - Integer.MIN_VALUE;
            } else {
                getSearchPLPUseCase$run$1 = new GetSearchPLPUseCase$run$1(this, continuationImpl);
            }
        } else {
            getSearchPLPUseCase$run$1 = new GetSearchPLPUseCase$run$1(this, continuationImpl);
        }
        GetSearchPLPUseCase$run$1 getSearchPLPUseCase$run$2 = getSearchPLPUseCase$run$1;
        Object obj = getSearchPLPUseCase$run$2.f50242b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = getSearchPLPUseCase$run$2.d;
        if (i4 != 0) {
            if (i4 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        boolean z = this.f50241b.a().a0.f67282a;
        getSearchPLPUseCase$run$2.d = 1;
        Object objB = this.f50240a.b(str, str2, str3, i2, str4, z, getSearchPLPUseCase$run$2);
        return objB == coroutineSingletons ? coroutineSingletons : objB;
    }
}

package com.vuitton.android.domain.usecase.search;

import com.vuitton.android.domain.repository.SearchRepository;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/search/GetTrendingListUseCase;", "", "Lcom/vuitton/android/domain/repository/SearchRepository;", "searchRepository", "<init>", "(Lcom/vuitton/android/domain/repository/SearchRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetTrendingListUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SearchRepository f50372a;

    @Inject
    public GetTrendingListUseCase(SearchRepository searchRepository) {
        searchRepository.getClass();
        this.f50372a = searchRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        GetTrendingListUseCase$run$1 getTrendingListUseCase$run$1;
        if (continuationImpl instanceof GetTrendingListUseCase$run$1) {
            getTrendingListUseCase$run$1 = (GetTrendingListUseCase$run$1) continuationImpl;
            int i2 = getTrendingListUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getTrendingListUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getTrendingListUseCase$run$1 = new GetTrendingListUseCase$run$1(this, continuationImpl);
            }
        } else {
            getTrendingListUseCase$run$1 = new GetTrendingListUseCase$run$1(this, continuationImpl);
        }
        Object obj = getTrendingListUseCase$run$1.f50373b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getTrendingListUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            getTrendingListUseCase$run$1.d = 1;
            Object objC = this.f50372a.c(getTrendingListUseCase$run$1);
            return objC == coroutineSingletons ? coroutineSingletons : objC;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}

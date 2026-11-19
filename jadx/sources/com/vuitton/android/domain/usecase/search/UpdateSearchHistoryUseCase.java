package com.vuitton.android.domain.usecase.search;

import com.vuitton.android.domain.repository.SearchHistoryRepository;
import com.vuitton.foundation.model.domain.model.search.History;
import defpackage.md;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;", "", "Lcom/vuitton/android/domain/repository/SearchHistoryRepository;", "searchHistoryRepository", "<init>", "(Lcom/vuitton/android/domain/repository/SearchHistoryRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class UpdateSearchHistoryUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SearchHistoryRepository f50375a;

    @Inject
    public UpdateSearchHistoryUseCase(SearchHistoryRepository searchHistoryRepository) {
        searchHistoryRepository.getClass();
        this.f50375a = searchHistoryRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(History history, ContinuationImpl continuationImpl) {
        UpdateSearchHistoryUseCase$run$1 updateSearchHistoryUseCase$run$1;
        if (continuationImpl instanceof UpdateSearchHistoryUseCase$run$1) {
            updateSearchHistoryUseCase$run$1 = (UpdateSearchHistoryUseCase$run$1) continuationImpl;
            int i2 = updateSearchHistoryUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                updateSearchHistoryUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                updateSearchHistoryUseCase$run$1 = new UpdateSearchHistoryUseCase$run$1(this, continuationImpl);
            }
        } else {
            updateSearchHistoryUseCase$run$1 = new UpdateSearchHistoryUseCase$run$1(this, continuationImpl);
        }
        Object obj = updateSearchHistoryUseCase$run$1.f50376b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = updateSearchHistoryUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            List list = history.f68185a;
            updateSearchHistoryUseCase$run$1.d = 1;
            if (this.f50375a.a(list, updateSearchHistoryUseCase$run$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            ((Result) obj).getClass();
        }
        return Unit.f71739a;
    }
}

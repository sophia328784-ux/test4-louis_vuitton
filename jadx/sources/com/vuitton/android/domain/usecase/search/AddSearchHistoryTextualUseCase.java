package com.vuitton.android.domain.usecase.search;

import com.vuitton.android.domain.repository.SearchHistoryRepository;
import com.vuitton.foundation.model.domain.model.search.HistoryItem;
import defpackage.b4;
import defpackage.c1;
import defpackage.md;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryTextualUseCase;", "", "Lcom/vuitton/android/domain/repository/SearchHistoryRepository;", "searchHistoryRepository", "<init>", "(Lcom/vuitton/android/domain/repository/SearchHistoryRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AddSearchHistoryTextualUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SearchHistoryRepository f50362a;

    @Inject
    public AddSearchHistoryTextualUseCase(SearchHistoryRepository searchHistoryRepository) {
        searchHistoryRepository.getClass();
        this.f50362a = searchHistoryRepository;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0098  */
    /* JADX WARN: Code duplicated, block: B:32:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(HistoryItem.HistoryTextResearch historyTextResearch, ContinuationImpl continuationImpl) {
        AddSearchHistoryTextualUseCase$run$1 addSearchHistoryTextualUseCase$run$1;
        if (continuationImpl instanceof AddSearchHistoryTextualUseCase$run$1) {
            addSearchHistoryTextualUseCase$run$1 = (AddSearchHistoryTextualUseCase$run$1) continuationImpl;
            int i2 = addSearchHistoryTextualUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                addSearchHistoryTextualUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                addSearchHistoryTextualUseCase$run$1 = new AddSearchHistoryTextualUseCase$run$1(this, continuationImpl);
            }
        } else {
            addSearchHistoryTextualUseCase$run$1 = new AddSearchHistoryTextualUseCase$run$1(this, continuationImpl);
        }
        Object obj = addSearchHistoryTextualUseCase$run$1.f50363b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = addSearchHistoryTextualUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            LocalDateTime localDateTimeNow = LocalDateTime.now();
            SearchHistoryRepository searchHistoryRepository = this.f50362a;
            List list = (List) searchHistoryRepository.b().getValue();
            ArrayList arrayList = list != null ? new ArrayList(list) : null;
            if (arrayList != null) {
                if (!arrayList.isEmpty()) {
                    Iterator it = arrayList.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            HistoryItem historyItem = (HistoryItem) it.next();
                            if ((historyItem instanceof HistoryItem.HistoryTextResearch) && Intrinsics.c(((HistoryItem.HistoryTextResearch) historyItem).f68191a, historyTextResearch.f68191a)) {
                                arrayList.removeIf(new b4(new c1(historyTextResearch, 6), 3));
                                arrayList.add(0, HistoryItem.HistoryTextResearch.b(historyTextResearch, localDateTimeNow));
                            }
                        } else if (arrayList.size() == 15) {
                            arrayList.remove(arrayList.get(arrayList.size() - 1));
                            arrayList.add(0, HistoryItem.HistoryTextResearch.b(historyTextResearch, localDateTimeNow));
                        } else {
                            arrayList.add(0, HistoryItem.HistoryTextResearch.b(historyTextResearch, localDateTimeNow));
                        }
                    }
                } else if (arrayList.size() == 15) {
                    arrayList.remove(arrayList.get(arrayList.size() - 1));
                    arrayList.add(0, HistoryItem.HistoryTextResearch.b(historyTextResearch, localDateTimeNow));
                } else {
                    arrayList.add(0, HistoryItem.HistoryTextResearch.b(historyTextResearch, localDateTimeNow));
                }
                addSearchHistoryTextualUseCase$run$1.d = 1;
                if (searchHistoryRepository.a(arrayList, addSearchHistoryTextualUseCase$run$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.f71739a;
        }
        if (i3 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        Object obj2 = ((Result) obj).f71708b;
        Result.Companion companion = Result.INSTANCE;
        return Unit.f71739a;
    }
}

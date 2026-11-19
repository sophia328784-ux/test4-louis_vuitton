package com.vuitton.android.data.repository;

import android.content.SharedPreferences;
import com.vuitton.android.data.database.entity.searchhistory.HistoryEntity;
import com.vuitton.android.data.database.entity.searchhistory.HistoryItemEntity;
import com.vuitton.android.data.database.entity.searchhistory.mapper.HistoryMapperKt;
import com.vuitton.foundation.model.domain.model.search.HistoryItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u0004H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "", "Lcom/vuitton/foundation/model/domain/model/search/HistoryItem;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$2", f = "SearchHistoryRepositoryImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends List<? extends HistoryItem>>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchHistoryRepositoryImpl f47986b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$2(SearchHistoryRepositoryImpl searchHistoryRepositoryImpl, Continuation continuation) {
        super(2, continuation);
        this.f47986b = searchHistoryRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$2(this.f47986b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v8, types: [kotlin.Result$Failure] */
    /* JADX WARN: Type inference failed for: r3v9 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        ?? failure2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        SearchHistoryRepositoryImpl searchHistoryRepositoryImpl = this.f47986b;
        try {
            Result.Companion companion = Result.INSTANCE;
            String string = ((SharedPreferences) searchHistoryRepositoryImpl.f47978a.get()).getString("SEARCH_HISTORY", null);
            if (string == null || string.length() == 0) {
                throw new IllegalStateException("Search history is empty");
            }
            failure = new Result(((HistoryEntity) searchHistoryRepositoryImpl.d.b(HistoryEntity.INSTANCE.serializer(), string)).f43605a);
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            Object obj2 = ((Result) failure).f71708b;
            boolean z = obj2 instanceof Result.Failure;
            ?? r2 = obj2;
            if (!z) {
                try {
                    List list = (List) obj2;
                    failure2 = new ArrayList(CollectionsKt.t(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        failure2.add(HistoryMapperKt.a((HistoryItemEntity) it.next()));
                    }
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    failure2 = new Result.Failure(th);
                }
                r2 = failure2;
            }
            return new Result(r2);
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th2);
        }
    }
}

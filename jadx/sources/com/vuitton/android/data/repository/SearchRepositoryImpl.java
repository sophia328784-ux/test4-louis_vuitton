package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.catalog.SearchApi;
import com.vuitton.android.data.datasource.wishlist.WishlistLocalDataSource;
import com.vuitton.android.data.dto.search.LiveSearchDto;
import com.vuitton.android.data.dto.search.SearchAutocompleteDto;
import com.vuitton.android.data.dto.search.SearchAutocompleteDtoKt;
import com.vuitton.android.data.dto.search.TrendingDto;
import com.vuitton.android.data.dto.search.mapper.SearchMapperKt;
import com.vuitton.android.domain.repository.SearchRepository;
import com.vuitton.foundation.model.domain.model.plp.PlpPagination;
import com.vuitton.foundation.model.domain.model.search.Trending;
import defpackage.md;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/repository/SearchRepositoryImpl;", "Lcom/vuitton/android/domain/repository/SearchRepository;", "Lcom/vuitton/android/data/api/bff/catalog/SearchApi;", "searchApi", "Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;", "wishlistLocalDataSource", "<init>", "(Lcom/vuitton/android/data/api/bff/catalog/SearchApi;Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SearchRepositoryImpl implements SearchRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SearchApi f47991a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WishlistLocalDataSource f47992b;

    @Inject
    public SearchRepositoryImpl(SearchApi searchApi, WishlistLocalDataSource wishlistLocalDataSource) {
        searchApi.getClass();
        wishlistLocalDataSource.getClass();
        this.f47991a = searchApi;
        this.f47992b = wishlistLocalDataSource;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.SearchRepository
    public final Object a(String str, ContinuationImpl continuationImpl) throws Throwable {
        SearchRepositoryImpl$getAutocompleteList$1 searchRepositoryImpl$getAutocompleteList$1;
        Object failure;
        if (continuationImpl instanceof SearchRepositoryImpl$getAutocompleteList$1) {
            searchRepositoryImpl$getAutocompleteList$1 = (SearchRepositoryImpl$getAutocompleteList$1) continuationImpl;
            int i2 = searchRepositoryImpl$getAutocompleteList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                searchRepositoryImpl$getAutocompleteList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                searchRepositoryImpl$getAutocompleteList$1 = new SearchRepositoryImpl$getAutocompleteList$1(this, continuationImpl);
            }
        } else {
            searchRepositoryImpl$getAutocompleteList$1 = new SearchRepositoryImpl$getAutocompleteList$1(this, continuationImpl);
        }
        Object autocompleteList = searchRepositoryImpl$getAutocompleteList$1.f47993b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = searchRepositoryImpl$getAutocompleteList$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(autocompleteList);
                Result.Companion companion = Result.INSTANCE;
                SearchApi searchApi = this.f47991a;
                searchRepositoryImpl$getAutocompleteList$1.d = 1;
                autocompleteList = searchApi.getAutocompleteList(str, searchRepositoryImpl$getAutocompleteList$1);
                if (autocompleteList == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(autocompleteList);
            }
            failure = new Result(SearchAutocompleteDtoKt.a((SearchAutocompleteDto) autocompleteList));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    @Override // com.vuitton.android.domain.repository.SearchRepository
    public final Object b(String str, String str2, String str3, int i2, String str4, boolean z, ContinuationImpl continuationImpl) throws Throwable {
        SearchRepositoryImpl$getSearchPLP$1 searchRepositoryImpl$getSearchPLP$1;
        Object failure;
        if (continuationImpl instanceof SearchRepositoryImpl$getSearchPLP$1) {
            searchRepositoryImpl$getSearchPLP$1 = (SearchRepositoryImpl$getSearchPLP$1) continuationImpl;
            int i3 = searchRepositoryImpl$getSearchPLP$1.d;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                searchRepositoryImpl$getSearchPLP$1.d = i3 - Integer.MIN_VALUE;
            } else {
                searchRepositoryImpl$getSearchPLP$1 = new SearchRepositoryImpl$getSearchPLP$1(this, continuationImpl);
            }
        } else {
            searchRepositoryImpl$getSearchPLP$1 = new SearchRepositoryImpl$getSearchPLP$1(this, continuationImpl);
        }
        Object objF = searchRepositoryImpl$getSearchPLP$1.f47997b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = searchRepositoryImpl$getSearchPLP$1.d;
        try {
            if (i4 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.f75161b;
                SearchRepositoryImpl$getSearchPLP$2$1 searchRepositoryImpl$getSearchPLP$2$1 = new SearchRepositoryImpl$getSearchPLP$2$1(this, str2, str, i2, str4, str3, z, null);
                searchRepositoryImpl$getSearchPLP$1.d = 1;
                objF = BuildersKt.f(defaultIoScheduler, searchRepositoryImpl$getSearchPLP$2$1, searchRepositoryImpl$getSearchPLP$1);
                if (objF == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i4 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objF);
            }
            failure = new Result((PlpPagination) objF);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.SearchRepository
    public final Object c(ContinuationImpl continuationImpl) throws Throwable {
        SearchRepositoryImpl$getTrendingList$1 searchRepositoryImpl$getTrendingList$1;
        Object failure;
        if (continuationImpl instanceof SearchRepositoryImpl$getTrendingList$1) {
            searchRepositoryImpl$getTrendingList$1 = (SearchRepositoryImpl$getTrendingList$1) continuationImpl;
            int i2 = searchRepositoryImpl$getTrendingList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                searchRepositoryImpl$getTrendingList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                searchRepositoryImpl$getTrendingList$1 = new SearchRepositoryImpl$getTrendingList$1(this, continuationImpl);
            }
        } else {
            searchRepositoryImpl$getTrendingList$1 = new SearchRepositoryImpl$getTrendingList$1(this, continuationImpl);
        }
        Object trendingList = searchRepositoryImpl$getTrendingList$1.f48006b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = searchRepositoryImpl$getTrendingList$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(trendingList);
                Result.Companion companion = Result.INSTANCE;
                SearchApi searchApi = this.f47991a;
                searchRepositoryImpl$getTrendingList$1.d = 1;
                trendingList = searchApi.getTrendingList(searchRepositoryImpl$getTrendingList$1);
                if (trendingList == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(trendingList);
            }
            Iterable<TrendingDto> iterable = (Iterable) trendingList;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable, 10));
            for (TrendingDto trendingDto : iterable) {
                trendingDto.getClass();
                arrayList.add(new Trending(trendingDto.f46792a, trendingDto.f46793b));
            }
            failure = new Result(arrayList);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.SearchRepository
    public final Object d(String str, ContinuationImpl continuationImpl) throws Throwable {
        SearchRepositoryImpl$getLiveSearch$1 searchRepositoryImpl$getLiveSearch$1;
        Object failure;
        if (continuationImpl instanceof SearchRepositoryImpl$getLiveSearch$1) {
            searchRepositoryImpl$getLiveSearch$1 = (SearchRepositoryImpl$getLiveSearch$1) continuationImpl;
            int i2 = searchRepositoryImpl$getLiveSearch$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                searchRepositoryImpl$getLiveSearch$1.d = i2 - Integer.MIN_VALUE;
            } else {
                searchRepositoryImpl$getLiveSearch$1 = new SearchRepositoryImpl$getLiveSearch$1(this, continuationImpl);
            }
        } else {
            searchRepositoryImpl$getLiveSearch$1 = new SearchRepositoryImpl$getLiveSearch$1(this, continuationImpl);
        }
        Object liveSearch = searchRepositoryImpl$getLiveSearch$1.f47995b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = searchRepositoryImpl$getLiveSearch$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(liveSearch);
                Result.Companion companion = Result.INSTANCE;
                SearchApi searchApi = this.f47991a;
                searchRepositoryImpl$getLiveSearch$1.d = 1;
                liveSearch = searchApi.getLiveSearch(str, searchRepositoryImpl$getLiveSearch$1);
                if (liveSearch == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(liveSearch);
            }
            failure = new Result(SearchMapperKt.a((LiveSearchDto) liveSearch));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }
}

package com.vuitton.android.data.repository;

import android.content.SharedPreferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.core.schedulers.CoroutineDispatchersModule;
import com.vuitton.android.domain.repository.SearchHistoryRepository;
import com.vuitton.foundation.logger.Logger;
import dagger.Lazy;
import defpackage.md;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\rB3\b\u0007\u0012\u000e\b\u0001\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl;", "Lcom/vuitton/android/domain/repository/SearchHistoryRepository;", "Ldagger/Lazy;", "Landroid/content/SharedPreferences;", "encryptedSharedPreferences", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "coroutineDispatcher", "Lkotlinx/serialization/json/Json;", "json", "<init>", "(Ldagger/Lazy;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lkotlinx/serialization/json/Json;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SearchHistoryRepositoryImpl implements SearchHistoryRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Lazy f47978a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f47979b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CoroutineDispatchers f47980c;
    public final Json d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableStateFlow f47981e;

    /* JADX INFO: renamed from: com.vuitton.android.data.repository.SearchHistoryRepositoryImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.data.repository.SearchHistoryRepositoryImpl$1", f = "SearchHistoryRepositoryImpl.kt", l = {37}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f47982b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f47983c;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return SearchHistoryRepositoryImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objC;
            MutableStateFlow mutableStateFlow;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f47983c;
            if (i2 == 0) {
                ResultKt.b(obj);
                SearchHistoryRepositoryImpl searchHistoryRepositoryImpl = SearchHistoryRepositoryImpl.this;
                MutableStateFlow mutableStateFlow2 = searchHistoryRepositoryImpl.f47981e;
                this.f47982b = mutableStateFlow2;
                this.f47983c = 1;
                objC = SearchHistoryRepositoryImpl.c(searchHistoryRepositoryImpl, this);
                if (objC == coroutineSingletons) {
                    return coroutineSingletons;
                }
                mutableStateFlow = mutableStateFlow2;
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                mutableStateFlow = (MutableStateFlow) this.f47982b;
                ResultKt.b(obj);
                objC = ((Result) obj).f71708b;
            }
            EmptyList emptyList = EmptyList.f71768b;
            Result.Companion companion = Result.INSTANCE;
            if (objC instanceof Result.Failure) {
                objC = emptyList;
            }
            mutableStateFlow.setValue(objC);
            return Unit.f71739a;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", "SEARCH_HISTORY", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public SearchHistoryRepositoryImpl(Lazy<SharedPreferences> lazy, Logger logger, CoroutineDispatchers coroutineDispatchers, Json json) {
        lazy.getClass();
        logger.getClass();
        coroutineDispatchers.getClass();
        json.getClass();
        this.f47978a = lazy;
        this.f47979b = logger;
        this.f47980c = coroutineDispatchers;
        this.d = json;
        ContextScope contextScopeA = CoroutineScopeKt.a(coroutineDispatchers.getF43530b());
        this.f47981e = StateFlowKt.a(EmptyList.f71768b);
        BuildersKt.c(contextScopeA, null, null, new AnonymousClass1(null), 3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object c(SearchHistoryRepositoryImpl searchHistoryRepositoryImpl, ContinuationImpl continuationImpl) {
        SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1 searchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1;
        if (continuationImpl instanceof SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1) {
            searchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1 = (SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1) continuationImpl;
            int i2 = searchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                searchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1.d = i2 - Integer.MIN_VALUE;
            } else {
                searchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1 = new SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1(searchHistoryRepositoryImpl, continuationImpl);
            }
        } else {
            searchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1 = new SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1(searchHistoryRepositoryImpl, continuationImpl);
        }
        Object objF = searchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1.f47984b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = searchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = searchHistoryRepositoryImpl.f47980c.getF43530b();
            SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$2 searchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$2 = new SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$2(searchHistoryRepositoryImpl, null);
            searchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1.d = 1;
            objF = BuildersKt.f(f43530b, searchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$2, searchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.SearchHistoryRepository
    public final Object a(List list, ContinuationImpl continuationImpl) throws Throwable {
        SearchHistoryRepositoryImpl$setSearchHistory$1 searchHistoryRepositoryImpl$setSearchHistory$1;
        if (continuationImpl instanceof SearchHistoryRepositoryImpl$setSearchHistory$1) {
            searchHistoryRepositoryImpl$setSearchHistory$1 = (SearchHistoryRepositoryImpl$setSearchHistory$1) continuationImpl;
            int i2 = searchHistoryRepositoryImpl$setSearchHistory$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                searchHistoryRepositoryImpl$setSearchHistory$1.d = i2 - Integer.MIN_VALUE;
            } else {
                searchHistoryRepositoryImpl$setSearchHistory$1 = new SearchHistoryRepositoryImpl$setSearchHistory$1(this, continuationImpl);
            }
        } else {
            searchHistoryRepositoryImpl$setSearchHistory$1 = new SearchHistoryRepositoryImpl$setSearchHistory$1(this, continuationImpl);
        }
        Object objF = searchHistoryRepositoryImpl$setSearchHistory$1.f47987b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = searchHistoryRepositoryImpl$setSearchHistory$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f47980c.getF43530b();
            SearchHistoryRepositoryImpl$setSearchHistory$2 searchHistoryRepositoryImpl$setSearchHistory$2 = new SearchHistoryRepositoryImpl$setSearchHistory$2(list, this, null);
            searchHistoryRepositoryImpl$setSearchHistory$1.d = 1;
            objF = BuildersKt.f(f43530b, searchHistoryRepositoryImpl$setSearchHistory$2, searchHistoryRepositoryImpl$setSearchHistory$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }

    @Override // com.vuitton.android.domain.repository.SearchHistoryRepository
    public final StateFlow b() {
        return this.f47981e;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SearchHistoryRepositoryImpl(Lazy lazy, Logger logger, CoroutineDispatchers coroutineDispatchers, Json json, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 4) != 0) {
            CoroutineDispatchersModule.f43527a.getClass();
            coroutineDispatchers = CoroutineDispatchersModule.f43528b;
        }
        this(lazy, logger, coroutineDispatchers, json);
    }
}

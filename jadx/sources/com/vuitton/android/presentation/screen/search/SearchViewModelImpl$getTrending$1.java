package com.vuitton.android.presentation.screen.search;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.search.SearchMonitoring;
import com.vuitton.android.domain.usecase.search.GetTrendingListUseCase;
import com.vuitton.android.presentation.screen.search.models.SearchListState;
import com.vuitton.android.presentation.screen.search.models.SearchState;
import com.vuitton.android.presentation.screen.search.models.TrendingItemUiModel;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.search.Trending;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
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
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.search.SearchViewModelImpl$getTrending$1", f = "SearchViewModelImpl.kt", l = {260}, m = "invokeSuspend", v = 2)
final class SearchViewModelImpl$getTrending$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SearchViewModelImpl f64144c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchViewModelImpl$getTrending$1(SearchViewModelImpl searchViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f64144c = searchViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SearchViewModelImpl$getTrending$1(this.f64144c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SearchViewModelImpl$getTrending$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object objA;
        Object value2;
        Object value3;
        Object value4;
        ArrayList arrayList;
        Object value5;
        SearchViewModelImpl searchViewModelImpl = this.f64144c;
        MutableStateFlow mutableStateFlow = searchViewModelImpl.s;
        MutableStateFlow mutableStateFlow2 = searchViewModelImpl.q;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f64143b;
        if (i2 == 0) {
            ResultKt.b(obj);
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value, new SearchListState.Loading()));
            GetTrendingListUseCase getTrendingListUseCase = searchViewModelImpl.f64115e;
            this.f64143b = 1;
            objA = getTrendingListUseCase.a(this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            List list = (List) objA;
            do {
                value4 = mutableStateFlow.getValue();
                List<Trending> list2 = list;
                arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                for (Trending trending : list2) {
                    trending.getClass();
                    arrayList.add(new TrendingItemUiModel(trending.f68203a, trending.f68204b));
                }
            } while (!mutableStateFlow.i(value4, new SearchListState.Result(arrayList)));
            if (mutableStateFlow2.getValue() != SearchState.SUCCESS_SEARCH && mutableStateFlow2.getValue() != SearchState.NO_RESULT_SEARCH) {
                do {
                    value5 = mutableStateFlow2.getValue();
                } while (!mutableStateFlow2.i(value5, SearchState.TRENDING));
            }
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            Logger logger = searchViewModelImpl.f64112a;
            int i3 = SearchViewModelImplKt.f64155a;
            thA.getMessage();
            logger.getClass();
            MonitorAction monitorAction = searchViewModelImpl.p;
            if (monitorAction != null) {
                monitorAction.d(new SearchMonitoring.Error.SearchPanelError(thA));
            }
            do {
                value2 = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value2, new SearchListState.Error(null, 1, null)));
            if (mutableStateFlow2.getValue() != SearchState.SUCCESS_SEARCH && mutableStateFlow2.getValue() != SearchState.NO_RESULT_SEARCH) {
                do {
                    value3 = mutableStateFlow2.getValue();
                } while (!mutableStateFlow2.i(value3, SearchState.ERROR));
            }
        }
        return Unit.f71739a;
    }
}

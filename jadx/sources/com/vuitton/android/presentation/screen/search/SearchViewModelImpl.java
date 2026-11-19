package com.vuitton.android.presentation.screen.search;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.R;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.search.SearchMonitoring;
import com.vuitton.android.domain.monitoring.search.SearchPanelExitContext;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.products.GetProductListBySkusUseCase;
import com.vuitton.android.domain.usecase.search.AddSearchHistoryProductUseCase;
import com.vuitton.android.domain.usecase.search.AddSearchHistoryTextualUseCase;
import com.vuitton.android.domain.usecase.search.GetAutocompleteListUseCase;
import com.vuitton.android.domain.usecase.search.GetLiveSearchUseCase;
import com.vuitton.android.domain.usecase.search.GetSearchHistoryUseCase;
import com.vuitton.android.domain.usecase.search.GetTrendingListUseCase;
import com.vuitton.android.domain.usecase.search.UpdateSearchHistoryUseCase;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModelKt;
import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.mapper.ProductShortMapperKt;
import com.vuitton.android.presentation.screen.search.models.AutocompleteDisplayUiModel;
import com.vuitton.android.presentation.screen.search.models.HistoryItemUiModel;
import com.vuitton.android.presentation.screen.search.models.HistoryUiModel;
import com.vuitton.android.presentation.screen.search.models.HistoryUiModelKt;
import com.vuitton.android.presentation.screen.search.models.SearchHintUiModel;
import com.vuitton.android.presentation.screen.search.models.SearchListState;
import com.vuitton.android.presentation.screen.search.models.SearchMatchUiModel;
import com.vuitton.android.presentation.screen.search.models.SearchScreenViewState;
import com.vuitton.android.presentation.screen.search.models.SearchState;
import com.vuitton.android.presentation.screen.search.models.SearchTrackingUiModel;
import com.vuitton.android.presentation.screen.search.models.SuggestionItemUiModelKt;
import com.vuitton.android.presentation.screen.search.models.TrendingItemUiModel;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModel;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModelKt;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.extensions.CollectionExtKt;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.plp.PlpProductItem;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortPrice;
import com.vuitton.foundation.model.domain.model.producttiny.ProductTiny;
import com.vuitton.foundation.model.domain.model.search.AutocompleteDisplay;
import com.vuitton.foundation.model.domain.model.search.History;
import com.vuitton.foundation.model.domain.model.search.LiveSearch;
import com.vuitton.foundation.model.domain.model.search.LiveSearchType;
import com.vuitton.foundation.model.domain.model.search.SearchAutocomplete;
import com.vuitton.foundation.model.domain.model.search.SearchHint;
import com.vuitton.foundation.model.domain.model.search.SearchMatch;
import com.vuitton.foundation.model.domain.model.search.Trending;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.cj;
import defpackage.md;
import defpackage.v40;
import defpackage.zy0;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002Bq\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/search/SearchViewModel;", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/usecase/search/GetLiveSearchUseCase;", "getLiveSearchUseCase", "Lcom/vuitton/android/domain/usecase/search/GetTrendingListUseCase;", "getTrendingListUseCase", "Lcom/vuitton/android/domain/usecase/search/GetSearchHistoryUseCase;", "getSearchHistoryUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/products/GetProductListBySkusUseCase;", "getProductsBySkusUseCase", "Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;", "updateSearchHistoryUseCase", "Lcom/vuitton/android/domain/usecase/search/GetAutocompleteListUseCase;", "getAutocompleteListUseCase", "Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;", "addSearchHistoryProductUseCase", "Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryTextualUseCase;", "addSearchHistoryTextualUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/search/GetLiveSearchUseCase;Lcom/vuitton/android/domain/usecase/search/GetTrendingListUseCase;Lcom/vuitton/android/domain/usecase/search/GetSearchHistoryUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductListBySkusUseCase;Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;Lcom/vuitton/android/domain/usecase/search/GetAutocompleteListUseCase;Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryTextualUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SearchViewModelImpl extends ViewModel implements SearchViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f64112a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Monitor f64113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnalyticsTracker f64114c;
    public final GetLiveSearchUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GetTrendingListUseCase f64115e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GetSearchHistoryUseCase f64116f;
    public final IsFeatureAvailableUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final GetProductListBySkusUseCase f64117h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final UpdateSearchHistoryUseCase f64118i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final GetAutocompleteListUseCase f64119j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AddSearchHistoryProductUseCase f64120k;
    public final AddSearchHistoryTextualUseCase l;
    public final InAppDispatch m;
    public Job n;
    public long o;
    public MonitorAction p;
    public final MutableStateFlow q;
    public final MutableStateFlow r;
    public final MutableStateFlow s;
    public final MutableStateFlow t;
    public final MutableStateFlow u;
    public final MutableStateFlow v;
    public final MutableStateFlow w;
    public final MutableStateFlow x;
    public final MutableStateFlow y;
    public final StateFlow z;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f64121a;

        static {
            int[] iArr = new int[LiveSearchType.values().length];
            try {
                iArr[LiveSearchType.SEARCHING_RESULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LiveSearchType.SUGGESTION_RESULT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f64121a = iArr;
        }
    }

    @Inject
    public SearchViewModelImpl(RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, Logger logger, Monitor monitor, AnalyticsTracker analyticsTracker, GetLiveSearchUseCase getLiveSearchUseCase, GetTrendingListUseCase getTrendingListUseCase, GetSearchHistoryUseCase getSearchHistoryUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetProductListBySkusUseCase getProductListBySkusUseCase, UpdateSearchHistoryUseCase updateSearchHistoryUseCase, GetAutocompleteListUseCase getAutocompleteListUseCase, AddSearchHistoryProductUseCase addSearchHistoryProductUseCase, AddSearchHistoryTextualUseCase addSearchHistoryTextualUseCase) {
        Object value;
        requireUserInAppDispatchUseCase.getClass();
        logger.getClass();
        monitor.getClass();
        analyticsTracker.getClass();
        getLiveSearchUseCase.getClass();
        getTrendingListUseCase.getClass();
        getSearchHistoryUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getProductListBySkusUseCase.getClass();
        updateSearchHistoryUseCase.getClass();
        getAutocompleteListUseCase.getClass();
        addSearchHistoryProductUseCase.getClass();
        addSearchHistoryTextualUseCase.getClass();
        this.f64112a = logger;
        this.f64113b = monitor;
        this.f64114c = analyticsTracker;
        this.d = getLiveSearchUseCase;
        this.f64115e = getTrendingListUseCase;
        this.f64116f = getSearchHistoryUseCase;
        this.g = isFeatureAvailableUseCase;
        this.f64117h = getProductListBySkusUseCase;
        this.f64118i = updateSearchHistoryUseCase;
        this.f64119j = getAutocompleteListUseCase;
        this.f64120k = addSearchHistoryProductUseCase;
        this.l = addSearchHistoryTextualUseCase;
        this.m = requireUserInAppDispatchUseCase.f49912a.b();
        SearchState searchState = SearchState.TRENDING;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(searchState);
        this.q = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(new HistoryUiModel(null, 1, null));
        this.r = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(new SearchListState.Idle());
        this.s = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(new SearchListState.Idle());
        this.t = mutableStateFlowA4;
        EmptyList emptyList = EmptyList.f71768b;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(emptyList);
        this.u = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(emptyList);
        this.v = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a("");
        this.w = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(Boolean.TRUE);
        this.x = mutableStateFlowA8;
        MutableStateFlow mutableStateFlowA9 = StateFlowKt.a(Boolean.FALSE);
        this.y = mutableStateFlowA9;
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA6, mutableStateFlowA7, mutableStateFlowA8, mutableStateFlowA9};
        Flow<SearchScreenViewState> flow = new Flow<SearchScreenViewState>() { // from class: com.vuitton.android.presentation.screen.search.SearchViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.search.SearchViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.search.SearchViewModelImpl$special$$inlined$combine$1$3", f = "SearchViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super SearchScreenViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f64153b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f64154c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f64154c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f64154c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f64153b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        SearchState searchState = (SearchState) obj2;
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        HistoryUiModel historyUiModel = (HistoryUiModel) obj3;
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        SearchListState searchListState = (SearchListState) obj4;
                        Object obj5 = objArr[3];
                        obj5.getClass();
                        SearchListState searchListState2 = (SearchListState) obj5;
                        Object obj6 = objArr[4];
                        obj6.getClass();
                        List list = (List) obj6;
                        Object obj7 = objArr[5];
                        obj7.getClass();
                        List list2 = (List) obj7;
                        Object obj8 = objArr[6];
                        obj8.getClass();
                        String str = (String) obj8;
                        Object obj9 = objArr[7];
                        obj9.getClass();
                        boolean zBooleanValue = ((Boolean) obj9).booleanValue();
                        Object obj10 = objArr[8];
                        obj10.getClass();
                        SearchScreenViewState searchScreenViewState = new SearchScreenViewState(searchState, historyUiModel, searchListState, searchListState2, list, list2, str, zBooleanValue, ((Boolean) obj10).booleanValue());
                        this.f64154c = null;
                        this.d = null;
                        this.f64153b = 1;
                        if (flowCollector.emit(searchScreenViewState, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        if (i2 != 1) {
                            md.k("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.b(obj);
                    }
                    return Unit.f71739a;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object f(FlowCollector flowCollector, Continuation continuation) {
                final Flow[] flowArr2 = flowArr;
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.search.SearchViewModelImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.z = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new SearchScreenViewState(searchState, null, null, null, null, null, null, false, false, 510, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new SearchViewModelImpl$checkForHistory$1(this, null), 3);
        do {
            value = mutableStateFlowA9.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlowA9.i(value, Boolean.valueOf(this.g.b(new Feature[]{Feature.AI_COMPANION}))));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:82:0x0187  */
    /* JADX WARN: Code duplicated, block: B:84:0x0195  */
    public static final Object Ac(SearchViewModelImpl searchViewModelImpl, ArrayList arrayList, ContinuationImpl continuationImpl) {
        SearchViewModelImpl$getProductListBySkuAndUpdateHistory$1 searchViewModelImpl$getProductListBySkuAndUpdateHistory$1;
        Object objA;
        Object obj;
        PlpProductItem plpProductItem;
        String str;
        int i2;
        Throwable thA;
        MonitorAction monitorAction;
        if (continuationImpl instanceof SearchViewModelImpl$getProductListBySkuAndUpdateHistory$1) {
            searchViewModelImpl$getProductListBySkuAndUpdateHistory$1 = (SearchViewModelImpl$getProductListBySkuAndUpdateHistory$1) continuationImpl;
            int i3 = searchViewModelImpl$getProductListBySkuAndUpdateHistory$1.f64142e;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                searchViewModelImpl$getProductListBySkuAndUpdateHistory$1.f64142e = i3 - Integer.MIN_VALUE;
            } else {
                searchViewModelImpl$getProductListBySkuAndUpdateHistory$1 = new SearchViewModelImpl$getProductListBySkuAndUpdateHistory$1(searchViewModelImpl, continuationImpl);
            }
        } else {
            searchViewModelImpl$getProductListBySkuAndUpdateHistory$1 = new SearchViewModelImpl$getProductListBySkuAndUpdateHistory$1(searchViewModelImpl, continuationImpl);
        }
        Object obj2 = searchViewModelImpl$getProductListBySkuAndUpdateHistory$1.f64141c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = searchViewModelImpl$getProductListBySkuAndUpdateHistory$1.f64142e;
        if (i4 == 0) {
            ResultKt.b(obj2);
            if (arrayList.isEmpty()) {
                return Unit.f71739a;
            }
            GetProductListBySkusUseCase getProductListBySkusUseCase = searchViewModelImpl.f64117h;
            searchViewModelImpl$getProductListBySkuAndUpdateHistory$1.f64142e = 1;
            objA = getProductListBySkusUseCase.a(arrayList, searchViewModelImpl$getProductListBySkuAndUpdateHistory$1);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i4 == 1) {
            ResultKt.b(obj2);
            objA = ((Result) obj2).f71708b;
        } else {
            if (i4 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            obj = searchViewModelImpl$getProductListBySkuAndUpdateHistory$1.f64140b;
            ResultKt.b(obj2);
        }
        objA = obj;
        thA = Result.a(objA);
        if (thA != null) {
            Logger logger = searchViewModelImpl.f64112a;
            int i5 = SearchViewModelImplKt.f64155a;
            thA.getMessage();
            logger.getClass();
            monitorAction = searchViewModelImpl.p;
            if (monitorAction != null) {
                monitorAction.d(new SearchMonitoring.Error.SearchPanelError(thA));
            }
        }
        return Unit.f71739a;
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            List list = (List) objA;
            ListBuilder listBuilderV = CollectionsKt.v();
            for (HistoryItemUiModel historyItemUiModel : ((HistoryUiModel) searchViewModelImpl.r.getValue()).f64248a) {
                if (historyItemUiModel instanceof HistoryItemUiModel.HistoryResearchUiModel) {
                    listBuilderV.add(historyItemUiModel);
                } else {
                    if (!(historyItemUiModel instanceof HistoryItemUiModel.HistoryProductUiModel)) {
                        v40.g();
                        return null;
                    }
                    List<PlpProductItem> list2 = list;
                    if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                        for (PlpProductItem plpProductItem2 : list2) {
                            HistoryItemUiModel.HistoryProductUiModel historyProductUiModel = (HistoryItemUiModel.HistoryProductUiModel) historyItemUiModel;
                            String str2 = historyProductUiModel.f64241a;
                            SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
                            String str3 = plpProductItem2.f67828c;
                            companion2.getClass();
                            SkuIdUiModel.Companion.c(str3);
                            if (Intrinsics.c(str2, str3)) {
                                Iterator it = list2.iterator();
                                do {
                                    if (!it.hasNext()) {
                                        zy0.c("Collection contains no element matching the predicate.");
                                        return null;
                                    }
                                    plpProductItem = (PlpProductItem) it.next();
                                    SkuIdUiModel.Companion companion3 = SkuIdUiModel.f61763c;
                                    str = plpProductItem.f67828c;
                                    companion3.getClass();
                                    SkuIdUiModel.Companion.c(str);
                                } while (!Intrinsics.c(str2, str));
                                LocalDateTime localDateTime = historyProductUiModel.f64245f;
                                String str4 = plpProductItem.f67828c;
                                SkuIdUiModel.Companion.c(str4);
                                String str5 = plpProductItem.f67827b;
                                AssetImage assetImage = plpProductItem.f67830f.f67106a;
                                String str6 = assetImage != null ? assetImage.f67108a : null;
                                if (str6 == null) {
                                    str6 = "";
                                }
                                String str7 = str6;
                                int i6 = HistoryUiModelKt.WhenMappings.f64249a[plpProductItem.n.ordinal()];
                                if (i6 == 1) {
                                    i2 = R.drawable.background_product_default;
                                } else {
                                    if (i6 != 2) {
                                        v40.g();
                                        return null;
                                    }
                                    i2 = R.drawable.background_product_floor_1_1;
                                }
                                int i7 = i2;
                                ProductShortPrice productShortPrice = plpProductItem.f67834k;
                                listBuilderV.add(new HistoryItemUiModel.HistoryProductUiModel(str4, str5, str7, productShortPrice != null ? ProductShortMapperKt.c(productShortPrice) : null, i7, localDateTime, null));
                                break;
                            }
                        }
                    }
                }
            }
            ListBuilder listBuilderR = CollectionsKt.r(listBuilderV);
            UpdateSearchHistoryUseCase updateSearchHistoryUseCase = searchViewModelImpl.f64118i;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(listBuilderR, 10));
            ListIterator listIterator = listBuilderR.listIterator(0);
            while (listIterator.hasNext()) {
                arrayList2.add(HistoryUiModelKt.a((HistoryItemUiModel) listIterator.next()));
            }
            History history = new History(arrayList2);
            searchViewModelImpl$getProductListBySkuAndUpdateHistory$1.f64140b = objA;
            searchViewModelImpl$getProductListBySkuAndUpdateHistory$1.f64142e = 2;
            if (updateSearchHistoryUseCase.a(history, searchViewModelImpl$getProductListBySkuAndUpdateHistory$1) != coroutineSingletons) {
                obj = objA;
                objA = obj;
            }
            return coroutineSingletons;
        }
        thA = Result.a(objA);
        if (thA != null) {
            Logger logger2 = searchViewModelImpl.f64112a;
            int i8 = SearchViewModelImplKt.f64155a;
            thA.getMessage();
            logger2.getClass();
            monitorAction = searchViewModelImpl.p;
            if (monitorAction != null) {
                monitorAction.d(new SearchMonitoring.Error.SearchPanelError(thA));
            }
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    public static final Object yc(SearchViewModelImpl searchViewModelImpl, String str, ContinuationImpl continuationImpl) {
        SearchViewModelImpl$getAutocompleteList$1 searchViewModelImpl$getAutocompleteList$1;
        Object objA;
        Object value;
        ArrayList arrayList;
        Object value2;
        ArrayList arrayList2;
        String str2 = str;
        if (continuationImpl instanceof SearchViewModelImpl$getAutocompleteList$1) {
            searchViewModelImpl$getAutocompleteList$1 = (SearchViewModelImpl$getAutocompleteList$1) continuationImpl;
            int i2 = searchViewModelImpl$getAutocompleteList$1.f64136e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                searchViewModelImpl$getAutocompleteList$1.f64136e = i2 - Integer.MIN_VALUE;
            } else {
                searchViewModelImpl$getAutocompleteList$1 = new SearchViewModelImpl$getAutocompleteList$1(searchViewModelImpl, continuationImpl);
            }
        } else {
            searchViewModelImpl$getAutocompleteList$1 = new SearchViewModelImpl$getAutocompleteList$1(searchViewModelImpl, continuationImpl);
        }
        Object obj = searchViewModelImpl$getAutocompleteList$1.f64135c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = searchViewModelImpl$getAutocompleteList$1.f64136e;
        if (i3 == 0) {
            ResultKt.b(obj);
            GetAutocompleteListUseCase getAutocompleteListUseCase = searchViewModelImpl.f64119j;
            searchViewModelImpl$getAutocompleteList$1.f64134b = str2;
            searchViewModelImpl$getAutocompleteList$1.f64136e = 1;
            objA = getAutocompleteListUseCase.a(str2, searchViewModelImpl$getAutocompleteList$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str2 = searchViewModelImpl$getAutocompleteList$1.f64134b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            SearchAutocomplete searchAutocomplete = (SearchAutocomplete) objA;
            if (searchAutocomplete.f68196a.isEmpty()) {
                searchViewModelImpl.x7(new SearchTrackingUiModel.OnNoResult(str2));
            } else {
                MutableStateFlow mutableStateFlow = searchViewModelImpl.u;
                do {
                    value = mutableStateFlow.getValue();
                    List<SearchMatch> list = searchAutocomplete.f68196a;
                    arrayList = new ArrayList(CollectionsKt.t(list, 10));
                    for (SearchMatch searchMatch : list) {
                        searchMatch.getClass();
                        String str3 = searchMatch.f68201a;
                        List list2 = searchMatch.f68202b;
                        list2.getClass();
                        List<AutocompleteDisplay> list3 = list2;
                        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list3, 10));
                        for (AutocompleteDisplay autocompleteDisplay : list3) {
                            autocompleteDisplay.getClass();
                            arrayList3.add(new AutocompleteDisplayUiModel(autocompleteDisplay.f68183a, autocompleteDisplay.f68184b));
                        }
                        arrayList.add(new SearchMatchUiModel(str3, arrayList3));
                    }
                } while (!mutableStateFlow.i(value, arrayList));
                MutableStateFlow mutableStateFlow2 = searchViewModelImpl.v;
                do {
                    value2 = mutableStateFlow2.getValue();
                    List<SearchHint> list4 = searchAutocomplete.f68197b;
                    arrayList2 = new ArrayList(CollectionsKt.t(list4, 10));
                    for (SearchHint searchHint : list4) {
                        searchHint.getClass();
                        String str4 = searchHint.f68198a;
                        String str5 = searchHint.f68199b;
                        AssetImage assetImage = searchHint.f68200c;
                        arrayList2.add(new SearchHintUiModel(str4, str5, assetImage != null ? AssetMapperKt.a(assetImage) : null, ContributionLinkUiModelKt.a(searchHint.d)));
                    }
                } while (!mutableStateFlow2.i(value2, arrayList2));
            }
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            int i4 = SearchViewModelImplKt.f64155a;
            thA.getMessage();
            searchViewModelImpl.x7(new SearchTrackingUiModel.OnNoResult(str2));
            MonitorAction monitorAction = searchViewModelImpl.p;
            if (monitorAction != null) {
                monitorAction.d(new SearchMonitoring.Error.SearchPanelError(thA));
            }
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    public static final Object zc(SearchViewModelImpl searchViewModelImpl, String str, ContinuationImpl continuationImpl) {
        SearchViewModelImpl$getLiveSearch$1 searchViewModelImpl$getLiveSearch$1;
        Object value;
        Object obj;
        boolean z;
        Object value2;
        Object value3;
        Object value4;
        Object value5;
        Object value6;
        Object value7;
        ArrayList arrayList;
        Object value8;
        Object value9;
        ArrayList arrayList2;
        ArrayList arrayList3;
        Object value10;
        MutableStateFlow mutableStateFlow = searchViewModelImpl.q;
        MutableStateFlow mutableStateFlow2 = searchViewModelImpl.t;
        MutableStateFlow mutableStateFlow3 = searchViewModelImpl.s;
        if (continuationImpl instanceof SearchViewModelImpl$getLiveSearch$1) {
            searchViewModelImpl$getLiveSearch$1 = (SearchViewModelImpl$getLiveSearch$1) continuationImpl;
            int i2 = searchViewModelImpl$getLiveSearch$1.f64139e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                searchViewModelImpl$getLiveSearch$1.f64139e = i2 - Integer.MIN_VALUE;
            } else {
                searchViewModelImpl$getLiveSearch$1 = new SearchViewModelImpl$getLiveSearch$1(searchViewModelImpl, continuationImpl);
            }
        } else {
            searchViewModelImpl$getLiveSearch$1 = new SearchViewModelImpl$getLiveSearch$1(searchViewModelImpl, continuationImpl);
        }
        Object obj2 = searchViewModelImpl$getLiveSearch$1.f64138c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = searchViewModelImpl$getLiveSearch$1.f64139e;
        if (i3 == 0) {
            ResultKt.b(obj2);
            boolean z2 = ((SearchListState) mutableStateFlow3.getValue()).f64253a;
            do {
                value = mutableStateFlow2.getValue();
            } while (!mutableStateFlow2.i(value, new SearchListState.Loading()));
            if (z2) {
                do {
                    value2 = mutableStateFlow3.getValue();
                } while (!mutableStateFlow3.i(value2, new SearchListState.Loading()));
            }
            GetLiveSearchUseCase getLiveSearchUseCase = searchViewModelImpl.d;
            searchViewModelImpl$getLiveSearch$1.f64137b = z2;
            searchViewModelImpl$getLiveSearch$1.f64139e = 1;
            Object objA = getLiveSearchUseCase.a(str, searchViewModelImpl$getLiveSearch$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj = objA;
            z = z2;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = searchViewModelImpl$getLiveSearch$1.f64137b;
            ResultKt.b(obj2);
            obj = ((Result) obj2).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(obj instanceof Result.Failure)) {
            LiveSearch liveSearch = (LiveSearch) obj;
            LiveSearchType liveSearchType = liveSearch.f68194b;
            List list = liveSearch.f68193a;
            int i4 = WhenMappings.f64121a[liveSearchType.ordinal()];
            if (i4 == 1) {
                do {
                    value6 = mutableStateFlow.getValue();
                } while (!mutableStateFlow.i(value6, SearchState.SUCCESS_SEARCH));
                do {
                    value7 = mutableStateFlow2.getValue();
                    List list2 = list;
                    arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                    Iterator it = list2.iterator();
                    while (it.hasNext()) {
                        arrayList.add(SuggestionItemUiModelKt.a((ProductTiny) it.next()));
                    }
                } while (!mutableStateFlow2.i(value7, new SearchListState.Result(arrayList)));
            } else {
                if (i4 != 2) {
                    v40.g();
                    return null;
                }
                do {
                    value8 = mutableStateFlow.getValue();
                } while (!mutableStateFlow.i(value8, SearchState.NO_RESULT_SEARCH));
                do {
                    value9 = mutableStateFlow2.getValue();
                    List list3 = list;
                    arrayList2 = new ArrayList(CollectionsKt.t(list3, 10));
                    Iterator it2 = list3.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(SuggestionItemUiModelKt.a((ProductTiny) it2.next()));
                    }
                } while (!mutableStateFlow2.i(value9, new SearchListState.Result(arrayList2)));
                if (z) {
                    List list4 = liveSearch.f68195c;
                    if (list4 != null) {
                        List<Trending> list5 = list4;
                        arrayList3 = new ArrayList(CollectionsKt.t(list5, 10));
                        for (Trending trending : list5) {
                            trending.getClass();
                            arrayList3.add(new TrendingItemUiModel(trending.f68203a, trending.f68204b));
                        }
                    } else {
                        arrayList3 = null;
                    }
                    do {
                        value10 = mutableStateFlow3.getValue();
                    } while (!mutableStateFlow3.i(value10, new SearchListState.Result(arrayList3 == null ? EmptyList.f71768b : arrayList3)));
                }
            }
        }
        Throwable thA = Result.a(obj);
        if (thA != null) {
            int i5 = SearchViewModelImplKt.f64155a;
            thA.getMessage();
            MonitorAction monitorAction = searchViewModelImpl.p;
            if (monitorAction != null) {
                monitorAction.d(new SearchMonitoring.Error.SearchPanelError(thA));
            }
            do {
                value3 = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value3, SearchState.NO_RESULT_SEARCH));
            do {
                value4 = mutableStateFlow2.getValue();
            } while (!mutableStateFlow2.i(value4, new SearchListState.Error(null, 1, null)));
            if (z) {
                do {
                    value5 = mutableStateFlow3.getValue();
                } while (!mutableStateFlow3.i(value5, new SearchListState.Error(null, 1, null)));
            }
        }
        return Unit.f71739a;
    }

    @Override // com.vuitton.android.presentation.screen.search.SearchViewModel
    public final void H1() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new SearchViewModelImpl$onClearHistory$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.search.SearchViewModel
    public final void N9(HistoryItemUiModel.HistoryProductUiModel historyProductUiModel) {
        historyProductUiModel.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new SearchViewModelImpl$saveProductInHistory$1(this, historyProductUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.search.SearchViewModel
    public final void P3(String str) {
        DynatraceMonitorAction dynatraceMonitorActionA = this.f64113b.a(this.m, SearchMonitoring.Action.DisplaySearchPanel.f48991a);
        if (str != null) {
            dynatraceMonitorActionA.c("true", "isStoreMode");
            dynatraceMonitorActionA.c(str, "rmsCode");
        }
        this.p = dynatraceMonitorActionA;
    }

    @Override // com.vuitton.android.presentation.screen.search.SearchViewModel
    public final void S5(SearchPanelExitContext searchPanelExitContext) {
        searchPanelExitContext.getClass();
        MonitorAction monitorAction = this.p;
        if (monitorAction != null) {
            monitorAction.c(searchPanelExitContext.getValue(), "searchPanelExitContext");
            monitorAction.b();
        }
        this.p = null;
    }

    @Override // com.vuitton.android.presentation.screen.search.SearchViewModel
    public final void X1(String str) {
        MutableStateFlow mutableStateFlow;
        Object value;
        MutableStateFlow mutableStateFlow2;
        Object value2;
        MutableStateFlow mutableStateFlow3;
        Object value3;
        MutableStateFlow mutableStateFlow4;
        Object value4;
        Object value5;
        Object value6;
        Object value7;
        str.getClass();
        do {
            mutableStateFlow = this.w;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, str));
        if (str.length() >= 3) {
            long jCurrentTimeMillis = 2000 - (System.currentTimeMillis() - this.o);
            long j2 = jCurrentTimeMillis < 0 ? 0L : jCurrentTimeMillis;
            Job job = this.n;
            if (job != null) {
                job.cancel(null);
            }
            this.n = BuildersKt.c(ViewModelKt.a(this), null, null, new SearchViewModelImpl$executeSearchJob$1(j2, this, str, null), 3);
            return;
        }
        Job job2 = this.n;
        if (job2 != null) {
            job2.cancel(null);
        }
        do {
            mutableStateFlow2 = this.t;
            value2 = mutableStateFlow2.getValue();
        } while (!mutableStateFlow2.i(value2, new SearchListState.Idle()));
        do {
            mutableStateFlow3 = this.u;
            value3 = mutableStateFlow3.getValue();
        } while (!mutableStateFlow3.i(value3, EmptyList.f71768b));
        do {
            mutableStateFlow4 = this.v;
            value4 = mutableStateFlow4.getValue();
        } while (!mutableStateFlow4.i(value4, EmptyList.f71768b));
        boolean zA = CollectionExtKt.a(((HistoryUiModel) this.r.getValue()).f64248a);
        MutableStateFlow mutableStateFlow5 = this.q;
        if (zA) {
            do {
                value7 = mutableStateFlow5.getValue();
            } while (!mutableStateFlow5.i(value7, SearchState.HISTORY));
            return;
        }
        MutableStateFlow mutableStateFlow6 = this.s;
        if ((mutableStateFlow6.getValue() instanceof SearchListState.Loading) || (mutableStateFlow6.getValue() instanceof SearchListState.Result)) {
            do {
                value5 = mutableStateFlow5.getValue();
            } while (!mutableStateFlow5.i(value5, SearchState.TRENDING));
        } else {
            do {
                value6 = mutableStateFlow5.getValue();
            } while (!mutableStateFlow5.i(value6, SearchState.EMPTY_SCREEN));
        }
    }

    @Override // com.vuitton.android.presentation.screen.search.SearchViewModel
    public final void Y9(String str) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new SearchViewModelImpl$saveSearchQueryInHistory$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.search.SearchViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getZ() {
        return this.z;
    }

    @Override // com.vuitton.android.presentation.screen.search.SearchViewModel
    public final void j(GA4TrackingUiModel gA4TrackingUiModel) {
        this.f64114c.a(GA4TrackingUiModelKt.a(gA4TrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.search.SearchViewModel
    public final void x7(SearchTrackingUiModel searchTrackingUiModel) {
        Hit.EventHit.DefaultEventHit defaultEventHit;
        Hit.EventHit.DefaultEventHit defaultEventHit2;
        Hit.EventHit.DefaultEventHit defaultEventHit3;
        Hit.EventHit.DefaultEventHit defaultEventHit4;
        Hit defaultEventHit5;
        if (!(searchTrackingUiModel instanceof SearchTrackingUiModel.Screen)) {
            if (!(searchTrackingUiModel instanceof SearchTrackingUiModel.OnNoResult)) {
                if (!(searchTrackingUiModel instanceof SearchTrackingUiModel.OnHitOnBottomSearchBar)) {
                    if (!(searchTrackingUiModel instanceof SearchTrackingUiModel.OnHitOnTextualHistory)) {
                        if (searchTrackingUiModel instanceof SearchTrackingUiModel.OnHitOnProductHistory) {
                            defaultEventHit5 = new Hit.EventHit.DefaultEventHit(null, "LVPass/catalog/search", "search_history_product", "search", "navigation", null, CollectionsKt.O(new AdditionalProperty.ProductSku(cj.q(SkuIdUiModel.f61763c, ((SearchTrackingUiModel.OnHitOnProductHistory) searchTrackingUiModel).f64272a))), 33, null);
                        } else {
                            if (searchTrackingUiModel instanceof SearchTrackingUiModel.OnClearHistory) {
                                defaultEventHit3 = new Hit.EventHit.DefaultEventHit(null, "LVPass/catalog/search", "search_history_clear", "search", "clear", null, EmptyList.f71768b, 33, null);
                            } else if (searchTrackingUiModel instanceof SearchTrackingUiModel.OnHitOnTrending) {
                                String str = ((SearchTrackingUiModel.OnHitOnTrending) searchTrackingUiModel).f64279a;
                                defaultEventHit4 = new Hit.EventHit.DefaultEventHit(null, "LVPass/catalog/search", "search_trending", "search", "navigation", null, CollectionsKt.P(new AdditionalProperty.ContentId(str), new AdditionalProperty.SearchContext(str), new AdditionalProperty.ContentType("search"), new AdditionalProperty.InternalSearchKeywords(str)), 33, null);
                            } else if (searchTrackingUiModel instanceof SearchTrackingUiModel.OnHitOnAutocomplete) {
                                String str2 = ((SearchTrackingUiModel.OnHitOnAutocomplete) searchTrackingUiModel).f64268a;
                                defaultEventHit4 = new Hit.EventHit.DefaultEventHit(null, "LVPass/catalog/search", "search_autocomplete", "search", "navigation", null, CollectionsKt.P(new AdditionalProperty.ContentId(str2), new AdditionalProperty.SearchContext(str2), new AdditionalProperty.ContentType("search"), new AdditionalProperty.InternalSearchKeywords(str2)), 33, null);
                            } else if (searchTrackingUiModel instanceof SearchTrackingUiModel.OnBackHitSearch) {
                                defaultEventHit3 = new Hit.EventHit.DefaultEventHit(null, "LVPass/catalog/search", "search_close_button", "search", "navigation", null, EmptyList.f71768b, 33, null);
                            } else if (searchTrackingUiModel instanceof SearchTrackingUiModel.OnBlankHitSearch) {
                                defaultEventHit3 = new Hit.EventHit.DefaultEventHit(null, "LVPass/catalog/search", "search_close_blank_space", "search", "navigation", null, EmptyList.f71768b, 33, null);
                            } else if (searchTrackingUiModel instanceof SearchTrackingUiModel.OnHitClearSearch) {
                                String str3 = ((SearchTrackingUiModel.OnHitClearSearch) searchTrackingUiModel).f64267a;
                                defaultEventHit4 = new Hit.EventHit.DefaultEventHit(null, "LVPass/catalog/search", "search_bar_clear_text", "search", "clear", null, CollectionsKt.P(new AdditionalProperty.ContentId(str3), new AdditionalProperty.SearchContext(str3), new AdditionalProperty.ContentType("search"), new AdditionalProperty.InternalSearchKeywords(str3)), 33, null);
                            } else if (searchTrackingUiModel instanceof SearchTrackingUiModel.OnHitOnResultCarouselProduct) {
                                SearchTrackingUiModel.OnHitOnResultCarouselProduct onHitOnResultCarouselProduct = (SearchTrackingUiModel.OnHitOnResultCarouselProduct) searchTrackingUiModel;
                                String str4 = onHitOnResultCarouselProduct.f64273a;
                                defaultEventHit3 = new Hit.EventHit.DefaultEventHit(null, "LVPass/catalog/search", "search_results_product", "search", "navigation", null, CollectionsKt.P(new AdditionalProperty.ContentId(str4), new AdditionalProperty.SearchContext(str4), new AdditionalProperty.ProductSku(cj.q(SkuIdUiModel.f61763c, onHitOnResultCarouselProduct.f64274b))), 33, null);
                            } else if (searchTrackingUiModel instanceof SearchTrackingUiModel.OnHitOnSuggestionsCarouselProduct) {
                                SearchTrackingUiModel.OnHitOnSuggestionsCarouselProduct onHitOnSuggestionsCarouselProduct = (SearchTrackingUiModel.OnHitOnSuggestionsCarouselProduct) searchTrackingUiModel;
                                String str5 = onHitOnSuggestionsCarouselProduct.f64276a;
                                defaultEventHit3 = new Hit.EventHit.DefaultEventHit(null, "LVPass/catalog/search", "search_suggestion_product", "search", "navigation", null, CollectionsKt.P(new AdditionalProperty.ContentId(str5), new AdditionalProperty.SearchContext(str5), new AdditionalProperty.ProductSku(cj.q(SkuIdUiModel.f61763c, onHitOnSuggestionsCarouselProduct.f64277b))), 33, null);
                            } else if (searchTrackingUiModel instanceof SearchTrackingUiModel.OnSwipeResultCarousel) {
                                defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, "LVPass/catalog/search", "search_results_swipe", "search", "swipe", null, EmptyList.f71768b, 33, null);
                            } else if (searchTrackingUiModel instanceof SearchTrackingUiModel.OnSwipeSuggestionCarousel) {
                                defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, "LVPass/catalog/search", "search_suggestion_swipe", "search", "swipe", null, EmptyList.f71768b, 33, null);
                            } else if (searchTrackingUiModel instanceof SearchTrackingUiModel.OnHitOnSearch) {
                                String str6 = ((SearchTrackingUiModel.OnHitOnSearch) searchTrackingUiModel).f64275a;
                                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/catalog/search", "search", "search", "navigation", null, CollectionsKt.P(new AdditionalProperty.ContentId(str6), new AdditionalProperty.SearchContext(str6)), 33, null);
                            } else if (!(searchTrackingUiModel instanceof SearchTrackingUiModel.OnHitOnKeywordCardEvent)) {
                                v40.g();
                                return;
                            } else {
                                SearchTrackingUiModel.OnHitOnKeywordCardEvent onHitOnKeywordCardEvent = (SearchTrackingUiModel.OnHitOnKeywordCardEvent) searchTrackingUiModel;
                                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/catalog/search", "search_open_keyword_card", "search", "navigation", null, CollectionsKt.P(new AdditionalProperty.ContentId(onHitOnKeywordCardEvent.f64270a), new AdditionalProperty.InternalSearchKeywords(onHitOnKeywordCardEvent.f64271b)), 33, null);
                            }
                            defaultEventHit5 = defaultEventHit3;
                        }
                        this.f64114c.a(defaultEventHit5);
                    }
                    String str7 = ((SearchTrackingUiModel.OnHitOnTextualHistory) searchTrackingUiModel).f64278a;
                    defaultEventHit4 = new Hit.EventHit.DefaultEventHit(null, "LVPass/catalog/search", "search_history_textual", "search", "navigation", null, CollectionsKt.P(new AdditionalProperty.ContentId(str7), new AdditionalProperty.SearchContext(str7), new AdditionalProperty.ContentType("search"), new AdditionalProperty.InternalSearchKeywords(str7)), 33, null);
                    defaultEventHit5 = defaultEventHit4;
                    this.f64114c.a(defaultEventHit5);
                }
                defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, "LVPass/catalog/search", "bottom_search_bar", "search", "open_keyboard", null, EmptyList.f71768b, 33, null);
                defaultEventHit5 = defaultEventHit2;
                this.f64114c.a(defaultEventHit5);
            }
            String str8 = ((SearchTrackingUiModel.OnNoResult) searchTrackingUiModel).f64280a;
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/catalog/search", "search_no_results", "search", "no_results", null, CollectionsKt.P(new AdditionalProperty.ContentId(str8), new AdditionalProperty.SearchContext(str8)), 33, null);
            defaultEventHit5 = defaultEventHit;
            this.f64114c.a(defaultEventHit5);
        }
        defaultEventHit5 = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/catalog/search", null, "catalog", EmptyList.f71768b, 1, null);
        this.f64114c.a(defaultEventHit5);
    }
}

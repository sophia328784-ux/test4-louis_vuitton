package com.vuitton.android.presentation.screen.storemode.filters;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.plp.GetCategoryPlpUseCase;
import com.vuitton.android.domain.usecase.plp.GetSearchPLPUseCase;
import com.vuitton.android.presentation.extensions.TrackingExtKt;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductBooleanFilterUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterDataTypeUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterValueUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersCategoryUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductListOptionUiModel;
import com.vuitton.android.presentation.screen.storemode.filters.model.ProductFilterTrackingUiModel;
import com.vuitton.android.presentation.screen.storemode.filters.model.ProductFilterViewState;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import defpackage.tr;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;", "getCategoryPlpUseCase", "Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;", "getSearchPLPUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ProductFilterViewModel extends ViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f64974a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetCategoryPlpUseCase f64975b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetSearchPLPUseCase f64976c;
    public final AnalyticsTracker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f64977e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableStateFlow f64978f;
    public final MutableStateFlow g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableStateFlow f64979h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableStateFlow f64980i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableStateFlow f64981j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableStateFlow f64982k;
    public final MutableStateFlow l;
    public final MutableStateFlow m;
    public final MutableStateFlow n;
    public final StateFlow o;

    @Inject
    public ProductFilterViewModel(IsFeatureAvailableUseCase isFeatureAvailableUseCase, Logger logger, GetCategoryPlpUseCase getCategoryPlpUseCase, GetSearchPLPUseCase getSearchPLPUseCase, AnalyticsTracker analyticsTracker) {
        isFeatureAvailableUseCase.getClass();
        logger.getClass();
        getCategoryPlpUseCase.getClass();
        getSearchPLPUseCase.getClass();
        analyticsTracker.getClass();
        this.f64974a = logger;
        this.f64975b = getCategoryPlpUseCase;
        this.f64976c = getSearchPLPUseCase;
        this.d = analyticsTracker;
        this.f64977e = isFeatureAvailableUseCase.b(new Feature[]{Feature.PLP_REVAMP_V3_PHASE2});
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(Boolean.TRUE);
        this.f64978f = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(Boolean.FALSE);
        this.g = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(null);
        this.f64979h = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(null);
        this.f64980i = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(null);
        this.f64981j = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(null);
        this.f64982k = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(null);
        this.l = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(null);
        this.m = mutableStateFlowA8;
        MutableStateFlow mutableStateFlowA9 = StateFlowKt.a(null);
        this.n = mutableStateFlowA9;
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA6, mutableStateFlowA8, mutableStateFlowA7, mutableStateFlowA9};
        Flow<ProductFilterViewState> flow = new Flow<ProductFilterViewState>() { // from class: com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel$special$$inlined$combine$1$3", f = "ProductFilterViewModel.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super ProductFilterViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f64997b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f64998c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f64998c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f64998c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f64997b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        ProductFilterViewState productFilterViewState = new ProductFilterViewState(zBooleanValue, ((Boolean) obj3).booleanValue(), (ProductListOptionUiModel) objArr[2], (Integer) objArr[3], (String) objArr[4], (String) objArr[5], (String) objArr[7], (String) objArr[6], (String) objArr[8]);
                        this.f64998c = null;
                        this.d = null;
                        this.f64997b = 1;
                        if (flowCollector.emit(productFilterViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel$special$$inlined$combine$1.2
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
        this.o = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new ProductFilterViewState(false, false, null, null, null, null, null, null, null, 511, null));
    }

    public final void Ac(boolean z) {
        Cc(ProductFilterTrackingUiModel.ClearAllFiltersEvent.f65014a);
        BuildersKt.c(ViewModelKt.a(this), null, null, new ProductFilterViewModel$resetAllFilters$1(this, z, null), 3);
    }

    public final void Bc(String str, boolean z, boolean z2) {
        Cc(ProductFilterTrackingUiModel.ClearAllFiltersEvent.f65014a);
        BuildersKt.c(ViewModelKt.a(this), null, null, new ProductFilterViewModel$resetUniqueFilter$1(this, z2, str, z, null), 3);
    }

    public final void Cc(ProductFilterTrackingUiModel productFilterTrackingUiModel) {
        Hit.EventHit.DefaultEventHit defaultEventHit;
        String str = (String) this.f64981j.getValue();
        if (productFilterTrackingUiModel instanceof ProductFilterTrackingUiModel.FiltersAppliedEvent) {
            ProductFilterTrackingUiModel.FiltersAppliedEvent filtersAppliedEvent = (ProductFilterTrackingUiModel.FiltersAppliedEvent) productFilterTrackingUiModel;
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, filtersAppliedEvent.f65015a, "select_filter", "filter_selection", "filter", null, TrackingExtKt.a(str, CollectionsKt.O(new AdditionalProperty.FilterId(filtersAppliedEvent.f65016b))), 33, null);
        } else if (productFilterTrackingUiModel instanceof ProductFilterTrackingUiModel.SearchFiltersAppliedEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/SearchCatalog/Filters", "Apply_Filter", "SearchCatalog", "filter", null, TrackingExtKt.a(str, EmptyList.f71768b), 33, null);
        } else if (productFilterTrackingUiModel instanceof ProductFilterTrackingUiModel.ClearAllFiltersEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/SearchCatalog/Filters", "Clear_all", "SearchCatalog", "filter", null, TrackingExtKt.a(str, EmptyList.f71768b), 33, null);
        } else if (productFilterTrackingUiModel instanceof ProductFilterTrackingUiModel.SelectFilterEvent) {
            ProductFilterTrackingUiModel.SelectFilterEvent selectFilterEvent = (ProductFilterTrackingUiModel.SelectFilterEvent) productFilterTrackingUiModel;
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/products_catalog", "SelectFilter", "ProductList", "filter", null, TrackingExtKt.a(str, CollectionsKt.P(new AdditionalProperty.ContentId(tr.h(selectFilterEvent.f65020a, "::", selectFilterEvent.f65021b)), new AdditionalProperty.ContentType("Filters"))), 33, null);
        } else if (productFilterTrackingUiModel instanceof ProductFilterTrackingUiModel.LeaveFiltersEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/SearchCatalog/Filters", "Leave_Filter", "SearchCatalog", "filter", null, TrackingExtKt.a(str, EmptyList.f71768b), 33, null);
        } else {
            if (!(productFilterTrackingUiModel instanceof ProductFilterTrackingUiModel.OnFiltersOpenedEvent)) {
                v40.g();
                return;
            }
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, ((ProductFilterTrackingUiModel.OnFiltersOpenedEvent) productFilterTrackingUiModel).f65018a, "show_filters", "filter_selection", "filter", null, TrackingExtKt.a(str, EmptyList.f71768b), 33, null);
        }
        this.d.a(defaultEventHit);
    }

    public final void Dc(String str, String str2, String str3, String str4, boolean z, boolean z2) {
        str.getClass();
        str2.getClass();
        Cc(new ProductFilterTrackingUiModel.SelectFilterEvent(str, str2));
        BuildersKt.c(ViewModelKt.a(this), null, null, new ProductFilterViewModel$updateFilter$1(this, str3, str4, z2, z, null), 3);
    }

    public final void yc(String str, String str2, String str3, String str4, boolean z) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new ProductFilterViewModel$loadFilterList$1(this, z, str3, str, str2, str4, null), 3);
    }

    public final void zc(String str, boolean z) {
        ProductFiltersUiModel productFiltersUiModel;
        List list;
        ProductFiltersUiModel productFiltersUiModel2;
        List list2;
        if (z) {
            Cc(ProductFilterTrackingUiModel.SearchFiltersAppliedEvent.f65019a);
            return;
        }
        ArrayList arrayList = new ArrayList();
        MutableStateFlow mutableStateFlow = this.f64979h;
        ProductListOptionUiModel productListOptionUiModel = (ProductListOptionUiModel) mutableStateFlow.getValue();
        if (productListOptionUiModel != null && (productFiltersUiModel2 = productListOptionUiModel.f62977b) != null && (list2 = productFiltersUiModel2.f62974b) != null) {
            List list3 = list2;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list3, 10));
            Iterator it = list3.iterator();
            while (it.hasNext()) {
                ProductFilterDataTypeUiModel productFilterDataTypeUiModel = ((ProductFiltersCategoryUiModel) it.next()).d;
                if (productFilterDataTypeUiModel instanceof ProductFilterDataTypeUiModel.Simple) {
                    List<ProductFilterValueUiModel> list4 = ((ProductFilterDataTypeUiModel.Simple) productFilterDataTypeUiModel).f62961a;
                    ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list4, 10));
                    for (ProductFilterValueUiModel productFilterValueUiModel : list4) {
                        if (productFilterValueUiModel.f62969f) {
                            arrayList.add(productFilterValueUiModel.f62966b + "::" + productFilterValueUiModel.f62965a);
                        }
                        arrayList3.add(Unit.f71739a);
                    }
                }
                arrayList2.add(Unit.f71739a);
            }
        }
        ProductListOptionUiModel productListOptionUiModel2 = (ProductListOptionUiModel) mutableStateFlow.getValue();
        if (productListOptionUiModel2 != null && (productFiltersUiModel = productListOptionUiModel2.f62977b) != null && (list = productFiltersUiModel.f62975c) != null) {
            List<ProductBooleanFilterUiModel> list5 = list;
            ArrayList arrayList4 = new ArrayList(CollectionsKt.t(list5, 10));
            for (ProductBooleanFilterUiModel productBooleanFilterUiModel : list5) {
                arrayList4.add(Boolean.valueOf(arrayList.add(productBooleanFilterUiModel.f62955b + "::" + productBooleanFilterUiModel.f62954a)));
            }
        }
        Cc(new ProductFilterTrackingUiModel.FiltersAppliedEvent(str, CollectionsKt.K(arrayList, ";", null, null, null, 62)));
    }
}

package com.vuitton.android.presentation.screen.filter.quickaccess;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.filter.model.FilterParams;
import com.vuitton.android.presentation.screen.filter.model.FilterType;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersTrackingUiModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersTrackingUiModelKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductBooleanFilterUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterDataTypeUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterValueUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersCategoryUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductListOptionUiModel;
import defpackage.md;
import defpackage.os;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B!\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;", "filterCommand", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class QuickAccessFiltersViewModelImpl extends ViewModel implements QuickAccessFiltersViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FilterCommand f58019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f58020b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableStateFlow f58021c;
    public final MutableStateFlow d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableStateFlow f58022e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f58023f;
    public final QafSource g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableStateFlow f58024h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableStateFlow f58025i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableStateFlow f58026j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableStateFlow f58027k;
    public final StateFlow l;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModelImpl$1", f = "QuickAccessFiltersViewModelImpl.kt", l = {120}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f58028b;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return QuickAccessFiltersViewModelImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f58028b;
            if (i2 == 0) {
                ResultKt.b(obj);
                final QuickAccessFiltersViewModelImpl quickAccessFiltersViewModelImpl = QuickAccessFiltersViewModelImpl.this;
                SharedFlowImpl sharedFlowImpl = quickAccessFiltersViewModelImpl.f58019a.d;
                FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModelImpl.1.1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj2, Continuation continuation) {
                        Object value;
                        ProductListOptionUiModel productListOptionUiModel;
                        Object value2;
                        Object value3;
                        ((Boolean) obj2).getClass();
                        QuickAccessFiltersViewModelImpl quickAccessFiltersViewModelImpl2 = quickAccessFiltersViewModelImpl;
                        MutableStateFlow mutableStateFlow = quickAccessFiltersViewModelImpl2.f58024h;
                        do {
                            value = mutableStateFlow.getValue();
                            productListOptionUiModel = (ProductListOptionUiModel) ((Map) quickAccessFiltersViewModelImpl2.f58019a.f57992b.getValue()).get(quickAccessFiltersViewModelImpl2.g);
                            if (productListOptionUiModel == null) {
                                productListOptionUiModel = new ProductListOptionUiModel(EmptyList.f71768b, null, null, 4, null);
                            }
                        } while (!mutableStateFlow.i(value, productListOptionUiModel));
                        MutableStateFlow mutableStateFlow2 = quickAccessFiltersViewModelImpl2.f58026j;
                        do {
                            value2 = mutableStateFlow2.getValue();
                            ((Boolean) value2).getClass();
                        } while (!mutableStateFlow2.i(value2, Boolean.TRUE));
                        MutableStateFlow mutableStateFlow3 = quickAccessFiltersViewModelImpl2.f58027k;
                        do {
                            value3 = mutableStateFlow3.getValue();
                            ((Boolean) value3).getClass();
                        } while (!mutableStateFlow3.i(value3, Boolean.TRUE));
                        return Unit.f71739a;
                    }
                };
                this.f58028b = 1;
                sharedFlowImpl.getClass();
                if (SharedFlowImpl.o(sharedFlowImpl, flowCollector, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            os.d();
            return null;
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f58031a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f58032b;

        static {
            int[] iArr = new int[FiltersDropDownType.values().length];
            try {
                iArr[FiltersDropDownType.SORT_BY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FiltersDropDownType.MORES_FILTERS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f58031a = iArr;
            int[] iArr2 = new int[FilterType.values().length];
            try {
                iArr2[FilterType.SORT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[FilterType.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[FilterType.SIMPLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[FilterType.RANGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            f58032b = iArr2;
        }
    }

    @Inject
    public QuickAccessFiltersViewModelImpl(SavedStateHandle savedStateHandle, FilterCommand filterCommand, AnalyticsTracker analyticsTracker) {
        savedStateHandle.getClass();
        filterCommand.getClass();
        analyticsTracker.getClass();
        this.f58019a = filterCommand;
        this.f58020b = analyticsTracker;
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.f58021c = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(null);
        this.d = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(FiltersButtonState.Hidden);
        this.f58022e = mutableStateFlowA3;
        Boolean bool2 = (Boolean) savedStateHandle.a("SHOULD_HANDLE_LV_NAVBAR");
        boolean zBooleanValue = bool2 != null ? bool2.booleanValue() : false;
        this.f58023f = zBooleanValue;
        QafSource qafSource = (QafSource) savedStateHandle.a("KEY_QAF_SOURCE");
        this.g = qafSource;
        ProductListOptionUiModel productListOptionUiModel = (ProductListOptionUiModel) ((Map) filterCommand.f57992b.getValue()).get(qafSource);
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(productListOptionUiModel == null ? new ProductListOptionUiModel(EmptyList.f71768b, null, null, 4, null) : productListOptionUiModel);
        this.f58024h = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(null);
        this.f58025i = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(Boolean.TRUE);
        this.f58026j = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(bool);
        this.f58027k = mutableStateFlowA7;
        FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3 flowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3 = new FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3(new Flow[]{FlowKt.h(mutableStateFlowA5, mutableStateFlowA4, mutableStateFlowA7, new QuickAccessFiltersViewModelImpl$filtersOptionsState$1(4, null)), mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA6}, new QuickAccessFiltersViewModelImpl$viewState$1(this, null));
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.l = FlowKt.A(flowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new QuickAccessFiltersViewState(null, false, zBooleanValue, false, null, false, null, null, null, null, null, null, null, null, null, false, false, false, false, 524283, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel
    public final void M4(boolean z) {
        QafSource qafSource;
        if (z && (qafSource = this.g) != null) {
            this.f58020b.a(QuickAccessFiltersTrackingUiModelKt.c(new QuickAccessFiltersTrackingUiModel.OpenFiltersEvent(qafSource)));
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new QuickAccessFiltersViewModelImpl$updateFiltersContainerVisibility$2(this, z, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel
    public final void Q1(FiltersButtonState filtersButtonState) {
        MutableStateFlow mutableStateFlow;
        Object value;
        filtersButtonState.getClass();
        do {
            mutableStateFlow = this.f58022e;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, filtersButtonState));
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0051  */
    /* JADX WARN: Code duplicated, block: B:21:0x005b  */
    /* JADX WARN: Code duplicated, block: B:26:0x007d  */
    /* JADX WARN: Code duplicated, block: B:27:0x007f  */
    /* JADX WARN: Code duplicated, block: B:30:0x008a  */
    /* JADX WARN: Code duplicated, block: B:32:0x008d  */
    /* JADX WARN: Code duplicated, block: B:34:0x0091  */
    /* JADX WARN: Code duplicated, block: B:36:0x009b  */
    /* JADX WARN: Code duplicated, block: B:37:0x009e  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:41:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:54:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:55:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:58:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:64:0x010c  */
    /* JADX WARN: Code duplicated, block: B:65:0x010f  */
    /* JADX WARN: Code duplicated, block: B:67:0x011d  */
    /* JADX WARN: Code duplicated, block: B:69:0x0123  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x0106 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x0079 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x0069 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:? A[LOOP:2: B:19:0x0055->B:81:?, LOOP_END, SYNTHETIC] */
    @Override // com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel
    public final void Y0(FilterParams filterParams) {
        List list;
        Iterator it;
        FilterType filterType;
        int i2;
        String str;
        Iterator it2;
        Object next;
        ProductBooleanFilterUiModel productBooleanFilterUiModel;
        boolean z;
        ProductFiltersCategoryUiModel productFiltersCategoryUiModel;
        ProductFilterDataTypeUiModel productFilterDataTypeUiModel;
        ProductFilterDataTypeUiModel.Simple simple;
        Iterator it3;
        Object next2;
        ProductFilterValueUiModel productFilterValueUiModel;
        String str2 = filterParams.f57984a;
        StateFlow stateFlow = this.l;
        List list2 = ((QuickAccessFiltersViewState) stateFlow.getValue()).n;
        boolean z2 = list2 instanceof Collection;
        AnalyticsTracker analyticsTracker = this.f58020b;
        if (z2 && list2.isEmpty()) {
            list = ((QuickAccessFiltersViewState) stateFlow.getValue()).m;
            if (list instanceof Collection) {
                it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (Intrinsics.c(((ProductFilterValueUiModel) it.next()).d, str2)) {
                            analyticsTracker.a(QuickAccessFiltersTrackingUiModelKt.c(new QuickAccessFiltersTrackingUiModel.ClearFilterEvent(filterParams.f57986c, str2)));
                        }
                    }
                }
            } else {
                it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (Intrinsics.c(((ProductFilterValueUiModel) it.next()).d, str2)) {
                            analyticsTracker.a(QuickAccessFiltersTrackingUiModelKt.c(new QuickAccessFiltersTrackingUiModel.ClearFilterEvent(filterParams.f57986c, str2)));
                        }
                    }
                }
            }
            filterType = filterParams.f57987e;
            if (filterType == null) {
                i2 = -1;
            } else {
                i2 = WhenMappings.f58032b[filterType.ordinal()];
            }
            if (i2 != 1) {
                str = filterParams.f57985b;
                if (str == null) {
                    str = "default";
                }
                analyticsTracker.a(QuickAccessFiltersTrackingUiModelKt.c(new QuickAccessFiltersTrackingUiModel.HitOnSortFilterEvent(str)));
            } else if (i2 != 2) {
                it2 = ((QuickAccessFiltersViewState) stateFlow.getValue()).f58177k.iterator();
                do {
                    if (it2.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it2.next();
                } while (!Intrinsics.c(((ProductBooleanFilterUiModel) next).f62956c, str2));
                productBooleanFilterUiModel = (ProductBooleanFilterUiModel) next;
                if (productBooleanFilterUiModel != null) {
                    z = productBooleanFilterUiModel.d;
                } else {
                    z = false;
                }
                analyticsTracker.a(QuickAccessFiltersTrackingUiModelKt.c(new QuickAccessFiltersTrackingUiModel.HitOnBooleanFilterEvent(false, z, str2)));
            } else if (i2 == 3) {
                productFiltersCategoryUiModel = ((QuickAccessFiltersViewState) stateFlow.getValue()).f58176j;
                if (productFiltersCategoryUiModel != null) {
                    productFilterDataTypeUiModel = productFiltersCategoryUiModel.d;
                } else {
                    productFilterDataTypeUiModel = null;
                }
                if (productFilterDataTypeUiModel instanceof ProductFilterDataTypeUiModel.Simple) {
                    simple = (ProductFilterDataTypeUiModel.Simple) productFilterDataTypeUiModel;
                } else {
                    simple = null;
                }
                if (simple != null) {
                    it3 = simple.f62961a.iterator();
                    do {
                        if (it3.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it3.next();
                    } while (!Intrinsics.c(((ProductFilterValueUiModel) next2).d, str2));
                    productFilterValueUiModel = (ProductFilterValueUiModel) next2;
                    if (productFilterValueUiModel != null) {
                        analyticsTracker.a(QuickAccessFiltersTrackingUiModelKt.c(new QuickAccessFiltersTrackingUiModel.HitOnSimpleFilterEvent(productFilterValueUiModel.f62968e, simple.f62962b, str2, productFiltersCategoryUiModel.f62970a)));
                    }
                }
            }
        } else {
            Iterator it4 = list2.iterator();
            while (true) {
                if (!it4.hasNext()) {
                    list = ((QuickAccessFiltersViewState) stateFlow.getValue()).m;
                    if ((list instanceof Collection) || !list.isEmpty()) {
                        it = list.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (Intrinsics.c(((ProductFilterValueUiModel) it.next()).d, str2)) {
                                }
                            }
                        }
                    }
                    filterType = filterParams.f57987e;
                    if (filterType == null) {
                        i2 = -1;
                    } else {
                        i2 = WhenMappings.f58032b[filterType.ordinal()];
                    }
                    if (i2 != 1) {
                        str = filterParams.f57985b;
                        if (str == null) {
                            str = "default";
                        }
                        analyticsTracker.a(QuickAccessFiltersTrackingUiModelKt.c(new QuickAccessFiltersTrackingUiModel.HitOnSortFilterEvent(str)));
                    } else if (i2 != 2) {
                        it2 = ((QuickAccessFiltersViewState) stateFlow.getValue()).f58177k.iterator();
                        do {
                            if (it2.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it2.next();
                        } while (!Intrinsics.c(((ProductBooleanFilterUiModel) next).f62956c, str2));
                        productBooleanFilterUiModel = (ProductBooleanFilterUiModel) next;
                        if (productBooleanFilterUiModel != null) {
                            z = productBooleanFilterUiModel.d;
                        } else {
                            z = false;
                        }
                        analyticsTracker.a(QuickAccessFiltersTrackingUiModelKt.c(new QuickAccessFiltersTrackingUiModel.HitOnBooleanFilterEvent(false, z, str2)));
                    } else if (i2 == 3) {
                        productFiltersCategoryUiModel = ((QuickAccessFiltersViewState) stateFlow.getValue()).f58176j;
                        if (productFiltersCategoryUiModel != null) {
                            productFilterDataTypeUiModel = productFiltersCategoryUiModel.d;
                        } else {
                            productFilterDataTypeUiModel = null;
                        }
                        if (productFilterDataTypeUiModel instanceof ProductFilterDataTypeUiModel.Simple) {
                            simple = (ProductFilterDataTypeUiModel.Simple) productFilterDataTypeUiModel;
                        } else {
                            simple = null;
                        }
                        if (simple != null) {
                            it3 = simple.f62961a.iterator();
                            do {
                                if (it3.hasNext()) {
                                    next2 = null;
                                    break;
                                }
                                next2 = it3.next();
                            } while (!Intrinsics.c(((ProductFilterValueUiModel) next2).d, str2));
                            productFilterValueUiModel = (ProductFilterValueUiModel) next2;
                            if (productFilterValueUiModel != null) {
                                analyticsTracker.a(QuickAccessFiltersTrackingUiModelKt.c(new QuickAccessFiltersTrackingUiModel.HitOnSimpleFilterEvent(productFilterValueUiModel.f62968e, simple.f62962b, str2, productFiltersCategoryUiModel.f62970a)));
                            }
                        }
                    }
                } else if (Intrinsics.c(((ProductBooleanFilterUiModel) it4.next()).f62956c, str2)) {
                }
                analyticsTracker.a(QuickAccessFiltersTrackingUiModelKt.c(new QuickAccessFiltersTrackingUiModel.ClearFilterEvent(filterParams.f57986c, str2)));
            }
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new QuickAccessFiltersViewModelImpl$refreshPLP$1(this, filterParams, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getL() {
        return this.l;
    }

    @Override // com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel
    public final void l0(QuickAccessFiltersTrackingUiModel quickAccessFiltersTrackingUiModel) {
        this.f58020b.a(QuickAccessFiltersTrackingUiModelKt.c(quickAccessFiltersTrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel
    public final void o2(FiltersDropDownType filtersDropDownType) {
        MutableStateFlow mutableStateFlow;
        Object value;
        int i2 = filtersDropDownType == null ? -1 : WhenMappings.f58031a[filtersDropDownType.ordinal()];
        if (i2 == 1) {
            l0(QuickAccessFiltersTrackingUiModel.OpenSortByPanelEvent.f58164a);
        } else if (i2 == 2) {
            l0(QuickAccessFiltersTrackingUiModel.OpenBooleansPanelEvent.f58162a);
        }
        do {
            mutableStateFlow = this.d;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, filtersDropDownType));
    }

    @Override // com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel
    public final void sa(String str) {
        MutableStateFlow mutableStateFlow;
        Object value;
        str.getClass();
        do {
            mutableStateFlow = this.f58025i;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, str));
    }
}

package com.vuitton.android.presentation.screen.storemode.delegates;

import com.vuitton.android.presentation.screen.filter.quickaccess.FilterCommand;
import com.vuitton.android.presentation.screen.filter.quickaccess.QafSource;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductListOptionUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.mapper.ProductListOptionMapperKt;
import com.vuitton.android.presentation.screen.storemode.filters.model.StoreModePLPFiltersViewState;
import com.vuitton.foundation.model.domain.extensions.CollectionExtKt;
import com.vuitton.foundation.model.domain.model.plp.PlpPagination;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductBooleanFilter;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductFilterDataType;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductFilterValue;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductFilters;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductFiltersCategory;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductFiltersCategoryType;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductListOption;
import defpackage.md;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001Bi\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u000e\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0012\u000e\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0006\u0012\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate;", "", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;", "qafSource", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Lkotlinx/coroutines/flow/Flow;", "", "sortId", "initialFilterKey", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;", "filterCommand", "currentFilterKey", "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;", "pagination", "Lkotlinx/coroutines/flow/MutableStateFlow;", "currentL3Category", "<init>", "(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/MutableStateFlow;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class StoreModePLPFiltersDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StateFlow f64920a;

    public StoreModePLPFiltersDelegate(QafSource qafSource, CoroutineScope coroutineScope, Flow<String> flow, final String str, FilterCommand filterCommand, Flow<String> flow2, Flow<PlpPagination> flow3, MutableStateFlow<String> mutableStateFlow) {
        qafSource.getClass();
        coroutineScope.getClass();
        flow.getClass();
        filterCommand.getClass();
        flow2.getClass();
        flow3.getClass();
        mutableStateFlow.getClass();
        final Flow[] flowArr = {flow3, flow2, flow, mutableStateFlow};
        FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1 flowKt__TransformKt$onEach$$inlined$unsafeTransform$1 = new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(new Flow<StoreModePLPFiltersViewState>() { // from class: com.vuitton.android.presentation.screen.storemode.delegates.StoreModePLPFiltersDelegate$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.delegates.StoreModePLPFiltersDelegate$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.delegates.StoreModePLPFiltersDelegate$special$$inlined$combine$1$3", f = "StoreModePLPFiltersDelegate.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super StoreModePLPFiltersViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f64924b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f64925c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ String f64926e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, String str) {
                    super(3, continuation);
                    this.f64926e = str;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f64926e);
                    anonymousClass3.f64925c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                /* JADX WARN: Code duplicated, block: B:54:0x00c4 A[DONT_INVERT] */
                /* JADX WARN: Code duplicated, block: B:55:0x00c6  */
                /* JADX WARN: Code duplicated, block: B:56:0x00c8  */
                /* JADX WARN: Code duplicated, block: B:83:0x011d  */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    boolean z;
                    boolean z2;
                    ProductListOption productListOption;
                    ArrayList arrayList;
                    boolean z3;
                    List list;
                    ProductListOption productListOption2;
                    ProductFilters productFilters;
                    boolean z4;
                    boolean z5;
                    ProductListOption productListOption3;
                    FlowCollector flowCollector = this.f64925c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f64924b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        PlpPagination plpPagination = (PlpPagination) objArr[0];
                        String str = (String) objArr[1];
                        String str2 = (String) objArr[2];
                        ProductListOptionUiModel productListOptionUiModelA = (plpPagination == null || (productListOption3 = plpPagination.f67823e) == null) ? null : ProductListOptionMapperKt.a(productListOption3);
                        if (plpPagination != null && (productListOption2 = plpPagination.f67823e) != null && (productFilters = productListOption2.f68123b) != null) {
                            List list2 = productFilters.f68117b;
                            if ((list2 instanceof Collection) && list2.isEmpty()) {
                                z4 = false;
                                break;
                            }
                            Iterator it = list2.iterator();
                            loop2: while (true) {
                                if (!it.hasNext()) {
                                    z4 = false;
                                    break;
                                }
                                ProductFilterDataType productFilterDataType = ((ProductFiltersCategory) it.next()).d;
                                if (productFilterDataType instanceof ProductFilterDataType.Simple) {
                                    List list3 = ((ProductFilterDataType.Simple) productFilterDataType).f68107a;
                                    if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                                        Iterator it2 = list3.iterator();
                                        while (it2.hasNext()) {
                                            if (((ProductFilterValue) it2.next()).f68114e) {
                                                z4 = true;
                                                break loop2;
                                            }
                                        }
                                    }
                                }
                            }
                            List list4 = productFilters.f68118c;
                            if (!(list4 instanceof Collection) || !list4.isEmpty()) {
                                Iterator it3 = list4.iterator();
                                while (true) {
                                    if (!it3.hasNext()) {
                                        z5 = false;
                                        break;
                                    }
                                    if (((ProductBooleanFilter) it3.next()).d) {
                                        z5 = true;
                                        break;
                                    }
                                }
                            } else {
                                z5 = false;
                                break;
                            }
                            if (z4 || z5) {
                                z = true;
                            } else if (str2 != null) {
                                z = true;
                            } else {
                                z = false;
                            }
                        } else if (str2 != null) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (plpPagination == null || (productListOption = plpPagination.f67823e) == null) {
                            z2 = false;
                        } else {
                            ProductFilters productFilters2 = productListOption.f68123b;
                            if (productFilters2 == null || (list = productFilters2.f68117b) == null) {
                                arrayList = null;
                            } else {
                                arrayList = new ArrayList();
                                for (Object obj2 : list) {
                                    if (((ProductFiltersCategory) obj2).f68121c != ProductFiltersCategoryType.RANGE) {
                                        arrayList.add(obj2);
                                    }
                                }
                            }
                            if (CollectionExtKt.a(arrayList)) {
                                z3 = true;
                            } else if (CollectionExtKt.a(productFilters2 != null ? productFilters2.f68118c : null) || CollectionExtKt.a(productListOption.f68122a)) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            z2 = (plpPagination.f67824f > 1 && z3) || z;
                        }
                        StoreModePLPFiltersViewState storeModePLPFiltersViewState = new StoreModePLPFiltersViewState(this.f64926e, str, str2, z2, z, productListOptionUiModelA);
                        this.f64925c = null;
                        this.d = null;
                        this.f64924b = 1;
                        if (flowCollector.emit(storeModePLPFiltersViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.storemode.delegates.StoreModePLPFiltersDelegate$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null, str), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        }, new StoreModePLPFiltersDelegate$viewState$2(filterCommand, qafSource, mutableStateFlow, str, null));
        SharingStarted.f74985a.getClass();
        this.f64920a = FlowKt.A(flowKt__TransformKt$onEach$$inlined$unsafeTransform$1, coroutineScope, SharingStarted.Companion.f74988c, new StoreModePLPFiltersViewState(null, null, null, false, false, null, 63, null));
    }
}

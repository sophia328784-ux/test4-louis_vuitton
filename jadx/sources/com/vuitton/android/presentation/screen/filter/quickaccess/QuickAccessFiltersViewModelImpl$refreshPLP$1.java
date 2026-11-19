package com.vuitton.android.presentation.screen.filter.quickaccess;

import com.vuitton.android.presentation.screen.filter.model.FilterParams;
import com.vuitton.android.presentation.screen.filter.model.FilterType;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductBooleanFilterUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterDataTypeUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterValueUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersCategoryUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductListOptionUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductSortUiModel;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModelImpl$refreshPLP$1", f = "QuickAccessFiltersViewModelImpl.kt", l = {142}, m = "invokeSuspend", v = 2)
final class QuickAccessFiltersViewModelImpl$refreshPLP$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58036b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ QuickAccessFiltersViewModelImpl f58037c;
    public final /* synthetic */ FilterParams d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuickAccessFiltersViewModelImpl$refreshPLP$1(QuickAccessFiltersViewModelImpl quickAccessFiltersViewModelImpl, FilterParams filterParams, Continuation continuation) {
        super(2, continuation);
        this.f58037c = quickAccessFiltersViewModelImpl;
        this.d = filterParams;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new QuickAccessFiltersViewModelImpl$refreshPLP$1(this.f58037c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((QuickAccessFiltersViewModelImpl$refreshPLP$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x008e  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.util.ArrayList] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object value;
        int i2;
        ArrayList arrayList;
        ArrayList arrayList2;
        ?? arrayList3;
        int i3;
        ProductFiltersUiModel productFiltersUiModelA;
        List list;
        List list2;
        Object next;
        FilterParams filterParams = this.d;
        String str = filterParams.f57984a;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = this.f58036b;
        int i5 = 1;
        if (i4 == 0) {
            ResultKt.b(obj);
            QuickAccessFiltersViewModelImpl quickAccessFiltersViewModelImpl = this.f58037c;
            MutableStateFlow mutableStateFlow = quickAccessFiltersViewModelImpl.f58026j;
            do {
                value = mutableStateFlow.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow.i(value, Boolean.FALSE));
            MutableStateFlow mutableStateFlow2 = quickAccessFiltersViewModelImpl.f58024h;
            ProductFiltersUiModel productFiltersUiModel = ((ProductListOptionUiModel) mutableStateFlow2.getValue()).f62977b;
            int i6 = 10;
            if (productFiltersUiModel == null || (list2 = productFiltersUiModel.f62974b) == null) {
                i2 = 1;
                arrayList = null;
            } else {
                List<ProductFiltersCategoryUiModel> list3 = list2;
                arrayList = new ArrayList(CollectionsKt.t(list3, 10));
                for (ProductFiltersCategoryUiModel productFiltersCategoryUiModelA : list3) {
                    ProductFilterDataTypeUiModel productFilterDataTypeUiModel = productFiltersCategoryUiModelA.d;
                    if (productFilterDataTypeUiModel instanceof ProductFilterDataTypeUiModel.Simple) {
                        ProductFilterDataTypeUiModel.Simple simple = (ProductFilterDataTypeUiModel.Simple) productFilterDataTypeUiModel;
                        List<ProductFilterValueUiModel> list4 = simple.f62961a;
                        Iterator it = list4.iterator();
                        do {
                            if (!it.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it.next();
                        } while (!Intrinsics.c(((ProductFilterValueUiModel) next).d, str));
                        ProductFilterValueUiModel productFilterValueUiModel = (ProductFilterValueUiModel) next;
                        if (productFilterValueUiModel != null) {
                            boolean z = productFilterValueUiModel.f62968e;
                            boolean z2 = !z;
                            ArrayList arrayList4 = new ArrayList(CollectionsKt.t(list4, i6));
                            for (ProductFilterValueUiModel productFilterValueUiModelA : list4) {
                                if (Intrinsics.c(productFilterValueUiModelA.d, str)) {
                                    productFilterValueUiModelA = ProductFilterValueUiModel.a(productFilterValueUiModelA, z2);
                                } else if (!simple.f62962b && !z) {
                                    productFilterValueUiModelA = ProductFilterValueUiModel.a(productFilterValueUiModelA, false);
                                }
                                arrayList4.add(productFilterValueUiModelA);
                            }
                            productFiltersCategoryUiModelA = ProductFiltersCategoryUiModel.a(productFiltersCategoryUiModelA, ProductFilterDataTypeUiModel.Simple.a(simple, arrayList4));
                        }
                    }
                    arrayList.add(productFiltersCategoryUiModelA);
                    i5 = i5;
                    i6 = 10;
                }
                i2 = i5;
            }
            ProductFiltersUiModel productFiltersUiModel2 = ((ProductListOptionUiModel) mutableStateFlow2.getValue()).f62977b;
            if (productFiltersUiModel2 == null || (list = productFiltersUiModel2.f62975c) == null) {
                arrayList2 = null;
            } else {
                List<ProductBooleanFilterUiModel> list5 = list;
                arrayList2 = new ArrayList(CollectionsKt.t(list5, 10));
                for (ProductBooleanFilterUiModel productBooleanFilterUiModelA : list5) {
                    if (Intrinsics.c(productBooleanFilterUiModelA.f62956c, str)) {
                        productBooleanFilterUiModelA = ProductBooleanFilterUiModel.a(productBooleanFilterUiModelA, !productBooleanFilterUiModelA.d);
                    }
                    arrayList2.add(productBooleanFilterUiModelA);
                }
            }
            if (filterParams.f57987e == FilterType.SORT) {
                List<ProductSortUiModel> list6 = ((ProductListOptionUiModel) mutableStateFlow2.getValue()).f62976a;
                arrayList3 = new ArrayList(CollectionsKt.t(list6, 10));
                for (ProductSortUiModel productSortUiModel : list6) {
                    String str2 = productSortUiModel.f62993a;
                    String str3 = filterParams.f57985b;
                    if (str3 == null) {
                        str3 = "";
                    }
                    arrayList3.add(ProductSortUiModel.a(productSortUiModel, Intrinsics.c(str2, str3)));
                }
            } else {
                arrayList3 = ((ProductListOptionUiModel) mutableStateFlow2.getValue()).f62976a;
            }
            while (true) {
                Object value2 = mutableStateFlow2.getValue();
                ProductListOptionUiModel productListOptionUiModel = (ProductListOptionUiModel) value2;
                ProductFiltersUiModel productFiltersUiModel3 = productListOptionUiModel.f62977b;
                if (productFiltersUiModel3 != null) {
                    i3 = i2;
                    productFiltersUiModelA = ProductFiltersUiModel.a(productFiltersUiModel3, null, arrayList == null ? EmptyList.f71768b : arrayList, arrayList2 == null ? EmptyList.f71768b : arrayList2, i3);
                } else {
                    i3 = i2;
                    productFiltersUiModelA = null;
                }
                if (mutableStateFlow2.i(value2, ProductListOptionUiModel.a(productListOptionUiModel, arrayList3, productFiltersUiModelA, 4))) {
                    break;
                }
                i2 = i3;
            }
            FilterCommand filterCommand = quickAccessFiltersViewModelImpl.f58019a;
            this.f58036b = i3;
            Object objEmit = filterCommand.f57993c.emit(filterParams, this);
            if (objEmit != CoroutineSingletons.COROUTINE_SUSPENDED) {
                objEmit = Unit.f71739a;
            }
            if (objEmit == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i4 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}

package com.vuitton.android.presentation.screen.storemode.delegates;

import com.vuitton.android.presentation.screen.filter.quickaccess.FilterCommand;
import com.vuitton.android.presentation.screen.filter.quickaccess.QafSource;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductListOptionUiModel;
import com.vuitton.android.presentation.screen.storemode.filters.model.StoreModePLPFiltersViewState;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.delegates.StoreModePLPFiltersDelegate$viewState$2", f = "StoreModePLPFiltersDelegate.kt", l = {}, m = "invokeSuspend", v = 2)
public final class StoreModePLPFiltersDelegate$viewState$2 extends SuspendLambda implements Function2<StoreModePLPFiltersViewState, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f64927b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FilterCommand f64928c;
    public final /* synthetic */ QafSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableStateFlow f64929e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f64930f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoreModePLPFiltersDelegate$viewState$2(FilterCommand filterCommand, QafSource qafSource, MutableStateFlow mutableStateFlow, String str, Continuation continuation) {
        super(2, continuation);
        this.f64928c = filterCommand;
        this.d = qafSource;
        this.f64929e = mutableStateFlow;
        this.f64930f = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        StoreModePLPFiltersDelegate$viewState$2 storeModePLPFiltersDelegate$viewState$2 = new StoreModePLPFiltersDelegate$viewState$2(this.f64928c, this.d, this.f64929e, this.f64930f, continuation);
        storeModePLPFiltersDelegate$viewState$2.f64927b = obj;
        return storeModePLPFiltersDelegate$viewState$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((StoreModePLPFiltersDelegate$viewState$2) create((StoreModePLPFiltersViewState) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        LinkedHashMap linkedHashMapR;
        ProductFiltersUiModel productFiltersUiModel;
        StoreModePLPFiltersViewState storeModePLPFiltersViewState = (StoreModePLPFiltersViewState) this.f64927b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        ProductListOptionUiModel productListOptionUiModel = storeModePLPFiltersViewState.f65036f;
        ProductListOptionUiModel productListOptionUiModelA = null;
        if (productListOptionUiModel != null) {
            ProductFiltersUiModel productFiltersUiModel2 = productListOptionUiModel.f62977b;
            String str = this.f64930f;
            MutableStateFlow mutableStateFlow = this.f64929e;
            if (productFiltersUiModel2 != null) {
                String str2 = productFiltersUiModel2.f62973a;
                if (str2 == null) {
                    String str3 = (String) mutableStateFlow.getValue();
                    if (str3 != null) {
                        str = str3;
                    }
                } else {
                    str = str2;
                }
                productFiltersUiModel = ProductFiltersUiModel.a(productFiltersUiModel2, str, null, null, 6);
            } else {
                String str4 = (String) mutableStateFlow.getValue();
                if (str4 != null) {
                    str = str4;
                }
                EmptyList emptyList = EmptyList.f71768b;
                productFiltersUiModel = new ProductFiltersUiModel(str, emptyList, emptyList);
            }
            productListOptionUiModelA = ProductListOptionUiModel.a(productListOptionUiModel, null, productFiltersUiModel, 5);
        }
        FilterCommand filterCommand = this.f64928c;
        filterCommand.getClass();
        QafSource qafSource = this.d;
        qafSource.getClass();
        MutableStateFlow mutableStateFlow2 = filterCommand.f57991a;
        do {
            value = mutableStateFlow2.getValue();
            linkedHashMapR = MapsKt.r((Map) value);
            linkedHashMapR.put(qafSource, productListOptionUiModelA);
        } while (!mutableStateFlow2.i(value, linkedHashMapR));
        return Unit.f71739a;
    }
}

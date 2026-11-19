package com.vuitton.android.presentation.screen.pdp;

import android.location.Geocoder;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.products.availability.GetPlaceGeocodingByLocationUseCase;
import com.vuitton.android.domain.usecase.products.availability.GetPlaceGeocodingByPlaceIdUseCase;
import com.vuitton.android.domain.usecase.products.availability.GetProductAvailabilityInStoresUseCase;
import com.vuitton.android.domain.usecase.travel.GetPlaceAutocompleteUseCase;
import com.vuitton.android.presentation.model.location.PlaceGeocodingUiModel;
import com.vuitton.android.presentation.model.storelocator.StoreAddressUiModel;
import com.vuitton.android.presentation.model.storelocator.StoreUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.PlaceAutocompleteUiModel;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.pdp.models.FindInStoreViewState;
import com.vuitton.android.presentation.screen.pdp.models.tracking.FindInStoreTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.cj;
import defpackage.md;
import defpackage.v40;
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
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B9\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByLocationUseCase;", "getPlaceGeocodingByLocationUseCase", "Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByPlaceIdUseCase;", "getPlaceGeocodingByPlaceIdUseCase", "Lcom/vuitton/android/domain/usecase/travel/GetPlaceAutocompleteUseCase;", "getPlaceAutocompleteUseCase", "Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase;", "getProductAvailabilityInStoresUseCase", "<init>", "(Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByLocationUseCase;Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByPlaceIdUseCase;Lcom/vuitton/android/domain/usecase/travel/GetPlaceAutocompleteUseCase;Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FindInStoreViewModelImpl extends ViewModel implements FindInStoreViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnalyticsTracker f61013a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetPlaceGeocodingByLocationUseCase f61014b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetPlaceGeocodingByPlaceIdUseCase f61015c;
    public final GetPlaceAutocompleteUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GetProductAvailabilityInStoresUseCase f61016e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final InAppDispatch f61017f;
    public final MutableStateFlow g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableStateFlow f61018h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableStateFlow f61019i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableStateFlow f61020j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableStateFlow f61021k;
    public final BufferedChannel l;
    public final BufferedChannel m;
    public final StateFlow n;

    @Inject
    public FindInStoreViewModelImpl(AnalyticsTracker analyticsTracker, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, GetPlaceGeocodingByLocationUseCase getPlaceGeocodingByLocationUseCase, GetPlaceGeocodingByPlaceIdUseCase getPlaceGeocodingByPlaceIdUseCase, GetPlaceAutocompleteUseCase getPlaceAutocompleteUseCase, GetProductAvailabilityInStoresUseCase getProductAvailabilityInStoresUseCase) {
        analyticsTracker.getClass();
        requireUserInAppDispatchUseCase.getClass();
        getPlaceGeocodingByLocationUseCase.getClass();
        getPlaceGeocodingByPlaceIdUseCase.getClass();
        getPlaceAutocompleteUseCase.getClass();
        getProductAvailabilityInStoresUseCase.getClass();
        this.f61013a = analyticsTracker;
        this.f61014b = getPlaceGeocodingByLocationUseCase;
        this.f61015c = getPlaceGeocodingByPlaceIdUseCase;
        this.d = getPlaceAutocompleteUseCase;
        this.f61016e = getProductAvailabilityInStoresUseCase;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.f61017f = inAppDispatchB;
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.g = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.f61018h = mutableStateFlowA2;
        EmptyList emptyList = EmptyList.f71768b;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(emptyList);
        this.f61019i = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(emptyList);
        this.f61020j = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(StringResourceUiModel.Empty.f51825b);
        this.f61021k = mutableStateFlowA5;
        this.l = ChannelKt.a(0, 7, null);
        this.m = ChannelKt.a(0, 7, null);
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5};
        this.n = FlowKt.A(new Flow<FindInStoreViewState>() { // from class: com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl$special$$inlined$combine$1$3", f = "FindInStoreViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super FindInStoreViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f61050b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f61051c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ FindInStoreViewModelImpl f61052e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, FindInStoreViewModelImpl findInStoreViewModelImpl) {
                    super(3, continuation);
                    this.f61052e = findInStoreViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f61052e);
                    anonymousClass3.f61051c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f61051c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f61050b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        InAppDispatch inAppDispatch = this.f61052e.f61017f;
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj3).booleanValue();
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        List list = (List) obj4;
                        Object obj5 = objArr[3];
                        obj5.getClass();
                        List list2 = (List) obj5;
                        Object obj6 = objArr[4];
                        obj6.getClass();
                        FindInStoreViewState findInStoreViewState = new FindInStoreViewState(inAppDispatch, zBooleanValue, zBooleanValue2, (StringResourceUiModel) obj6, list, list2);
                        this.f61051c = null;
                        this.d = null;
                        this.f61050b = 1;
                        if (flowCollector.emit(findInStoreViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null, this), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        }, ViewModelKt.a(this), SharingStarted.Companion.a(SharingStarted.f74985a, 3), new FindInStoreViewState(inAppDispatchB, false, false, null, null, null, 62, null));
    }

    @Override // com.vuitton.android.presentation.screen.pdp.FindInStoreViewModel
    public final void Qa(String str) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new FindInStoreViewModelImpl$getPlaceAutoComplete$1(str, this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.FindInStoreViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getN() {
        return this.n;
    }

    @Override // com.vuitton.android.presentation.screen.pdp.FindInStoreViewModel
    public final void a6(String str, PlaceGeocodingUiModel placeGeocodingUiModel) {
        str.getClass();
        placeGeocodingUiModel.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new FindInStoreViewModelImpl$getStores$1(this, str, placeGeocodingUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.FindInStoreViewModel
    public final void b1() {
        this.f61020j.setValue(EmptyList.f71768b);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.FindInStoreViewModel
    public final void b9(Geocoder geocoder, StoreUiModel storeUiModel, PlaceGeocodingUiModel placeGeocodingUiModel) {
        storeUiModel.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new FindInStoreViewModelImpl$openStoreMap$1(placeGeocodingUiModel, geocoder, storeUiModel, this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.FindInStoreViewModel
    public final void c6(double d, double d2) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new FindInStoreViewModelImpl$getPlaceGeocodingByLocation$1(this, d, d2, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.FindInStoreViewModel
    public final Flow i5() {
        return FlowKt.y(this.m);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.FindInStoreViewModel
    public final void m1(PlaceAutocompleteUiModel placeAutocompleteUiModel) {
        placeAutocompleteUiModel.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1(this, placeAutocompleteUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.FindInStoreViewModel
    public final void s6(FindInStoreTrackingUiModel findInStoreTrackingUiModel) {
        Hit.EventHit.DefaultEventHit defaultEventHit;
        if (findInStoreTrackingUiModel instanceof FindInStoreTrackingUiModel.ClickOnCheckAvailabilityEvent) {
            String str = ((FindInStoreTrackingUiModel.ClickOnCheckAvailabilityEvent) findInStoreTrackingUiModel).f61579a;
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "productsheet/".concat(str), "locate_in_store", "product_area", "e-commerce_interaction", null, CollectionsKt.O(new AdditionalProperty.ProductSku(cj.q(SkuIdUiModel.f61763c, str))), 33, null);
        } else if (findInStoreTrackingUiModel instanceof FindInStoreTrackingUiModel.ClickOnMoreDetailsEvent) {
            FindInStoreTrackingUiModel.ClickOnMoreDetailsEvent clickOnMoreDetailsEvent = (FindInStoreTrackingUiModel.ClickOnMoreDetailsEvent) findInStoreTrackingUiModel;
            String str2 = clickOnMoreDetailsEvent.f61580a;
            String strConcat = "productsheet/".concat(str2);
            AdditionalProperty.ProductSku productSku = new AdditionalProperty.ProductSku(cj.q(SkuIdUiModel.f61763c, str2));
            AdditionalProperty.InternalSearchKeywords internalSearchKeywords = new AdditionalProperty.InternalSearchKeywords(clickOnMoreDetailsEvent.f61581b);
            StoreUiModel storeUiModel = clickOnMoreDetailsEvent.f61582c;
            StoreAddressUiModel storeAddressUiModel = storeUiModel.f51820e;
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, strConcat, "store_more_details", "popin/locate_in_store", "e-commerce_interaction", null, CollectionsKt.P(productSku, internalSearchKeywords, new AdditionalProperty.StoreId(storeAddressUiModel.d + "::" + storeAddressUiModel.f51812b + "::" + storeUiModel.f51817a)), 33, null);
        } else if (findInStoreTrackingUiModel instanceof FindInStoreTrackingUiModel.ClickOnUseCurrentLocationEvent) {
            String str3 = ((FindInStoreTrackingUiModel.ClickOnUseCurrentLocationEvent) findInStoreTrackingUiModel).f61583a;
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "productsheet/".concat(str3), "current_location", "popin/locate_in_store", "e-commerce_interaction", null, CollectionsKt.O(new AdditionalProperty.ProductSku(cj.q(SkuIdUiModel.f61763c, str3))), 33, null);
        } else if (findInStoreTrackingUiModel instanceof FindInStoreTrackingUiModel.ClickOnUseDrivingDirectionEvent) {
            String str4 = ((FindInStoreTrackingUiModel.ClickOnUseDrivingDirectionEvent) findInStoreTrackingUiModel).f61584a;
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "productsheet/".concat(str4), "driving_directions", "popin/locate_in_store", "e-commerce_interaction", null, CollectionsKt.O(new AdditionalProperty.ProductSku(cj.q(SkuIdUiModel.f61763c, str4))), 33, null);
        } else if (!(findInStoreTrackingUiModel instanceof FindInStoreTrackingUiModel.ChangeAvailabilityFilterEvent)) {
            v40.g();
            return;
        } else {
            FindInStoreTrackingUiModel.ChangeAvailabilityFilterEvent changeAvailabilityFilterEvent = (FindInStoreTrackingUiModel.ChangeAvailabilityFilterEvent) findInStoreTrackingUiModel;
            String str5 = changeAvailabilityFilterEvent.f61577a;
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "productsheet/".concat(str5), changeAvailabilityFilterEvent.f61578b ? "product_available" : "product_available_untick", "popin/locate_in_store", "e-commerce_interaction", null, CollectionsKt.O(new AdditionalProperty.ProductSku(cj.q(SkuIdUiModel.f61763c, str5))), 33, null);
        }
        this.f61013a.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.FindInStoreViewModel
    public final Flow y8() {
        return FlowKt.y(this.l);
    }
}

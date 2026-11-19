package com.vuitton.android.presentation.screen.placesearch;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.domain.usecase.products.availability.GetPlaceGeocodingByPlaceIdUseCase;
import com.vuitton.android.domain.usecase.travel.GetPlaceAutocompleteUseCase;
import com.vuitton.android.presentation.screen.placesearch.models.PlacesUiModel;
import com.vuitton.foundation.model.domain.model.place.AutocompleteContext;
import defpackage.md;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
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
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModel;", "Lcom/vuitton/android/domain/usecase/travel/GetPlaceAutocompleteUseCase;", "getPlaceAutocompleteUseCase", "Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByPlaceIdUseCase;", "getPlaceGeocodingByPlaceIdUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/travel/GetPlaceAutocompleteUseCase;Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByPlaceIdUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PlaceSearchViewModelImpl extends ViewModel implements PlaceSearchViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetPlaceAutocompleteUseCase f62659a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetPlaceGeocodingByPlaceIdUseCase f62660b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableLiveData f62661c;
    public final MutableLiveData d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableLiveData f62662e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableLiveData f62663f;
    public final MutableStateFlow g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableStateFlow f62664h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableStateFlow f62665i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final StateFlow f62666j;

    @Inject
    public PlaceSearchViewModelImpl(GetPlaceAutocompleteUseCase getPlaceAutocompleteUseCase, GetPlaceGeocodingByPlaceIdUseCase getPlaceGeocodingByPlaceIdUseCase) {
        getPlaceAutocompleteUseCase.getClass();
        getPlaceGeocodingByPlaceIdUseCase.getClass();
        this.f62659a = getPlaceAutocompleteUseCase;
        this.f62660b = getPlaceGeocodingByPlaceIdUseCase;
        MutableLiveData mutableLiveData = new MutableLiveData();
        this.f62661c = mutableLiveData;
        this.d = mutableLiveData;
        MutableLiveData mutableLiveData2 = new MutableLiveData();
        this.f62662e = mutableLiveData2;
        this.f62663f = mutableLiveData2;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(EmptyList.f71768b);
        this.g = mutableStateFlowA;
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.f62664h = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool);
        this.f62665i = mutableStateFlowA3;
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3};
        Flow<PlacesUiModel> flow = new Flow<PlacesUiModel>() { // from class: com.vuitton.android.presentation.screen.placesearch.PlaceSearchViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.placesearch.PlaceSearchViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.placesearch.PlaceSearchViewModelImpl$special$$inlined$combine$1$3", f = "PlaceSearchViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super PlacesUiModel>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f62676b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f62677c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f62677c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f62677c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f62676b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[2];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj3).booleanValue();
                        Object obj4 = objArr[0];
                        obj4.getClass();
                        PlacesUiModel placesUiModel = new PlacesUiModel((List) obj4, zBooleanValue2, zBooleanValue);
                        this.f62677c = null;
                        this.d = null;
                        this.f62676b = 1;
                        if (flowCollector.emit(placesUiModel, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.placesearch.PlaceSearchViewModelImpl$special$$inlined$combine$1.2
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
        this.f62666j = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new PlacesUiModel(null, true, false, 5, null));
    }

    @Override // com.vuitton.android.presentation.screen.placesearch.PlaceSearchViewModel
    public final void M8(String str, PlaceSearchActivity.PlaceInfoType placeInfoType) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new PlaceSearchViewModelImpl$fetchPlaceInfo$1(this, str, placeInfoType, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.placesearch.PlaceSearchViewModel
    public final void R3(String str, AutocompleteContext autocompleteContext) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1(this, str, autocompleteContext, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.placesearch.PlaceSearchViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getF62666j() {
        return this.f62666j;
    }

    @Override // com.vuitton.android.presentation.screen.placesearch.PlaceSearchViewModel
    /* JADX INFO: renamed from: dc, reason: from getter */
    public final MutableLiveData getD() {
        return this.d;
    }

    @Override // com.vuitton.android.presentation.screen.placesearch.PlaceSearchViewModel
    /* JADX INFO: renamed from: sb, reason: from getter */
    public final MutableLiveData getF62663f() {
        return this.f62663f;
    }
}

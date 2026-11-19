package com.vuitton.android.presentation.screen.placesearch;

import com.vuitton.android.domain.usecase.products.availability.GetPlaceGeocodingByPlaceIdUseCase;
import com.vuitton.android.presentation.model.location.GeocodingMapperKt;
import com.vuitton.foundation.model.domain.model.product.availability.PlaceGeocoding;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.placesearch.PlaceSearchViewModelImpl$fetchPlaceInfo$1", f = "PlaceSearchViewModelImpl.kt", l = {79}, m = "invokeSuspend", v = 2)
final class PlaceSearchViewModelImpl$fetchPlaceInfo$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f62667b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PlaceSearchViewModelImpl f62668c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PlaceSearchActivity.PlaceInfoType f62669e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlaceSearchViewModelImpl$fetchPlaceInfo$1(PlaceSearchViewModelImpl placeSearchViewModelImpl, String str, PlaceSearchActivity.PlaceInfoType placeInfoType, Continuation continuation) {
        super(2, continuation);
        this.f62668c = placeSearchViewModelImpl;
        this.d = str;
        this.f62669e = placeInfoType;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PlaceSearchViewModelImpl$fetchPlaceInfo$1(this.f62668c, this.d, this.f62669e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PlaceSearchViewModelImpl$fetchPlaceInfo$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object objA;
        Object value2;
        Object value3;
        Object value4;
        Object value5;
        PlaceSearchViewModelImpl placeSearchViewModelImpl = this.f62668c;
        MutableStateFlow mutableStateFlow = placeSearchViewModelImpl.f62665i;
        MutableStateFlow mutableStateFlow2 = placeSearchViewModelImpl.f62664h;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f62667b;
        if (i2 == 0) {
            ResultKt.b(obj);
            do {
                value = mutableStateFlow2.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow2.i(value, Boolean.TRUE));
            GetPlaceGeocodingByPlaceIdUseCase getPlaceGeocodingByPlaceIdUseCase = placeSearchViewModelImpl.f62660b;
            this.f62667b = 1;
            objA = getPlaceGeocodingByPlaceIdUseCase.a(this.d, this);
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
            PlaceGeocoding placeGeocoding = (PlaceGeocoding) objA;
            do {
                value4 = mutableStateFlow2.getValue();
                ((Boolean) value4).getClass();
            } while (!mutableStateFlow2.i(value4, Boolean.FALSE));
            do {
                value5 = mutableStateFlow.getValue();
                ((Boolean) value5).getClass();
            } while (!mutableStateFlow.i(value5, Boolean.FALSE));
            if (this.f62669e == PlaceSearchActivity.PlaceInfoType.PLACE_DETAIL) {
                placeSearchViewModelImpl.f62661c.setValue(GeocodingMapperKt.a(placeGeocoding));
            } else {
                placeSearchViewModelImpl.f62662e.setValue(GeocodingMapperKt.a(placeGeocoding));
            }
        }
        if (Result.a(objA) != null) {
            do {
                value2 = mutableStateFlow2.getValue();
                ((Boolean) value2).getClass();
            } while (!mutableStateFlow2.i(value2, Boolean.FALSE));
            do {
                value3 = mutableStateFlow.getValue();
                ((Boolean) value3).getClass();
            } while (!mutableStateFlow.i(value3, Boolean.TRUE));
        }
        return Unit.f71739a;
    }
}

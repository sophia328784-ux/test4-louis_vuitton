package com.vuitton.android.presentation.screen.placesearch;

import com.vuitton.android.domain.usecase.travel.GetPlaceAutocompleteUseCase;
import com.vuitton.foundation.model.domain.model.place.AutocompleteContext;
import defpackage.md;
import java.util.List;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.placesearch.PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1", f = "PlaceSearchViewModelImpl.kt", l = {60}, m = "invokeSuspend", v = 2)
final class PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PlaceSearchViewModelImpl f62670b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f62671c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PlaceSearchViewModelImpl f62672e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f62673f;
    public final /* synthetic */ AutocompleteContext g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1(PlaceSearchViewModelImpl placeSearchViewModelImpl, String str, AutocompleteContext autocompleteContext, Continuation continuation) {
        super(2, continuation);
        this.f62672e = placeSearchViewModelImpl;
        this.f62673f = str;
        this.g = autocompleteContext;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1 placeSearchViewModelImpl$fetchPlacesAutocomplete$1 = new PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1(this.f62672e, this.f62673f, this.g, continuation);
        placeSearchViewModelImpl$fetchPlacesAutocomplete$1.d = obj;
        return placeSearchViewModelImpl$fetchPlacesAutocomplete$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object obj2;
        PlaceSearchViewModelImpl placeSearchViewModelImpl;
        Object value2;
        Object value3;
        Object value4;
        Object value5;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f62671c;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                PlaceSearchViewModelImpl placeSearchViewModelImpl2 = this.f62672e;
                String str = this.f62673f;
                AutocompleteContext autocompleteContext = this.g;
                Result.Companion companion = Result.INSTANCE;
                MutableStateFlow mutableStateFlow = placeSearchViewModelImpl2.f62664h;
                do {
                    value = mutableStateFlow.getValue();
                    ((Boolean) value).getClass();
                } while (!mutableStateFlow.i(value, Boolean.TRUE));
                GetPlaceAutocompleteUseCase getPlaceAutocompleteUseCase = placeSearchViewModelImpl2.f62659a;
                this.d = null;
                this.f62670b = placeSearchViewModelImpl2;
                this.f62671c = 1;
                Object objA = getPlaceAutocompleteUseCase.a(str, autocompleteContext, this);
                if (objA == coroutineSingletons) {
                    return coroutineSingletons;
                }
                obj2 = objA;
                placeSearchViewModelImpl = placeSearchViewModelImpl2;
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                placeSearchViewModelImpl = this.f62670b;
                ResultKt.b(obj);
                obj2 = ((Result) obj).f71708b;
            }
            Result.Companion companion2 = Result.INSTANCE;
            if (!(obj2 instanceof Result.Failure)) {
                List list = (List) obj2;
                MutableStateFlow mutableStateFlow2 = placeSearchViewModelImpl.f62664h;
                do {
                    value4 = mutableStateFlow2.getValue();
                    ((Boolean) value4).getClass();
                } while (!mutableStateFlow2.i(value4, Boolean.FALSE));
                MutableStateFlow mutableStateFlow3 = placeSearchViewModelImpl.f62665i;
                do {
                    value5 = mutableStateFlow3.getValue();
                    ((Boolean) value5).getClass();
                } while (!mutableStateFlow3.i(value5, Boolean.FALSE));
                placeSearchViewModelImpl.g.setValue(list);
            }
            if (Result.a(obj2) != null) {
                MutableStateFlow mutableStateFlow4 = placeSearchViewModelImpl.f62664h;
                do {
                    value2 = mutableStateFlow4.getValue();
                    ((Boolean) value2).getClass();
                } while (!mutableStateFlow4.i(value2, Boolean.FALSE));
                MutableStateFlow mutableStateFlow5 = placeSearchViewModelImpl.f62665i;
                do {
                    value3 = mutableStateFlow5.getValue();
                    ((Boolean) value3).getClass();
                } while (!mutableStateFlow5.i(value3, Boolean.TRUE));
            }
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            new Result.Failure(th);
        }
        return Unit.f71739a;
    }
}

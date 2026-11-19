package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.domain.usecase.travel.GetPlaceAutocompleteUseCase;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.PlaceAutocompleteUiModel;
import com.vuitton.foundation.model.domain.model.place.AutocompleteContext;
import com.vuitton.foundation.model.domain.model.place.PlaceAutocomplete;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl$getPlaceAutoComplete$1", f = "FindInStoreViewModelImpl.kt", l = {121}, m = "invokeSuspend", v = 2)
final class FindInStoreViewModelImpl$getPlaceAutoComplete$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61022b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f61023c;
    public final /* synthetic */ FindInStoreViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FindInStoreViewModelImpl$getPlaceAutoComplete$1(String str, FindInStoreViewModelImpl findInStoreViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f61023c = str;
        this.d = findInStoreViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FindInStoreViewModelImpl$getPlaceAutoComplete$1(this.f61023c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FindInStoreViewModelImpl$getPlaceAutoComplete$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        Object value;
        FindInStoreViewModelImpl findInStoreViewModelImpl = this.d;
        MutableStateFlow mutableStateFlow = findInStoreViewModelImpl.f61020j;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61022b;
        if (i2 == 0) {
            ResultKt.b(obj);
            String str = this.f61023c;
            if (str.length() == 0) {
                do {
                    value = mutableStateFlow.getValue();
                } while (!mutableStateFlow.i(value, EmptyList.f71768b));
            } else {
                GetPlaceAutocompleteUseCase getPlaceAutocompleteUseCase = findInStoreViewModelImpl.d;
                AutocompleteContext autocompleteContext = AutocompleteContext.FIND_IN_STORE;
                this.f61022b = 1;
                objA = getPlaceAutocompleteUseCase.a(str, autocompleteContext, this);
                if (objA == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.f71739a;
        }
        if (i2 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        objA = ((Result) obj).f71708b;
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            List<PlaceAutocomplete> list = (List) objA;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            for (PlaceAutocomplete placeAutocomplete : list) {
                placeAutocomplete.getClass();
                arrayList.add(new PlaceAutocompleteUiModel(placeAutocomplete.f67817a, placeAutocomplete.f67818b, placeAutocomplete.f67819c, placeAutocomplete.d));
            }
            mutableStateFlow.setValue(arrayList);
        }
        Result.Companion companion2 = Result.INSTANCE;
        return Unit.f71739a;
    }
}

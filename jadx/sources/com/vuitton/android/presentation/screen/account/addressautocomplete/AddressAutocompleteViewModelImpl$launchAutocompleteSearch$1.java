package com.vuitton.android.presentation.screen.account.addressautocomplete;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.address.AddressBookMonitoring;
import com.vuitton.android.domain.usecase.account.address.GetAddressAutocompleteUseCase;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1", f = "AddressAutocompleteViewModelImpl.kt", l = {167}, m = "invokeSuspend", v = 2)
final class AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AddressAutocompleteViewModelImpl f52066b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f52067c;
    public final /* synthetic */ AddressAutocompleteViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f52068e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f52069f;
    public final /* synthetic */ AutocompleteContext g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1(AddressAutocompleteViewModelImpl addressAutocompleteViewModelImpl, String str, String str2, AutocompleteContext autocompleteContext, Continuation continuation) {
        super(2, continuation);
        this.d = addressAutocompleteViewModelImpl;
        this.f52068e = str;
        this.f52069f = str2;
        this.g = autocompleteContext;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1(this.d, this.f52068e, this.f52069f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        AddressAutocompleteViewModelImpl addressAutocompleteViewModelImpl;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52067c;
        if (i2 == 0) {
            ResultKt.b(obj);
            AddressAutocompleteViewModelImpl addressAutocompleteViewModelImpl2 = this.d;
            String str = (String) addressAutocompleteViewModelImpl2.f52048f.getValue();
            if (str != null) {
                GetAddressAutocompleteUseCase getAddressAutocompleteUseCase = addressAutocompleteViewModelImpl2.f52046c;
                this.f52066b = addressAutocompleteViewModelImpl2;
                this.f52067c = 1;
                Object objA = getAddressAutocompleteUseCase.a(this.f52068e, str, this.f52069f, this.g, this);
                if (objA == coroutineSingletons) {
                    return coroutineSingletons;
                }
                obj2 = objA;
                addressAutocompleteViewModelImpl = addressAutocompleteViewModelImpl2;
            }
            return Unit.f71739a;
        }
        if (i2 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        addressAutocompleteViewModelImpl = this.f52066b;
        ResultKt.b(obj);
        obj2 = ((Result) obj).f71708b;
        Result.Companion companion = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            List list = (List) obj2;
            MutableStateFlow mutableStateFlow = addressAutocompleteViewModelImpl.f52049h;
            list.getClass();
            List<PlaceAutocomplete> list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            for (PlaceAutocomplete placeAutocomplete : list2) {
                placeAutocomplete.getClass();
                arrayList.add(new PlaceAutocompleteUiModel(placeAutocomplete.f67817a, placeAutocomplete.f67818b, placeAutocomplete.f67819c, placeAutocomplete.d));
            }
            mutableStateFlow.setValue(arrayList);
        }
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            addressAutocompleteViewModelImpl.f52049h.setValue(EmptyList.f71768b);
            MonitorAction monitorAction = addressAutocompleteViewModelImpl.o;
            if (monitorAction != null) {
                monitorAction.d(new AddressBookMonitoring.Error.AddressAutocompleteError(thA));
            }
            addressAutocompleteViewModelImpl.f52044a.c("AddressAutocompleteViewModelImpl", thA.getMessage(), null);
        }
        return Unit.f71739a;
    }
}

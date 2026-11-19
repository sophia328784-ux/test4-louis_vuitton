package com.vuitton.android.presentation.screen.account.addressautocomplete;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.address.AddressBookMonitoring;
import com.vuitton.android.domain.usecase.account.address.GetAddressDetailsUseCase;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AutocompleteAddressResultUiModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AutocompleteAddressResultUiModelKt;
import com.vuitton.android.presentation.screen.account.addressautocomplete.tracking.AddressAutocompleteTrackingUiModel;
import com.vuitton.foundation.model.domain.model.account.address.AddressDetails;
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
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModelImpl$getAddressDetails$1", f = "AddressAutocompleteViewModelImpl.kt", l = {187, 194}, m = "invokeSuspend", v = 2)
final class AddressAutocompleteViewModelImpl$getAddressDetails$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AddressAutocompleteViewModelImpl f52061b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f52062c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f52063e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f52064f;
    public final /* synthetic */ AddressAutocompleteViewModelImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ String f52065h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddressAutocompleteViewModelImpl$getAddressDetails$1(AddressAutocompleteViewModelImpl addressAutocompleteViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.g = addressAutocompleteViewModelImpl;
        this.f52065h = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        AddressAutocompleteViewModelImpl$getAddressDetails$1 addressAutocompleteViewModelImpl$getAddressDetails$1 = new AddressAutocompleteViewModelImpl$getAddressDetails$1(this.g, this.f52065h, continuation);
        addressAutocompleteViewModelImpl$getAddressDetails$1.f52064f = obj;
        return addressAutocompleteViewModelImpl$getAddressDetails$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AddressAutocompleteViewModelImpl$getAddressDetails$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0096  */
    /* JADX WARN: Code duplicated, block: B:28:0x009a  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i2;
        Object objA;
        AddressAutocompleteViewModelImpl addressAutocompleteViewModelImpl;
        Object obj2;
        AddressAutocompleteViewModelImpl addressAutocompleteViewModelImpl2;
        Throwable thA;
        MonitorAction monitorAction;
        AddressAutocompleteViewModelImpl addressAutocompleteViewModelImpl3 = this.g;
        MutableStateFlow mutableStateFlow = addressAutocompleteViewModelImpl3.f52047e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.f52063e;
        if (i3 == 0) {
            ResultKt.b(obj);
            mutableStateFlow.setValue(Boolean.TRUE);
            String str = (String) addressAutocompleteViewModelImpl3.f52048f.getValue();
            if (str != null) {
                GetAddressDetailsUseCase getAddressDetailsUseCase = addressAutocompleteViewModelImpl3.d;
                this.f52064f = null;
                this.f52061b = addressAutocompleteViewModelImpl3;
                i2 = 0;
                this.d = 0;
                this.f52063e = 1;
                objA = getAddressDetailsUseCase.a(this.f52065h, str, this);
                if (objA != coroutineSingletons) {
                    addressAutocompleteViewModelImpl = addressAutocompleteViewModelImpl3;
                }
                return coroutineSingletons;
            }
            mutableStateFlow.setValue(Boolean.FALSE);
            return Unit.f71739a;
        }
        if (i3 == 1) {
            int i4 = this.d;
            addressAutocompleteViewModelImpl = this.f52061b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
            i2 = i4;
        } else {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            obj2 = this.f52062c;
            addressAutocompleteViewModelImpl2 = this.f52061b;
            ResultKt.b(obj);
        }
        addressAutocompleteViewModelImpl = addressAutocompleteViewModelImpl2;
        thA = Result.a(obj2);
        if (thA != null) {
            monitorAction = addressAutocompleteViewModelImpl.o;
            if (monitorAction != null) {
                monitorAction.d(new AddressBookMonitoring.Error.AddressAutocompleteError(thA));
            }
            addressAutocompleteViewModelImpl.f52044a.c("AddressAutocompleteViewModelImpl", thA.getMessage(), null);
        }
        addressAutocompleteViewModelImpl.f52047e.setValue(Boolean.FALSE);
        return Unit.f71739a;
        obj2 = objA;
        Result.Companion companion = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            addressAutocompleteViewModelImpl.N1(new AddressAutocompleteTrackingUiModel.AutocompleteSucceededEvent(((String) addressAutocompleteViewModelImpl.g.getValue()).length()));
            BufferedChannel bufferedChannel = addressAutocompleteViewModelImpl.f52052k;
            AutocompleteAddressResultUiModel autocompleteAddressResultUiModelA = AutocompleteAddressResultUiModelKt.a((AddressDetails) obj2);
            this.f52064f = null;
            this.f52061b = addressAutocompleteViewModelImpl;
            this.f52062c = obj2;
            this.d = i2;
            this.f52063e = 2;
            if (bufferedChannel.u(autocompleteAddressResultUiModelA, this) != coroutineSingletons) {
                addressAutocompleteViewModelImpl2 = addressAutocompleteViewModelImpl;
                addressAutocompleteViewModelImpl = addressAutocompleteViewModelImpl2;
            }
            return coroutineSingletons;
        }
        thA = Result.a(obj2);
        if (thA != null) {
            monitorAction = addressAutocompleteViewModelImpl.o;
            if (monitorAction != null) {
                monitorAction.d(new AddressBookMonitoring.Error.AddressAutocompleteError(thA));
            }
            addressAutocompleteViewModelImpl.f52044a.c("AddressAutocompleteViewModelImpl", thA.getMessage(), null);
        }
        addressAutocompleteViewModelImpl.f52047e.setValue(Boolean.FALSE);
        return Unit.f71739a;
    }
}

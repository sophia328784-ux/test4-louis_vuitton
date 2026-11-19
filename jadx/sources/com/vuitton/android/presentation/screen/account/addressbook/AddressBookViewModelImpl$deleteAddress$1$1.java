package com.vuitton.android.presentation.screen.account.addressbook;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.address.AddressBookMonitoring;
import com.vuitton.android.domain.usecase.account.address.DeleteAddressUseCase;
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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.addressbook.AddressBookViewModelImpl$deleteAddress$1$1", f = "AddressBookViewModelImpl.kt", l = {117}, m = "invokeSuspend", v = 2)
final class AddressBookViewModelImpl$deleteAddress$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52151b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddressBookViewModelImpl f52152c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MonitorAction f52153e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddressBookViewModelImpl$deleteAddress$1$1(AddressBookViewModelImpl addressBookViewModelImpl, String str, MonitorAction monitorAction, Continuation continuation) {
        super(2, continuation);
        this.f52152c = addressBookViewModelImpl;
        this.d = str;
        this.f52153e = monitorAction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AddressBookViewModelImpl$deleteAddress$1$1(this.f52152c, this.d, this.f52153e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AddressBookViewModelImpl$deleteAddress$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object objA;
        Object value2;
        AddressBookViewModelImpl addressBookViewModelImpl = this.f52152c;
        MutableStateFlow mutableStateFlow = addressBookViewModelImpl.f52148i;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52151b;
        if (i2 == 0) {
            ResultKt.b(obj);
            do {
                value = mutableStateFlow.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow.i(value, Boolean.TRUE));
            DeleteAddressUseCase deleteAddressUseCase = addressBookViewModelImpl.f52145e;
            String str = this.d;
            str.getClass();
            this.f52151b = 1;
            objA = deleteAddressUseCase.a(str, this);
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
            BuildersKt.c(ViewModelKt.a(addressBookViewModelImpl), null, null, new AddressBookViewModelImpl$getAccountDetails$1(null, addressBookViewModelImpl), 3);
        }
        Throwable thA = Result.a(objA);
        MonitorAction monitorAction = this.f52153e;
        if (thA != null) {
            addressBookViewModelImpl.f52143b.c("AddressBookViewModelImpl", "Unable to delete address", thA);
            monitorAction.d(new AddressBookMonitoring.Error.DeleteAddressError(thA));
            do {
                value2 = mutableStateFlow.getValue();
                ((Boolean) value2).getClass();
            } while (!mutableStateFlow.i(value2, Boolean.FALSE));
        }
        monitorAction.b();
        return Unit.f71739a;
    }
}

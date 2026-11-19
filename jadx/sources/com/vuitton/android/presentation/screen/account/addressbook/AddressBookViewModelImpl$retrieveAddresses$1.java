package com.vuitton.android.presentation.screen.account.addressbook;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.address.AddressBookMonitoring;
import com.vuitton.android.domain.usecase.account.address.GetAddressListUseCase;
import com.vuitton.android.presentation.screen.account.addressbook.mappers.AddressMapperKt;
import com.vuitton.android.presentation.screen.account.addressbook.models.AccountAddressUiModel;
import com.vuitton.foundation.model.domain.model.profile.Address;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.addressbook.AddressBookViewModelImpl$retrieveAddresses$1", f = "AddressBookViewModelImpl.kt", l = {EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID}, m = "invokeSuspend", v = 2)
final class AddressBookViewModelImpl$retrieveAddresses$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52156b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddressBookViewModelImpl f52157c;
    public final /* synthetic */ MonitorAction d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddressBookViewModelImpl$retrieveAddresses$1(AddressBookViewModelImpl addressBookViewModelImpl, MonitorAction monitorAction, Continuation continuation) {
        super(2, continuation);
        this.f52157c = addressBookViewModelImpl;
        this.d = monitorAction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AddressBookViewModelImpl$retrieveAddresses$1(this.f52157c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AddressBookViewModelImpl$retrieveAddresses$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object objA;
        Object value2;
        Object next;
        Object value3;
        AddressBookViewModelImpl addressBookViewModelImpl = this.f52157c;
        MutableStateFlow mutableStateFlow = addressBookViewModelImpl.f52148i;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52156b;
        if (i2 == 0) {
            ResultKt.b(obj);
            do {
                value = mutableStateFlow.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow.i(value, Boolean.TRUE));
            GetAddressListUseCase getAddressListUseCase = addressBookViewModelImpl.d;
            this.f52156b = 1;
            objA = getAddressListUseCase.a(this);
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
        boolean z = objA instanceof Result.Failure;
        MonitorAction monitorAction = this.d;
        if (!z) {
            MutableStateFlow mutableStateFlow2 = addressBookViewModelImpl.f52150k;
            MutableStateFlow mutableStateFlow3 = addressBookViewModelImpl.l;
            List list = (List) objA;
            Iterator it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!((Address) next).f68152b);
            Address address = (Address) next;
            mutableStateFlow2.setValue(address != null ? AddressMapperKt.a(address) : null);
            monitorAction.c(String.valueOf(mutableStateFlow2.getValue() != null), "hasEnteredMainAddress");
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(AddressMapperKt.a((Address) it2.next()));
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : arrayList) {
                AccountAddressUiModel accountAddressUiModel = (AccountAddressUiModel) obj2;
                if (!accountAddressUiModel.f52185b || accountAddressUiModel.f52184a.length() <= 0) {
                    arrayList2.add(obj2);
                }
            }
            ArrayList arrayList3 = new ArrayList();
            for (Object obj3 : arrayList2) {
                if (((AccountAddressUiModel) obj3).n.length() > 0) {
                    arrayList3.add(obj3);
                }
            }
            mutableStateFlow3.setValue(arrayList3);
            MutableStateFlow mutableStateFlow4 = addressBookViewModelImpl.f52149j;
            do {
                value3 = mutableStateFlow4.getValue();
                ((Boolean) value3).getClass();
            } while (!mutableStateFlow4.i(value3, Boolean.valueOf(mutableStateFlow2.getValue() == null && ((List) mutableStateFlow3.getValue()).isEmpty())));
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            addressBookViewModelImpl.f52143b.c("AddressBookViewModelImpl", "Unable To retrieve account addresses", thA);
            monitorAction.d(new AddressBookMonitoring.Error.OpenAddressBookError(thA));
        }
        monitorAction.b();
        do {
            value2 = mutableStateFlow.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow.i(value2, Boolean.FALSE));
        return Unit.f71739a;
    }
}

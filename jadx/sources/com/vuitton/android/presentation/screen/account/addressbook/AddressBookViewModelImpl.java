package com.vuitton.android.presentation.screen.account.addressbook;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.address.AddressBookMonitoring;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.account.address.DeleteAddressUseCase;
import com.vuitton.android.domain.usecase.account.address.GetAddressListUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.presentation.screen.account.addressbook.models.AccountAddressUiModel;
import com.vuitton.android.presentation.screen.account.addressbook.models.AddressBookTrackingUiModel;
import com.vuitton.android.presentation.screen.account.addressbook.models.AddressBookViewState;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.md;
import defpackage.v40;
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
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002BA\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModel;", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/account/address/GetAddressListUseCase;", "getAddressListUseCase", "Lcom/vuitton/android/domain/usecase/account/address/DeleteAddressUseCase;", "deleteAddressUseCase", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "<init>", "(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/account/address/GetAddressListUseCase;Lcom/vuitton/android/domain/usecase/account/address/DeleteAddressUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AddressBookViewModelImpl extends ViewModel implements AddressBookViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Monitor f52142a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f52143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnalyticsTracker f52144c;
    public final GetAddressListUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final DeleteAddressUseCase f52145e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GetProfileUseCase f52146f;
    public final InAppDispatch g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f52147h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableStateFlow f52148i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableStateFlow f52149j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableStateFlow f52150k;
    public final MutableStateFlow l;
    public final StateFlow m;

    @Inject
    public AddressBookViewModelImpl(Monitor monitor, Logger logger, AnalyticsTracker analyticsTracker, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, GetAddressListUseCase getAddressListUseCase, DeleteAddressUseCase deleteAddressUseCase, GetProfileUseCase getProfileUseCase) {
        monitor.getClass();
        logger.getClass();
        analyticsTracker.getClass();
        requireUserInAppDispatchUseCase.getClass();
        getAddressListUseCase.getClass();
        deleteAddressUseCase.getClass();
        getProfileUseCase.getClass();
        this.f52142a = monitor;
        this.f52143b = logger;
        this.f52144c = analyticsTracker;
        this.d = getAddressListUseCase;
        this.f52145e = deleteAddressUseCase;
        this.f52146f = getProfileUseCase;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.g = inAppDispatchB;
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.f52148i = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.f52149j = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(null);
        this.f52150k = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(EmptyList.f71768b);
        this.l = mutableStateFlowA4;
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4};
        Flow<AddressBookViewState> flow = new Flow<AddressBookViewState>() { // from class: com.vuitton.android.presentation.screen.account.addressbook.AddressBookViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.account.addressbook.AddressBookViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.account.addressbook.AddressBookViewModelImpl$special$$inlined$combine$1$3", f = "AddressBookViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super AddressBookViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f52161b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f52162c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ AddressBookViewModelImpl f52163e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, AddressBookViewModelImpl addressBookViewModelImpl) {
                    super(3, continuation);
                    this.f52163e = addressBookViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f52163e);
                    anonymousClass3.f52162c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f52162c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f52161b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        InAppDispatch inAppDispatch = this.f52163e.g;
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj3).booleanValue();
                        AccountAddressUiModel accountAddressUiModel = (AccountAddressUiModel) objArr[2];
                        Object obj4 = objArr[3];
                        obj4.getClass();
                        AddressBookViewState addressBookViewState = new AddressBookViewState(inAppDispatch, zBooleanValue, zBooleanValue2, accountAddressUiModel, (List) obj4);
                        this.f52162c = null;
                        this.d = null;
                        this.f52161b = 1;
                        if (flowCollector.emit(addressBookViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.account.addressbook.AddressBookViewModelImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null, this), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.m = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new AddressBookViewState(inAppDispatchB, false, false, null, null, 30, null));
        h8();
    }

    @Override // com.vuitton.android.presentation.screen.account.addressbook.AddressBookViewModel
    public final void B3(String str) {
        str.getClass();
        this.f52147h = str;
    }

    @Override // com.vuitton.android.presentation.screen.account.addressbook.AddressBookViewModel
    public final void Z4(AddressBookTrackingUiModel addressBookTrackingUiModel) {
        Hit defaultEventHit;
        if (addressBookTrackingUiModel.equals(AddressBookTrackingUiModel.AddressBookScreen.f52194a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/MyLV/Dashboard/MyAddressBook", "mylv/my_address_book", "mylv", null, 17, null);
        } else if (addressBookTrackingUiModel.equals(AddressBookTrackingUiModel.AddAddressEvent.f52193a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/MyAddressBook", "add_address", "MyLV", "my_address_book", null, null, 97, null);
        } else {
            if (!addressBookTrackingUiModel.equals(AddressBookTrackingUiModel.EditAddressEvent.f52195a)) {
                v40.g();
                return;
            }
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/MyAddressBook", "edit_address", "MyLV", "my_address_book", null, null, 97, null);
        }
        this.f52144c.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.screen.account.addressbook.AddressBookViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getM() {
        return this.m;
    }

    @Override // com.vuitton.android.presentation.screen.account.addressbook.AddressBookViewModel
    public final void h8() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new AddressBookViewModelImpl$retrieveAddresses$1(this, this.f52142a.a(this.g, AddressBookMonitoring.Action.OpenAddressBook.f48811a), null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.account.addressbook.AddressBookViewModel
    public final void x0() {
        String str = this.f52147h;
        if (str != null) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new AddressBookViewModelImpl$deleteAddress$1$1(this, str, this.f52142a.a(this.g, AddressBookMonitoring.Action.DeleteAddress.f48809a), null), 3);
        }
    }
}

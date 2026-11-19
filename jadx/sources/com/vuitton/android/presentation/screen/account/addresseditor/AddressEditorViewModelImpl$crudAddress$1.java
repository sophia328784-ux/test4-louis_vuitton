package com.vuitton.android.presentation.screen.account.addresseditor;

import com.vuitton.android.R;
import com.vuitton.android.data.account.address.model.mapper.AddressHttpErrorMapper;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.address.AddressBookMonitoring;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationDuration;
import com.vuitton.android.presentation.screen.account.addresseditor.error.AddressErrorMessageMapper;
import com.vuitton.android.presentation.screen.account.addresseditor.models.AddressEditorNavigation;
import com.vuitton.foundation.exception.NetworkException;
import com.vuitton.foundation.model.domain.model.common.ResultStrategy;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$crudAddress$1", f = "AddressEditorViewModelImpl.kt", l = {468, 469, 469}, m = "invokeSuspend", v = 2)
final class AddressEditorViewModelImpl$crudAddress$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f52224b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MonitorAction f52225c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f52226e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f52227f;
    public final /* synthetic */ AddressEditorViewModelImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ AddressBookMonitoring.Action f52228h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function1 f52229i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ String f52230j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ String f52231k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddressEditorViewModelImpl$crudAddress$1(AddressEditorViewModelImpl addressEditorViewModelImpl, AddressBookMonitoring.Action action, Function1 function1, String str, String str2, Continuation continuation) {
        super(2, continuation);
        this.g = addressEditorViewModelImpl;
        this.f52228h = action;
        this.f52229i = function1;
        this.f52230j = str;
        this.f52231k = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AddressEditorViewModelImpl$crudAddress$1(this.g, this.f52228h, this.f52229i, this.f52230j, this.f52231k, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AddressEditorViewModelImpl$crudAddress$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:33:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:36:0x00de  */
    /* JADX WARN: Code duplicated, block: B:38:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:39:0x010c  */
    /* JADX WARN: Code duplicated, block: B:41:0x0113  */
    /* JADX WARN: Code duplicated, block: B:43:0x011b  */
    /* JADX WARN: Code duplicated, block: B:45:0x011f  */
    /* JADX WARN: Code duplicated, block: B:47:0x0132  */
    /* JADX WARN: Code duplicated, block: B:49:0x013a  */
    /* JADX WARN: Code duplicated, block: B:50:0x0140  */
    /* JADX WARN: Code duplicated, block: B:52:0x0146  */
    /* JADX WARN: Code duplicated, block: B:54:0x014c  */
    /* JADX WARN: Code duplicated, block: B:70:0x0172  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object objInvoke;
        MonitorAction monitorAction;
        MonitorAction monitorAction2;
        Object failure;
        int i2;
        Object objA;
        int i3;
        MonitorAction monitorAction3;
        MonitorAction monitorAction4;
        Throwable thA;
        Object value2;
        NetworkException networkException;
        StringResourceUiModel resId;
        Object obj2;
        AddressEditorViewModelImpl addressEditorViewModelImpl = this.g;
        BufferedChannel bufferedChannel = addressEditorViewModelImpl.x;
        MutableStateFlow mutableStateFlow = addressEditorViewModelImpl.z;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = this.f52227f;
        if (i4 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = addressEditorViewModelImpl.f52215c.a(addressEditorViewModelImpl.t, this.f52228h);
            MonitorAction monitorActionP5 = addressEditorViewModelImpl.p5();
            do {
                value = mutableStateFlow.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow.i(value, Boolean.TRUE));
            this.f52224b = dynatraceMonitorActionA;
            this.f52225c = monitorActionP5;
            this.f52227f = 1;
            objInvoke = this.f52229i.invoke(this);
            if (objInvoke != coroutineSingletons) {
                monitorAction = dynatraceMonitorActionA;
                monitorAction2 = monitorActionP5;
            }
            return coroutineSingletons;
        }
        if (i4 == 1) {
            monitorAction2 = this.f52225c;
            MonitorAction monitorAction5 = this.f52224b;
            ResultKt.b(obj);
            monitorAction = monitorAction5;
            objInvoke = obj;
        } else {
            if (i4 == 2) {
                int i5 = this.f52226e;
                int i6 = this.d;
                MonitorAction monitorAction6 = this.f52225c;
                MonitorAction monitorAction7 = this.f52224b;
                ResultKt.b(obj);
                i2 = i5;
                monitorAction2 = monitorAction6;
                monitorAction = monitorAction7;
                i3 = i6;
                objA = obj;
                this.f52224b = monitorAction;
                this.f52225c = monitorAction2;
                this.d = i3;
                this.f52226e = i2;
                this.f52227f = 3;
                failure = ((ResultStrategy) objA).c(this);
                if (failure != coroutineSingletons) {
                    monitorAction3 = monitorAction2;
                    monitorAction4 = monitorAction;
                }
                return coroutineSingletons;
            }
            if (i4 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction3 = this.f52225c;
            monitorAction4 = this.f52224b;
            ResultKt.b(obj);
            failure = ((Result) obj).f71708b;
        }
        monitorAction = monitorAction4;
        monitorAction2 = monitorAction3;
        Result.Companion companion = Result.INSTANCE;
        if (!(failure instanceof Result.Failure)) {
            monitorAction2.c(this.f52230j, "addressFormExitContext");
            addressEditorViewModelImpl.v.b(AddressEditorNavigation.ToAddressBookAfterEdition.f52268a);
        }
        thA = Result.a(failure);
        if (thA != null) {
            monitorAction2.d(new AddressBookMonitoring.Error.OpenAddEditAddressError(thA));
            addressEditorViewModelImpl.f52214b.d("AddressEditorViewModelImpl", this.f52231k, thA);
            if (thA instanceof NetworkException) {
                networkException = (NetworkException) thA;
                if (networkException instanceof NetworkException.CustomException) {
                    obj2 = ((NetworkException.CustomException) thA).f66204b;
                    if (obj2 instanceof AddressHttpErrorMapper.ApiAddressError) {
                        md.n("Failed requirement.");
                        return null;
                    }
                    if (obj2 instanceof AddressHttpErrorMapper.ApiAddressError.ErrorMessage) {
                        AddressErrorMessageMapper addressErrorMessageMapper = addressEditorViewModelImpl.d;
                        AddressHttpErrorMapper.ApiAddressError.ErrorMessage errorMessage = (AddressHttpErrorMapper.ApiAddressError.ErrorMessage) obj2;
                        String str = errorMessage.f43537a;
                        String str2 = errorMessage.f43539c;
                        String str3 = errorMessage.f43538b;
                        addressErrorMessageMapper.getClass();
                        resId = AddressErrorMessageMapper.a(str, str2, str3);
                    } else {
                        if (obj2.equals(AddressHttpErrorMapper.ApiAddressError.NoErrorMessage.f43540a)) {
                            md.k("Unknown error type");
                            return null;
                        }
                        resId = new StringResourceUiModel.ResId(R.string.p12_errormessage_erroroccuredgeneric, null, 2, null);
                    }
                } else if (!(networkException instanceof NetworkException.InMaintenance) || (networkException instanceof NetworkException.NoNetwork) || (networkException instanceof NetworkException.NotFound) || (networkException instanceof NetworkException.TooManyRequest) || (networkException instanceof NetworkException.Unknown)) {
                    resId = new StringResourceUiModel.ResId(R.string.dispatch_country_no_internet_message, null, 2, null);
                } else {
                    if (!(networkException instanceof NetworkException.Unauthorized)) {
                        v40.g();
                        return null;
                    }
                    resId = new StringResourceUiModel.ResId(R.string.not_logged_subtitle, null, 2, null);
                }
                bufferedChannel.b(NotificationBuilder.a(addressEditorViewModelImpl.q, resId, false, NotificationDuration.LONG, null, 56));
            } else {
                bufferedChannel.b(NotificationBuilder.a(addressEditorViewModelImpl.q, new StringResourceUiModel.ResId(R.string.p12_errormessage_erroroccuredgeneric, null, 2, null), false, NotificationDuration.LONG, null, 56));
            }
        }
        monitorAction2.b();
        monitorAction.b();
        do {
            value2 = mutableStateFlow.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow.i(value2, Boolean.FALSE));
        return Unit.f71739a;
        Object obj3 = ((Result) objInvoke).f71708b;
        Throwable thA2 = Result.a(obj3);
        if (thA2 == null) {
            ResultKt.b(obj3);
            GetProfileUseCase getProfileUseCase = addressEditorViewModelImpl.f52217f;
            this.f52224b = monitorAction;
            this.f52225c = monitorAction2;
            i2 = 0;
            this.d = 0;
            this.f52226e = 0;
            this.f52227f = 2;
            objA = getProfileUseCase.a(this);
            if (objA != coroutineSingletons) {
                i3 = 0;
                this.f52224b = monitorAction;
                this.f52225c = monitorAction2;
                this.d = i3;
                this.f52226e = i2;
                this.f52227f = 3;
                failure = ((ResultStrategy) objA).c(this);
                if (failure != coroutineSingletons) {
                    monitorAction3 = monitorAction2;
                    monitorAction4 = monitorAction;
                    monitorAction = monitorAction4;
                    monitorAction2 = monitorAction3;
                }
            }
            return coroutineSingletons;
        }
        failure = new Result.Failure(thA2);
        Result.Companion companion2 = Result.INSTANCE;
        if (!(failure instanceof Result.Failure)) {
            monitorAction2.c(this.f52230j, "addressFormExitContext");
            addressEditorViewModelImpl.v.b(AddressEditorNavigation.ToAddressBookAfterEdition.f52268a);
        }
        thA = Result.a(failure);
        if (thA != null) {
            monitorAction2.d(new AddressBookMonitoring.Error.OpenAddEditAddressError(thA));
            addressEditorViewModelImpl.f52214b.d("AddressEditorViewModelImpl", this.f52231k, thA);
            if (thA instanceof NetworkException) {
                bufferedChannel.b(NotificationBuilder.a(addressEditorViewModelImpl.q, new StringResourceUiModel.ResId(R.string.p12_errormessage_erroroccuredgeneric, null, 2, null), false, NotificationDuration.LONG, null, 56));
            } else {
                networkException = (NetworkException) thA;
                if (networkException instanceof NetworkException.CustomException) {
                    obj2 = ((NetworkException.CustomException) thA).f66204b;
                    if (obj2 instanceof AddressHttpErrorMapper.ApiAddressError) {
                        md.n("Failed requirement.");
                        return null;
                    }
                    if (obj2 instanceof AddressHttpErrorMapper.ApiAddressError.ErrorMessage) {
                        AddressErrorMessageMapper addressErrorMessageMapper2 = addressEditorViewModelImpl.d;
                        AddressHttpErrorMapper.ApiAddressError.ErrorMessage errorMessage2 = (AddressHttpErrorMapper.ApiAddressError.ErrorMessage) obj2;
                        String str4 = errorMessage2.f43537a;
                        String str5 = errorMessage2.f43539c;
                        String str6 = errorMessage2.f43538b;
                        addressErrorMessageMapper2.getClass();
                        resId = AddressErrorMessageMapper.a(str4, str5, str6);
                    } else {
                        if (obj2.equals(AddressHttpErrorMapper.ApiAddressError.NoErrorMessage.f43540a)) {
                            md.k("Unknown error type");
                            return null;
                        }
                        resId = new StringResourceUiModel.ResId(R.string.p12_errormessage_erroroccuredgeneric, null, 2, null);
                    }
                } else if (networkException instanceof NetworkException.InMaintenance) {
                    resId = new StringResourceUiModel.ResId(R.string.dispatch_country_no_internet_message, null, 2, null);
                } else {
                    resId = new StringResourceUiModel.ResId(R.string.dispatch_country_no_internet_message, null, 2, null);
                }
                bufferedChannel.b(NotificationBuilder.a(addressEditorViewModelImpl.q, resId, false, NotificationDuration.LONG, null, 56));
            }
        }
        monitorAction2.b();
        monitorAction.b();
        do {
            value2 = mutableStateFlow.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow.i(value2, Boolean.FALSE));
        return Unit.f71739a;
    }
}

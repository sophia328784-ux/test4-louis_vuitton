package com.vuitton.android.presentation.screen.distantrepairs.form;

import android.app.Application;
import com.vuitton.android.R;
import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.careservices.CareServicesMonitoring;
import com.vuitton.android.domain.usecase.careservices.CreateCareServiceBffUseCase;
import com.vuitton.android.presentation.helper.PhotoEncodingHelper;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethodKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.FormState;
import com.vuitton.android.presentation.screen.distantrepairs.models.FormStateUIModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step1StateUIModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step2StateUIModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step3StateUIModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModelKt;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.repairs.models.DistantRepairsConfigUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.android.presentation.tracking.ServiceRepairActions;
import com.vuitton.foundation.model.domain.model.account.PhoneNumber;
import com.vuitton.foundation.model.domain.model.account.PhoneNumberType;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAppointment;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceContactMethod;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceCreationParam;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
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
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl$sendRepairData$3", f = "DistantRepairFormBffViewModelImpl.kt", l = {665, 675, 676, 684}, m = "invokeSuspend", v = 2)
final class DistantRepairFormBffViewModelImpl$sendRepairData$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f57129b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f57130c;
    public DistantRepairFormBffViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Throwable f57131e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f57132f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ DistantRepairFormBffViewModelImpl f57133h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairFormBffViewModelImpl$sendRepairData$3(Continuation continuation, DistantRepairFormBffViewModelImpl distantRepairFormBffViewModelImpl) {
        super(2, continuation);
        this.f57133h = distantRepairFormBffViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DistantRepairFormBffViewModelImpl$sendRepairData$3(continuation, this.f57133h);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DistantRepairFormBffViewModelImpl$sendRepairData$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x023b  */
    /* JADX WARN: Code duplicated, block: B:104:0x026e  */
    /* JADX WARN: Code duplicated, block: B:107:0x0273  */
    /* JADX WARN: Code duplicated, block: B:94:0x0210  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        PhoneNumber phoneNumber;
        CareServiceCreationParam careServiceCreationParam;
        Object objA;
        MonitorAction monitorAction;
        CareServiceContactMethod careServiceContactMethod;
        PhoneNumberType phoneNumberType;
        Object value;
        DistantRepairFormBffViewModelImpl distantRepairFormBffViewModelImpl;
        MonitorAction monitorAction2;
        int i2;
        LVEventSender lVEventSender;
        Object obj2;
        MonitorAction monitorAction3;
        Throwable thA;
        Object objU;
        DistantRepairFormBffViewModelImpl distantRepairFormBffViewModelImpl2;
        MonitorAction monitorAction4;
        MutableStateFlow mutableStateFlow;
        Object value2;
        MutableStateFlow mutableStateFlow2;
        Object value3;
        MutableStateFlow mutableStateFlow3;
        Object value4;
        DistantRepairFormBffViewModelImpl distantRepairFormBffViewModelImpl3 = this.f57133h;
        MutableStateFlow mutableStateFlow4 = distantRepairFormBffViewModelImpl3.w;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.g;
        if (i3 == 0) {
            ResultKt.b(obj);
            Application application = distantRepairFormBffViewModelImpl3.f13405a;
            application.getClass();
            MutableStateFlow mutableStateFlow5 = distantRepairFormBffViewModelImpl3.y;
            MutableStateFlow mutableStateFlow6 = distantRepairFormBffViewModelImpl3.x;
            TimeSlotUiModel timeSlotUiModel = ((Step1StateUIModel) mutableStateFlow4.getValue()).f57402b;
            CareServiceAppointment careServiceAppointment = timeSlotUiModel != null ? new CareServiceAppointment(timeSlotUiModel.f57418e, timeSlotUiModel.f57416b, timeSlotUiModel.d) : null;
            FormUiModel formUiModel = (FormUiModel) distantRepairFormBffViewModelImpl3.f57103i.getF57468c().getValue();
            FormSectionTypeUiModel formSectionTypeUiModel = FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY1;
            String strG = FormUiModel.g(formUiModel, formSectionTypeUiModel, null, false, 2);
            String strG2 = FormUiModel.g(formUiModel, formSectionTypeUiModel, null, true, 2);
            String strE = formUiModel.e(FormSectionTypeUiModel.PHONE_NUMBER1, true);
            if (StringsKt.w(strE)) {
                strE = null;
            }
            PhoneNumber phoneNumber2 = (strG == null || strG2 == null || strE == null) ? null : new PhoneNumber(strE, PhoneNumberType.MOBILE, strG2);
            if (phoneNumber2 != null) {
                phoneNumber = phoneNumber2;
            } else {
                com.vuitton.android.presentation.screen.distantrepairs.models.PhoneNumber phoneNumber3 = ((Step2StateUIModel) mutableStateFlow6.getValue()).f57405b;
                if (phoneNumber3 != null) {
                    String str = phoneNumber3.f57394c;
                    int i4 = DistantRepairFormBffViewModelImpl.WhenMappings.f57110c[phoneNumber3.d.ordinal()];
                    if (i4 == 1) {
                        phoneNumberType = PhoneNumberType.MOBILE;
                    } else if (i4 == 2) {
                        phoneNumberType = PhoneNumberType.HOME;
                    } else {
                        if (i4 != 3) {
                            v40.g();
                            return null;
                        }
                        phoneNumberType = PhoneNumberType.WORK;
                    }
                    phoneNumber2 = new PhoneNumber(str, phoneNumberType, phoneNumber3.f57393b);
                    phoneNumber = phoneNumber2;
                } else {
                    phoneNumber = null;
                }
            }
            if (phoneNumber != null) {
                Profile profile = ((Step2StateUIModel) mutableStateFlow6.getValue()).f57404a;
                String str2 = profile != null ? profile.g : null;
                String str3 = str2 == null ? "" : str2;
                String str4 = ((Step3StateUIModel) mutableStateFlow5.getValue()).f57411c;
                PhotoEncodingHelper photoEncodingHelper = distantRepairFormBffViewModelImpl3.g;
                List list = ((Step3StateUIModel) mutableStateFlow5.getValue()).f57410b;
                photoEncodingHelper.getClass();
                ArrayList arrayListA = PhotoEncodingHelper.a(application, list);
                String str5 = ((Step2StateUIModel) mutableStateFlow6.getValue()).f57406c;
                String str6 = str5 == null ? "" : str5;
                DistantRepairContactMethod distantRepairContactMethod = ((Step1StateUIModel) mutableStateFlow4.getValue()).f57401a;
                int i5 = distantRepairContactMethod == null ? -1 : DistantRepairContactMethodKt.WhenMappings.f57337a[distantRepairContactMethod.ordinal()];
                if (i5 != 1) {
                    careServiceContactMethod = i5 != 2 ? CareServiceContactMethod.EMAIL : CareServiceContactMethod.PHONE_CALL;
                } else {
                    careServiceContactMethod = CareServiceContactMethod.VIDEO_CALL;
                }
                careServiceCreationParam = new CareServiceCreationParam(careServiceAppointment, phoneNumber, str3, str4, careServiceContactMethod, arrayListA, str6);
            } else {
                careServiceCreationParam = null;
            }
            if (careServiceCreationParam != null) {
                DynatraceMonitorAction dynatraceMonitorActionA = distantRepairFormBffViewModelImpl3.f57099c.a(distantRepairFormBffViewModelImpl3.t, CareServicesMonitoring.Action.BookRepair.f48863a);
                DistantRepairContactMethod distantRepairContactMethod2 = ((Step1StateUIModel) mutableStateFlow4.getValue()).f57401a;
                String value5 = distantRepairContactMethod2 != null ? distantRepairContactMethod2.getValue() : null;
                dynatraceMonitorActionA.c(value5 != null ? value5 : "", "repairType");
                CreateCareServiceBffUseCase createCareServiceBffUseCase = distantRepairFormBffViewModelImpl3.q;
                this.f57129b = dynatraceMonitorActionA;
                this.g = 1;
                objA = createCareServiceBffUseCase.a(careServiceCreationParam, this);
                if (objA != coroutineSingletons) {
                    monitorAction = dynatraceMonitorActionA;
                }
                return coroutineSingletons;
            }
            return Unit.f71739a;
        }
        if (i3 == 1) {
            monitorAction = this.f57129b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        } else {
            if (i3 == 2) {
                int i6 = this.f57132f;
                DistantRepairFormBffViewModelImpl distantRepairFormBffViewModelImpl4 = this.d;
                objA = this.f57130c;
                monitorAction2 = this.f57129b;
                ResultKt.b(obj);
                i2 = i6;
                distantRepairFormBffViewModelImpl = distantRepairFormBffViewModelImpl4;
                lVEventSender = distantRepairFormBffViewModelImpl.d;
                this.f57129b = monitorAction2;
                this.f57130c = objA;
                this.d = distantRepairFormBffViewModelImpl;
                this.f57131e = null;
                this.f57132f = i2;
                this.g = 3;
                if (lVEventSender.a(AppEvent.RefreshRepairsEvent.f43505a, this) != coroutineSingletons) {
                    obj2 = objA;
                    monitorAction3 = monitorAction2;
                    distantRepairFormBffViewModelImpl.f57105k.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.RepairCreationConfirmationScreen.f57442a));
                    mutableStateFlow = distantRepairFormBffViewModelImpl.v;
                    do {
                        value2 = mutableStateFlow.getValue();
                    } while (!mutableStateFlow.i(value2, FormStateUIModel.b((FormStateUIModel) value2, null, FormState.CONFIRMED, 7)));
                    objA = obj2;
                    monitorAction = monitorAction3;
                    thA = Result.a(objA);
                    if (thA != null) {
                        monitorAction.d(new CareServicesMonitoring.Error.BookRepairError(thA));
                        this.f57129b = monitorAction;
                        this.f57130c = objA;
                        this.d = distantRepairFormBffViewModelImpl3;
                        this.f57131e = thA;
                        this.f57132f = 0;
                        this.g = 4;
                        objU = distantRepairFormBffViewModelImpl3.E.u(NotificationBuilder.a(distantRepairFormBffViewModelImpl3.f57101f, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60), this);
                        if (objU != CoroutineSingletons.COROUTINE_SUSPENDED) {
                            objU = Unit.f71739a;
                        }
                        if (objU != coroutineSingletons) {
                            distantRepairFormBffViewModelImpl2 = distantRepairFormBffViewModelImpl3;
                            monitorAction4 = monitorAction;
                        }
                    }
                    mutableStateFlow2 = distantRepairFormBffViewModelImpl3.u;
                    do {
                        value3 = mutableStateFlow2.getValue();
                        ((Boolean) value3).getClass();
                    } while (!mutableStateFlow2.i(value3, Boolean.FALSE));
                    monitorAction.b();
                    return Unit.f71739a;
                }
                return coroutineSingletons;
            }
            if (i3 == 3) {
                distantRepairFormBffViewModelImpl = this.d;
                Object obj3 = this.f57130c;
                MonitorAction monitorAction5 = this.f57129b;
                ResultKt.b(obj);
                obj2 = obj3;
                monitorAction3 = monitorAction5;
                distantRepairFormBffViewModelImpl.f57105k.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.RepairCreationConfirmationScreen.f57442a));
                mutableStateFlow = distantRepairFormBffViewModelImpl.v;
                do {
                    value2 = mutableStateFlow.getValue();
                } while (!mutableStateFlow.i(value2, FormStateUIModel.b((FormStateUIModel) value2, null, FormState.CONFIRMED, 7)));
                objA = obj2;
                monitorAction = monitorAction3;
                thA = Result.a(objA);
                if (thA != null) {
                    monitorAction.d(new CareServicesMonitoring.Error.BookRepairError(thA));
                    this.f57129b = monitorAction;
                    this.f57130c = objA;
                    this.d = distantRepairFormBffViewModelImpl3;
                    this.f57131e = thA;
                    this.f57132f = 0;
                    this.g = 4;
                    objU = distantRepairFormBffViewModelImpl3.E.u(NotificationBuilder.a(distantRepairFormBffViewModelImpl3.f57101f, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60), this);
                    if (objU != CoroutineSingletons.COROUTINE_SUSPENDED) {
                        objU = Unit.f71739a;
                    }
                    if (objU != coroutineSingletons) {
                        distantRepairFormBffViewModelImpl2 = distantRepairFormBffViewModelImpl3;
                        monitorAction4 = monitorAction;
                    }
                    return coroutineSingletons;
                }
                mutableStateFlow2 = distantRepairFormBffViewModelImpl3.u;
                do {
                    value3 = mutableStateFlow2.getValue();
                    ((Boolean) value3).getClass();
                } while (!mutableStateFlow2.i(value3, Boolean.FALSE));
                monitorAction.b();
                return Unit.f71739a;
            }
            if (i3 != 4) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            thA = this.f57131e;
            distantRepairFormBffViewModelImpl2 = this.d;
            monitorAction4 = this.f57129b;
            ResultKt.b(obj);
        }
        mutableStateFlow3 = distantRepairFormBffViewModelImpl2.u;
        do {
            value4 = mutableStateFlow3.getValue();
            ((Boolean) value4).getClass();
        } while (!mutableStateFlow3.i(value4, Boolean.FALSE));
        distantRepairFormBffViewModelImpl2.f57098b.c("DistantRepairFormBffViewModelImpl", "Unable to create care service", thA);
        monitorAction = monitorAction4;
        mutableStateFlow2 = distantRepairFormBffViewModelImpl3.u;
        do {
            value3 = mutableStateFlow2.getValue();
            ((Boolean) value3).getClass();
        } while (!mutableStateFlow2.i(value3, Boolean.FALSE));
        monitorAction.b();
        return Unit.f71739a;
        Result.Companion companion = Result.INSTANCE;
        if (objA instanceof Result.Failure) {
            thA = Result.a(objA);
            if (thA != null) {
                monitorAction.d(new CareServicesMonitoring.Error.BookRepairError(thA));
                this.f57129b = monitorAction;
                this.f57130c = objA;
                this.d = distantRepairFormBffViewModelImpl3;
                this.f57131e = thA;
                this.f57132f = 0;
                this.g = 4;
                objU = distantRepairFormBffViewModelImpl3.E.u(NotificationBuilder.a(distantRepairFormBffViewModelImpl3.f57101f, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60), this);
                if (objU != CoroutineSingletons.COROUTINE_SUSPENDED) {
                    objU = Unit.f71739a;
                }
                if (objU != coroutineSingletons) {
                    distantRepairFormBffViewModelImpl2 = distantRepairFormBffViewModelImpl3;
                    monitorAction4 = monitorAction;
                    mutableStateFlow3 = distantRepairFormBffViewModelImpl2.u;
                    do {
                        value4 = mutableStateFlow3.getValue();
                        ((Boolean) value4).getClass();
                    } while (!mutableStateFlow3.i(value4, Boolean.FALSE));
                    distantRepairFormBffViewModelImpl2.f57098b.c("DistantRepairFormBffViewModelImpl", "Unable to create care service", thA);
                    monitorAction = monitorAction4;
                }
            }
            mutableStateFlow2 = distantRepairFormBffViewModelImpl3.u;
            do {
                value3 = mutableStateFlow2.getValue();
                ((Boolean) value3).getClass();
            } while (!mutableStateFlow2.i(value3, Boolean.FALSE));
            monitorAction.b();
            return Unit.f71739a;
        }
        String str7 = ((CareServiceId) objA).f66879a;
        monitorAction.c(str7, "repairId");
        MutableStateFlow mutableStateFlow7 = distantRepairFormBffViewModelImpl3.A;
        do {
            value = mutableStateFlow7.getValue();
            ((CareServiceIdUiModel) value).getClass();
            CareServiceIdUiModel.f64059c.getClass();
        } while (!mutableStateFlow7.i(value, new CareServiceIdUiModel(str7)));
        ServiceRepairActions serviceRepairActions = ServiceRepairActions.BOOKED;
        String str8 = ((DistantRepairsConfigUiModel) distantRepairFormBffViewModelImpl3.C.getValue()).f64006f;
        if (((Step1StateUIModel) mutableStateFlow4.getValue()).f57402b == null) {
            str8 = null;
        }
        distantRepairFormBffViewModelImpl3.Cc(serviceRepairActions, str8);
        BufferedChannel bufferedChannel = distantRepairFormBffViewModelImpl3.F;
        Result.Companion companion2 = Result.INSTANCE;
        Result result = new Result(Boolean.TRUE);
        this.f57129b = monitorAction;
        this.f57130c = objA;
        this.d = distantRepairFormBffViewModelImpl3;
        this.f57131e = null;
        this.f57132f = 0;
        this.g = 2;
        if (bufferedChannel.u(result, this) != coroutineSingletons) {
            distantRepairFormBffViewModelImpl = distantRepairFormBffViewModelImpl3;
            monitorAction2 = monitorAction;
            i2 = 0;
            lVEventSender = distantRepairFormBffViewModelImpl.d;
            this.f57129b = monitorAction2;
            this.f57130c = objA;
            this.d = distantRepairFormBffViewModelImpl;
            this.f57131e = null;
            this.f57132f = i2;
            this.g = 3;
            if (lVEventSender.a(AppEvent.RefreshRepairsEvent.f43505a, this) != coroutineSingletons) {
                obj2 = objA;
                monitorAction3 = monitorAction2;
                distantRepairFormBffViewModelImpl.f57105k.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.RepairCreationConfirmationScreen.f57442a));
                mutableStateFlow = distantRepairFormBffViewModelImpl.v;
                do {
                    value2 = mutableStateFlow.getValue();
                } while (!mutableStateFlow.i(value2, FormStateUIModel.b((FormStateUIModel) value2, null, FormState.CONFIRMED, 7)));
                objA = obj2;
                monitorAction = monitorAction3;
                thA = Result.a(objA);
                if (thA != null) {
                    monitorAction.d(new CareServicesMonitoring.Error.BookRepairError(thA));
                    this.f57129b = monitorAction;
                    this.f57130c = objA;
                    this.d = distantRepairFormBffViewModelImpl3;
                    this.f57131e = thA;
                    this.f57132f = 0;
                    this.g = 4;
                    objU = distantRepairFormBffViewModelImpl3.E.u(NotificationBuilder.a(distantRepairFormBffViewModelImpl3.f57101f, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60), this);
                    if (objU != CoroutineSingletons.COROUTINE_SUSPENDED) {
                        objU = Unit.f71739a;
                    }
                    if (objU != coroutineSingletons) {
                        distantRepairFormBffViewModelImpl2 = distantRepairFormBffViewModelImpl3;
                        monitorAction4 = monitorAction;
                        mutableStateFlow3 = distantRepairFormBffViewModelImpl2.u;
                        do {
                            value4 = mutableStateFlow3.getValue();
                            ((Boolean) value4).getClass();
                        } while (!mutableStateFlow3.i(value4, Boolean.FALSE));
                        distantRepairFormBffViewModelImpl2.f57098b.c("DistantRepairFormBffViewModelImpl", "Unable to create care service", thA);
                        monitorAction = monitorAction4;
                    }
                }
                mutableStateFlow2 = distantRepairFormBffViewModelImpl3.u;
                do {
                    value3 = mutableStateFlow2.getValue();
                    ((Boolean) value3).getClass();
                } while (!mutableStateFlow2.i(value3, Boolean.FALSE));
                monitorAction.b();
                return Unit.f71739a;
            }
        }
        return coroutineSingletons;
    }
}

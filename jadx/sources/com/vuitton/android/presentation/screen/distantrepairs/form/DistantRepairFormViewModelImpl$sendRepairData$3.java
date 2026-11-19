package com.vuitton.android.presentation.screen.distantrepairs.form;

import android.app.Application;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.R;
import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.careservices.CareServicesMonitoring;
import com.vuitton.android.domain.usecase.appointment.ConfirmAppointmentUseCase;
import com.vuitton.android.domain.usecase.careservices.CreateCareServiceUseCase;
import com.vuitton.android.presentation.helper.PhotoEncodingHelper;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.account.profile.ProfileHelper;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethodKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.FormState;
import com.vuitton.android.presentation.screen.distantrepairs.models.FormStateUIModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.PhoneNumber;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step1StateUIModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step2StateUIModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step3StateUIModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModelKt;
import com.vuitton.android.presentation.screen.repairs.models.DistantRepairsConfigUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.android.presentation.tracking.ServiceRepairActions;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceOrigin;
import com.vuitton.foundation.model.domain.model.careservices.CreateCareServiceParam;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.distantrepairs.Appointment;
import com.vuitton.foundation.model.domain.model.osa.AppointmentType;
import com.vuitton.foundation.model.domain.model.osa.OsaItem;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import defpackage.md;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
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
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModelImpl$sendRepairData$3", f = "DistantRepairFormViewModelImpl.kt", l = {549, 559, 570, 571, 574, 579}, m = "invokeSuspend", v = 2)
final class DistantRepairFormViewModelImpl$sendRepairData$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f57188b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CreateCareServiceParam f57189c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public DistantRepairFormViewModelImpl f57190e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Serializable f57191f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f57192h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f57193i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ DistantRepairFormViewModelImpl f57194j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ CareServiceOrigin f57195k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairFormViewModelImpl$sendRepairData$3(DistantRepairFormViewModelImpl distantRepairFormViewModelImpl, CareServiceOrigin careServiceOrigin, Continuation continuation) {
        super(2, continuation);
        this.f57194j = distantRepairFormViewModelImpl;
        this.f57195k = careServiceOrigin;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DistantRepairFormViewModelImpl$sendRepairData$3(this.f57194j, this.f57195k, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DistantRepairFormViewModelImpl$sendRepairData$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0229 A[Catch: all -> 0x019a, TryCatch #3 {all -> 0x019a, blocks: (B:57:0x0189, B:59:0x0197, B:66:0x01a5, B:68:0x01c2, B:73:0x01cd, B:75:0x01d7, B:81:0x01e4, B:87:0x01f1, B:92:0x01fc, B:94:0x0214, B:99:0x021f, B:101:0x0229, B:106:0x0234, B:108:0x023e, B:110:0x0242, B:112:0x024f, B:117:0x025a, B:121:0x0270), top: B:197:0x0189 }] */
    /* JADX WARN: Code duplicated, block: B:102:0x022c  */
    /* JADX WARN: Code duplicated, block: B:104:0x022f  */
    /* JADX WARN: Code duplicated, block: B:105:0x0232  */
    /* JADX WARN: Code duplicated, block: B:108:0x023e A[Catch: all -> 0x019a, TryCatch #3 {all -> 0x019a, blocks: (B:57:0x0189, B:59:0x0197, B:66:0x01a5, B:68:0x01c2, B:73:0x01cd, B:75:0x01d7, B:81:0x01e4, B:87:0x01f1, B:92:0x01fc, B:94:0x0214, B:99:0x021f, B:101:0x0229, B:106:0x0234, B:108:0x023e, B:110:0x0242, B:112:0x024f, B:117:0x025a, B:121:0x0270), top: B:197:0x0189 }] */
    /* JADX WARN: Code duplicated, block: B:109:0x0241  */
    /* JADX WARN: Code duplicated, block: B:112:0x024f A[Catch: all -> 0x019a, TryCatch #3 {all -> 0x019a, blocks: (B:57:0x0189, B:59:0x0197, B:66:0x01a5, B:68:0x01c2, B:73:0x01cd, B:75:0x01d7, B:81:0x01e4, B:87:0x01f1, B:92:0x01fc, B:94:0x0214, B:99:0x021f, B:101:0x0229, B:106:0x0234, B:108:0x023e, B:110:0x0242, B:112:0x024f, B:117:0x025a, B:121:0x0270), top: B:197:0x0189 }] */
    /* JADX WARN: Code duplicated, block: B:113:0x0252  */
    /* JADX WARN: Code duplicated, block: B:115:0x0255  */
    /* JADX WARN: Code duplicated, block: B:116:0x0258  */
    /* JADX WARN: Code duplicated, block: B:129:0x0287  */
    /* JADX WARN: Code duplicated, block: B:131:0x028b  */
    /* JADX WARN: Code duplicated, block: B:137:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:144:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:147:0x02ec A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:154:0x0321  */
    /* JADX WARN: Code duplicated, block: B:157:0x033a  */
    /* JADX WARN: Code duplicated, block: B:161:0x0361  */
    /* JADX WARN: Code duplicated, block: B:165:0x0383  */
    /* JADX WARN: Code duplicated, block: B:171:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:172:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:175:0x03b4  */
    /* JADX WARN: Code duplicated, block: B:178:0x03eb  */
    /* JADX WARN: Code duplicated, block: B:181:0x03f0  */
    /* JADX WARN: Code duplicated, block: B:191:0x029e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x015a  */
    /* JADX WARN: Code duplicated, block: B:59:0x0197 A[Catch: all -> 0x019a, TryCatch #3 {all -> 0x019a, blocks: (B:57:0x0189, B:59:0x0197, B:66:0x01a5, B:68:0x01c2, B:73:0x01cd, B:75:0x01d7, B:81:0x01e4, B:87:0x01f1, B:92:0x01fc, B:94:0x0214, B:99:0x021f, B:101:0x0229, B:106:0x0234, B:108:0x023e, B:110:0x0242, B:112:0x024f, B:117:0x025a, B:121:0x0270), top: B:197:0x0189 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x019d  */
    /* JADX WARN: Code duplicated, block: B:64:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:65:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:68:0x01c2 A[Catch: all -> 0x019a, TryCatch #3 {all -> 0x019a, blocks: (B:57:0x0189, B:59:0x0197, B:66:0x01a5, B:68:0x01c2, B:73:0x01cd, B:75:0x01d7, B:81:0x01e4, B:87:0x01f1, B:92:0x01fc, B:94:0x0214, B:99:0x021f, B:101:0x0229, B:106:0x0234, B:108:0x023e, B:110:0x0242, B:112:0x024f, B:117:0x025a, B:121:0x0270), top: B:197:0x0189 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:71:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:72:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:75:0x01d7 A[Catch: all -> 0x019a, TryCatch #3 {all -> 0x019a, blocks: (B:57:0x0189, B:59:0x0197, B:66:0x01a5, B:68:0x01c2, B:73:0x01cd, B:75:0x01d7, B:81:0x01e4, B:87:0x01f1, B:92:0x01fc, B:94:0x0214, B:99:0x021f, B:101:0x0229, B:106:0x0234, B:108:0x023e, B:110:0x0242, B:112:0x024f, B:117:0x025a, B:121:0x0270), top: B:197:0x0189 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x01da  */
    /* JADX WARN: Code duplicated, block: B:78:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:79:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:81:0x01e4 A[Catch: all -> 0x019a, TryCatch #3 {all -> 0x019a, blocks: (B:57:0x0189, B:59:0x0197, B:66:0x01a5, B:68:0x01c2, B:73:0x01cd, B:75:0x01d7, B:81:0x01e4, B:87:0x01f1, B:92:0x01fc, B:94:0x0214, B:99:0x021f, B:101:0x0229, B:106:0x0234, B:108:0x023e, B:110:0x0242, B:112:0x024f, B:117:0x025a, B:121:0x0270), top: B:197:0x0189 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:84:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:85:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:87:0x01f1 A[Catch: all -> 0x019a, TryCatch #3 {all -> 0x019a, blocks: (B:57:0x0189, B:59:0x0197, B:66:0x01a5, B:68:0x01c2, B:73:0x01cd, B:75:0x01d7, B:81:0x01e4, B:87:0x01f1, B:92:0x01fc, B:94:0x0214, B:99:0x021f, B:101:0x0229, B:106:0x0234, B:108:0x023e, B:110:0x0242, B:112:0x024f, B:117:0x025a, B:121:0x0270), top: B:197:0x0189 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:90:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:91:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:94:0x0214 A[Catch: all -> 0x019a, TryCatch #3 {all -> 0x019a, blocks: (B:57:0x0189, B:59:0x0197, B:66:0x01a5, B:68:0x01c2, B:73:0x01cd, B:75:0x01d7, B:81:0x01e4, B:87:0x01f1, B:92:0x01fc, B:94:0x0214, B:99:0x021f, B:101:0x0229, B:106:0x0234, B:108:0x023e, B:110:0x0242, B:112:0x024f, B:117:0x025a, B:121:0x0270), top: B:197:0x0189 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x0217  */
    /* JADX WARN: Code duplicated, block: B:97:0x021a  */
    /* JADX WARN: Code duplicated, block: B:98:0x021d  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        CreateCareServiceParam createCareServiceParam;
        MonitorAction monitorAction;
        Object obj2;
        MonitorAction monitorAction2;
        CreateCareServiceParam createCareServiceParam2;
        String str;
        MutableStateFlow mutableStateFlow;
        Object value;
        Profile profile;
        Object failure;
        Throwable thA;
        Object failure2;
        DistantRepairFormViewModelImpl distantRepairFormViewModelImpl;
        String str2;
        int i2;
        CreateCareServiceParam createCareServiceParam3;
        Object objA;
        DistantRepairFormViewModelImpl distantRepairFormViewModelImpl2;
        int i3;
        TimeSlotUiModel timeSlotUiModel;
        String str3;
        String str4;
        TimeSlotUiModel timeSlotUiModel2;
        String str5;
        String str6;
        Profile profile2;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        PhoneNumber phoneNumber;
        String str13;
        String str14;
        PhoneNumber phoneNumber2;
        String str15;
        String str16;
        String str17;
        String str18;
        String str19;
        boolean z;
        String str20;
        BufferedChannel bufferedChannel;
        Result result;
        DistantRepairFormViewModelImpl distantRepairFormViewModelImpl3;
        Object obj3;
        MonitorAction monitorAction3;
        CreateCareServiceParam createCareServiceParam4;
        String str21;
        Object obj4;
        MonitorAction monitorAction4;
        CreateCareServiceParam createCareServiceParam5;
        LVEventSender lVEventSender;
        MonitorAction monitorAction5;
        MutableStateFlow mutableStateFlow2;
        Object value2;
        Throwable thA2;
        Object objU;
        MonitorAction monitorAction6;
        CreateCareServiceParam createCareServiceParam6;
        DistantRepairFormViewModelImpl distantRepairFormViewModelImpl4;
        MutableStateFlow mutableStateFlow3;
        Object value3;
        MutableStateFlow mutableStateFlow4;
        Object value4;
        DistantRepairFormViewModelImpl distantRepairFormViewModelImpl5 = this.f57194j;
        MutableStateFlow mutableStateFlow5 = distantRepairFormViewModelImpl5.w;
        Application application = distantRepairFormViewModelImpl5.f13405a;
        InAppDispatch inAppDispatch = distantRepairFormViewModelImpl5.s;
        MutableStateFlow mutableStateFlow6 = distantRepairFormViewModelImpl5.v;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        switch (this.f57193i) {
            case 0:
                ResultKt.b(obj);
                DynatraceMonitorAction dynatraceMonitorActionA = distantRepairFormViewModelImpl5.f57157c.a(inAppDispatch, CareServicesMonitoring.Action.BookRepair.f48863a);
                DistantRepairContactMethod distantRepairContactMethod = ((Step1StateUIModel) mutableStateFlow6.getValue()).f57401a;
                String value5 = distantRepairContactMethod != null ? distantRepairContactMethod.getValue() : null;
                if (value5 == null) {
                    value5 = "";
                }
                dynatraceMonitorActionA.c(value5, "repairType");
                application.getClass();
                String str22 = distantRepairFormViewModelImpl5.F;
                MutableStateFlow mutableStateFlow7 = distantRepairFormViewModelImpl5.x;
                PhoneNumber phoneNumber3 = ((Step2StateUIModel) mutableStateFlow5.getValue()).f57405b;
                String string = phoneNumber3 != null ? phoneNumber3.toString() : null;
                String str23 = string == null ? "" : string;
                Profile profile3 = ((Step2StateUIModel) mutableStateFlow5.getValue()).f57404a;
                String str24 = profile3 != null ? profile3.g : null;
                String str25 = str24 == null ? "" : str24;
                String str26 = ((Step3StateUIModel) mutableStateFlow7.getValue()).f57411c;
                TimeSlotUiModel timeSlotUiModel3 = ((Step1StateUIModel) mutableStateFlow6.getValue()).f57402b;
                String str27 = timeSlotUiModel3 != null ? timeSlotUiModel3.d : null;
                String str28 = str27 == null ? "" : str27;
                PhotoEncodingHelper photoEncodingHelper = distantRepairFormViewModelImpl5.f57159f;
                List list = ((Step3StateUIModel) mutableStateFlow7.getValue()).f57410b;
                photoEncodingHelper.getClass();
                ArrayList arrayListA = PhotoEncodingHelper.a(application, list);
                String str29 = ((Step2StateUIModel) mutableStateFlow5.getValue()).f57406c;
                createCareServiceParam = new CreateCareServiceParam(str23, str25, str26, this.f57195k, str28, arrayListA, str22, str29 == null ? "" : str29);
                CreateCareServiceUseCase createCareServiceUseCase = distantRepairFormViewModelImpl5.l;
                this.f57188b = dynatraceMonitorActionA;
                this.f57189c = createCareServiceParam;
                this.f57193i = 1;
                Object objA2 = createCareServiceUseCase.a(createCareServiceParam, this);
                if (objA2 != coroutineSingletons) {
                    monitorAction = dynatraceMonitorActionA;
                    obj2 = objA2;
                    Result.Companion companion = Result.INSTANCE;
                    if (!(obj2 instanceof Result.Failure)) {
                        monitorAction2 = monitorAction;
                        createCareServiceParam2 = createCareServiceParam;
                        thA2 = Result.a(obj2);
                        if (thA2 != null) {
                            monitorAction2.d(new CareServicesMonitoring.Error.BookRepairError(thA2));
                            this.f57188b = monitorAction2;
                            this.f57189c = createCareServiceParam2;
                            this.d = obj2;
                            this.f57190e = distantRepairFormViewModelImpl5;
                            this.f57191f = thA2;
                            this.g = 0;
                            this.f57193i = 6;
                            objU = distantRepairFormViewModelImpl5.D.u(NotificationBuilder.a(distantRepairFormViewModelImpl5.g, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60), this);
                            if (objU != CoroutineSingletons.COROUTINE_SUSPENDED) {
                                objU = Unit.f71739a;
                            }
                            if (objU != coroutineSingletons) {
                                monitorAction6 = monitorAction2;
                                createCareServiceParam6 = createCareServiceParam2;
                                distantRepairFormViewModelImpl4 = distantRepairFormViewModelImpl5;
                                CareServiceId.INSTANCE.getClass();
                                String str30 = CareServiceId.f66878b;
                                distantRepairFormViewModelImpl4.getClass();
                                BuildersKt.c(ViewModelKt.a(distantRepairFormViewModelImpl4), null, null, new DistantRepairFormViewModelImpl$cancelCareService$1(distantRepairFormViewModelImpl4, createCareServiceParam6, str30, null), 3);
                                mutableStateFlow4 = distantRepairFormViewModelImpl4.t;
                                do {
                                    value4 = mutableStateFlow4.getValue();
                                    ((Boolean) value4).getClass();
                                } while (!mutableStateFlow4.i(value4, Boolean.FALSE));
                                distantRepairFormViewModelImpl4.f57156b.c("DistantRepairFormViewModelImpl", "Unable to create care service", thA2);
                                monitorAction2 = monitorAction6;
                            }
                        }
                        mutableStateFlow3 = distantRepairFormViewModelImpl5.t;
                        do {
                            value3 = mutableStateFlow3.getValue();
                            ((Boolean) value3).getClass();
                        } while (!mutableStateFlow3.i(value3, Boolean.FALSE));
                        monitorAction2.b();
                        return Unit.f71739a;
                    }
                    str = ((CareServiceId) obj2).f66879a;
                    monitorAction.c(str, "repairId");
                    mutableStateFlow = distantRepairFormViewModelImpl5.z;
                    do {
                        value = mutableStateFlow.getValue();
                        ((CareServiceIdUiModel) value).getClass();
                        CareServiceIdUiModel.f64059c.getClass();
                    } while (!mutableStateFlow.i(value, new CareServiceIdUiModel(str)));
                    profile = ((Step2StateUIModel) mutableStateFlow5.getValue()).f57404a;
                    try {
                        Result.Companion companion2 = Result.INSTANCE;
                        timeSlotUiModel = ((Step1StateUIModel) mutableStateFlow6.getValue()).f57402b;
                        if (timeSlotUiModel != null) {
                            str3 = timeSlotUiModel.f57418e;
                        } else {
                            str3 = null;
                        }
                        if (str3 == null) {
                            str4 = "";
                        } else {
                            str4 = str3;
                        }
                        Object objA3 = DistantRepairContactMethodKt.a(((Step1StateUIModel) mutableStateFlow6.getValue()).f57401a);
                        ResultKt.b(objA3);
                        AppointmentType appointmentType = (AppointmentType) objA3;
                        timeSlotUiModel2 = ((Step1StateUIModel) mutableStateFlow6.getValue()).f57402b;
                        if (timeSlotUiModel2 != null) {
                            str5 = timeSlotUiModel2.f57416b;
                        } else {
                            str5 = null;
                        }
                        if (str5 == null) {
                            str6 = "";
                        } else {
                            str6 = str5;
                        }
                        profile2 = ((Step2StateUIModel) mutableStateFlow5.getValue()).f57404a;
                        if (profile2 != null) {
                            str7 = profile2.g;
                        } else {
                            str7 = null;
                        }
                        if (str7 == null) {
                            str8 = "";
                        } else {
                            str8 = str7;
                        }
                        if (profile != null) {
                            str9 = profile.f68166c;
                        } else {
                            str9 = null;
                        }
                        if (str9 == null) {
                            str10 = "";
                        } else {
                            str10 = str9;
                        }
                        if (profile != null) {
                            str11 = profile.f68167e;
                        } else {
                            str11 = null;
                        }
                        if (str11 == null) {
                            str12 = "";
                        } else {
                            str12 = str11;
                        }
                        String str31 = inAppDispatch.f67483j;
                        String strValueOf = String.valueOf(((Step2StateUIModel) mutableStateFlow5.getValue()).f57405b);
                        phoneNumber = ((Step2StateUIModel) mutableStateFlow5.getValue()).f57405b;
                        if (phoneNumber != null) {
                            str13 = phoneNumber.f57392a;
                        } else {
                            str13 = null;
                        }
                        if (str13 == null) {
                            str14 = "";
                        } else {
                            str14 = str13;
                        }
                        phoneNumber2 = ((Step2StateUIModel) mutableStateFlow5.getValue()).f57405b;
                        if (phoneNumber2 != null) {
                            str15 = phoneNumber2.f57393b;
                        } else {
                            str15 = null;
                        }
                        if (str15 == null) {
                            str16 = "";
                        } else {
                            str16 = str15;
                        }
                        String value6 = PhoneNumber.Type.MOBILE.getValue();
                        List list2 = ProfileHelper.f52681a;
                        if (profile != null) {
                            str17 = profile.f68169h;
                        } else {
                            str17 = null;
                        }
                        StringResourceUiModel stringResourceUiModelA = ProfileHelper.a(str17);
                        application.getClass();
                        String strA = StringResourceUiModelKt.a(stringResourceUiModelA, application);
                        if (profile != null) {
                            str18 = profile.f68169h;
                        } else {
                            str18 = null;
                        }
                        if (str18 == null) {
                            str19 = "";
                        } else {
                            str19 = str18;
                        }
                        try {
                            failure = new Result(new Appointment(str4, appointmentType, str6, str8, str10, str12, str31, strValueOf, str14, str16, value6, strA, str, str19, false, new String(), null, 65536, null));
                        } catch (Throwable th) {
                            th = th;
                            str = str;
                            Result.Companion companion3 = Result.INSTANCE;
                            failure = new Result.Failure(th);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    thA = Result.a(failure);
                    if (thA != null) {
                        if (!(thA instanceof CancellationException)) {
                            throw thA;
                        }
                        failure = new Result(new Result.Failure(thA));
                    }
                    failure2 = ((Result) failure).f71708b;
                    if (failure2 instanceof Result.Failure) {
                        distantRepairFormViewModelImpl2 = distantRepairFormViewModelImpl5;
                        str2 = str;
                        i3 = 0;
                        boolean z2 = failure2 instanceof Result.Failure;
                        z = !z2;
                        if (((Step1StateUIModel) distantRepairFormViewModelImpl2.v.getValue()).f57401a == DistantRepairContactMethod.EMAIL) {
                            ServiceRepairActions serviceRepairActions = ServiceRepairActions.BOOKED;
                            str20 = ((DistantRepairsConfigUiModel) distantRepairFormViewModelImpl2.B.getValue()).f64006f;
                            if (((Step1StateUIModel) distantRepairFormViewModelImpl2.v.getValue()).f57402b == null) {
                                str20 = null;
                            }
                            distantRepairFormViewModelImpl2.Cc(serviceRepairActions, str20);
                            bufferedChannel = distantRepairFormViewModelImpl2.E;
                            result = new Result(Boolean.TRUE);
                            this.f57188b = monitorAction;
                            this.f57189c = createCareServiceParam;
                            this.d = obj2;
                            this.f57190e = distantRepairFormViewModelImpl2;
                            this.f57191f = null;
                            this.g = i3;
                            this.f57192h = z;
                            this.f57193i = 3;
                            if (bufferedChannel.u(result, this) != coroutineSingletons) {
                                distantRepairFormViewModelImpl3 = distantRepairFormViewModelImpl2;
                                obj3 = obj2;
                                monitorAction3 = monitorAction;
                                createCareServiceParam4 = createCareServiceParam;
                                lVEventSender = distantRepairFormViewModelImpl3.d;
                                this.f57188b = monitorAction3;
                                this.f57189c = createCareServiceParam4;
                                this.d = obj3;
                                this.f57190e = distantRepairFormViewModelImpl3;
                                this.f57191f = null;
                                this.g = i3;
                                this.f57192h = z;
                                this.f57193i = 4;
                                if (lVEventSender.a(AppEvent.RefreshRepairsEvent.f43505a, this) != coroutineSingletons) {
                                    monitorAction5 = monitorAction3;
                                    distantRepairFormViewModelImpl3.f57161i.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.RepairCreationConfirmationScreen.f57442a));
                                    mutableStateFlow2 = distantRepairFormViewModelImpl3.u;
                                    do {
                                        value2 = mutableStateFlow2.getValue();
                                    } while (!mutableStateFlow2.i(value2, FormStateUIModel.b((FormStateUIModel) value2, null, FormState.CONFIRMED, 7)));
                                    obj2 = obj3;
                                    monitorAction2 = monitorAction5;
                                    createCareServiceParam5 = createCareServiceParam4;
                                    createCareServiceParam2 = createCareServiceParam5;
                                    thA2 = Result.a(obj2);
                                    if (thA2 != null) {
                                        monitorAction2.d(new CareServicesMonitoring.Error.BookRepairError(thA2));
                                        this.f57188b = monitorAction2;
                                        this.f57189c = createCareServiceParam2;
                                        this.d = obj2;
                                        this.f57190e = distantRepairFormViewModelImpl5;
                                        this.f57191f = thA2;
                                        this.g = 0;
                                        this.f57193i = 6;
                                        objU = distantRepairFormViewModelImpl5.D.u(NotificationBuilder.a(distantRepairFormViewModelImpl5.g, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60), this);
                                        if (objU != CoroutineSingletons.COROUTINE_SUSPENDED) {
                                            objU = Unit.f71739a;
                                        }
                                        if (objU != coroutineSingletons) {
                                            monitorAction6 = monitorAction2;
                                            createCareServiceParam6 = createCareServiceParam2;
                                            distantRepairFormViewModelImpl4 = distantRepairFormViewModelImpl5;
                                            CareServiceId.INSTANCE.getClass();
                                            String str32 = CareServiceId.f66878b;
                                            distantRepairFormViewModelImpl4.getClass();
                                            BuildersKt.c(ViewModelKt.a(distantRepairFormViewModelImpl4), null, null, new DistantRepairFormViewModelImpl$cancelCareService$1(distantRepairFormViewModelImpl4, createCareServiceParam6, str32, null), 3);
                                            mutableStateFlow4 = distantRepairFormViewModelImpl4.t;
                                            do {
                                                value4 = mutableStateFlow4.getValue();
                                                ((Boolean) value4).getClass();
                                            } while (!mutableStateFlow4.i(value4, Boolean.FALSE));
                                            distantRepairFormViewModelImpl4.f57156b.c("DistantRepairFormViewModelImpl", "Unable to create care service", thA2);
                                            monitorAction2 = monitorAction6;
                                        }
                                    }
                                    mutableStateFlow3 = distantRepairFormViewModelImpl5.t;
                                    do {
                                        value3 = mutableStateFlow3.getValue();
                                        ((Boolean) value3).getClass();
                                    } while (!mutableStateFlow3.i(value3, Boolean.FALSE));
                                    monitorAction2.b();
                                    return Unit.f71739a;
                                }
                            }
                        } else {
                            ServiceRepairActions serviceRepairActions2 = ServiceRepairActions.BOOKED;
                            str20 = ((DistantRepairsConfigUiModel) distantRepairFormViewModelImpl2.B.getValue()).f64006f;
                            if (((Step1StateUIModel) distantRepairFormViewModelImpl2.v.getValue()).f57402b == null) {
                                str20 = null;
                            }
                            distantRepairFormViewModelImpl2.Cc(serviceRepairActions2, str20);
                            bufferedChannel = distantRepairFormViewModelImpl2.E;
                            result = new Result(Boolean.TRUE);
                            this.f57188b = monitorAction;
                            this.f57189c = createCareServiceParam;
                            this.d = obj2;
                            this.f57190e = distantRepairFormViewModelImpl2;
                            this.f57191f = null;
                            this.g = i3;
                            this.f57192h = z;
                            this.f57193i = 3;
                            if (bufferedChannel.u(result, this) != coroutineSingletons) {
                                distantRepairFormViewModelImpl3 = distantRepairFormViewModelImpl2;
                                obj3 = obj2;
                                monitorAction3 = monitorAction;
                                createCareServiceParam4 = createCareServiceParam;
                                lVEventSender = distantRepairFormViewModelImpl3.d;
                                this.f57188b = monitorAction3;
                                this.f57189c = createCareServiceParam4;
                                this.d = obj3;
                                this.f57190e = distantRepairFormViewModelImpl3;
                                this.f57191f = null;
                                this.g = i3;
                                this.f57192h = z;
                                this.f57193i = 4;
                                if (lVEventSender.a(AppEvent.RefreshRepairsEvent.f43505a, this) != coroutineSingletons) {
                                    monitorAction5 = monitorAction3;
                                    distantRepairFormViewModelImpl3.f57161i.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.RepairCreationConfirmationScreen.f57442a));
                                    mutableStateFlow2 = distantRepairFormViewModelImpl3.u;
                                    do {
                                        value2 = mutableStateFlow2.getValue();
                                    } while (!mutableStateFlow2.i(value2, FormStateUIModel.b((FormStateUIModel) value2, null, FormState.CONFIRMED, 7)));
                                    obj2 = obj3;
                                    monitorAction2 = monitorAction5;
                                    createCareServiceParam5 = createCareServiceParam4;
                                    createCareServiceParam2 = createCareServiceParam5;
                                    thA2 = Result.a(obj2);
                                    if (thA2 != null) {
                                        monitorAction2.d(new CareServicesMonitoring.Error.BookRepairError(thA2));
                                        this.f57188b = monitorAction2;
                                        this.f57189c = createCareServiceParam2;
                                        this.d = obj2;
                                        this.f57190e = distantRepairFormViewModelImpl5;
                                        this.f57191f = thA2;
                                        this.g = 0;
                                        this.f57193i = 6;
                                        objU = distantRepairFormViewModelImpl5.D.u(NotificationBuilder.a(distantRepairFormViewModelImpl5.g, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60), this);
                                        if (objU != CoroutineSingletons.COROUTINE_SUSPENDED) {
                                            objU = Unit.f71739a;
                                        }
                                        if (objU != coroutineSingletons) {
                                            monitorAction6 = monitorAction2;
                                            createCareServiceParam6 = createCareServiceParam2;
                                            distantRepairFormViewModelImpl4 = distantRepairFormViewModelImpl5;
                                            CareServiceId.INSTANCE.getClass();
                                            String str33 = CareServiceId.f66878b;
                                            distantRepairFormViewModelImpl4.getClass();
                                            BuildersKt.c(ViewModelKt.a(distantRepairFormViewModelImpl4), null, null, new DistantRepairFormViewModelImpl$cancelCareService$1(distantRepairFormViewModelImpl4, createCareServiceParam6, str33, null), 3);
                                            mutableStateFlow4 = distantRepairFormViewModelImpl4.t;
                                            do {
                                                value4 = mutableStateFlow4.getValue();
                                                ((Boolean) value4).getClass();
                                            } while (!mutableStateFlow4.i(value4, Boolean.FALSE));
                                            distantRepairFormViewModelImpl4.f57156b.c("DistantRepairFormViewModelImpl", "Unable to create care service", thA2);
                                            monitorAction2 = monitorAction6;
                                        }
                                    }
                                    mutableStateFlow3 = distantRepairFormViewModelImpl5.t;
                                    do {
                                        value3 = mutableStateFlow3.getValue();
                                        ((Boolean) value3).getClass();
                                    } while (!mutableStateFlow3.i(value3, Boolean.FALSE));
                                    monitorAction2.b();
                                    return Unit.f71739a;
                                }
                            }
                        }
                    } else {
                        try {
                            ConfirmAppointmentUseCase confirmAppointmentUseCase = distantRepairFormViewModelImpl5.o;
                            this.f57188b = monitorAction;
                            this.f57189c = createCareServiceParam;
                            this.d = obj2;
                            this.f57190e = distantRepairFormViewModelImpl5;
                            this.f57191f = str;
                            this.g = 0;
                            this.f57193i = 2;
                            objA = confirmAppointmentUseCase.a((Appointment) failure2, false, this);
                            if (objA != coroutineSingletons) {
                                distantRepairFormViewModelImpl = distantRepairFormViewModelImpl5;
                                str2 = str;
                                i2 = 0;
                                createCareServiceParam3 = createCareServiceParam;
                                ResultKt.b(objA);
                                failure2 = (OsaItem) objA;
                                Result.Companion companion4 = Result.INSTANCE;
                                DistantRepairFormViewModelImpl distantRepairFormViewModelImpl6 = distantRepairFormViewModelImpl;
                                i3 = i2;
                                distantRepairFormViewModelImpl2 = distantRepairFormViewModelImpl6;
                                createCareServiceParam = createCareServiceParam3;
                                boolean z3 = failure2 instanceof Result.Failure;
                                z = !z3;
                                if (((Step1StateUIModel) distantRepairFormViewModelImpl2.v.getValue()).f57401a == DistantRepairContactMethod.EMAIL && z3) {
                                    this.f57188b = monitorAction;
                                    this.f57189c = createCareServiceParam;
                                    this.d = obj2;
                                    this.f57190e = distantRepairFormViewModelImpl2;
                                    this.f57191f = str2;
                                    this.g = i3;
                                    this.f57192h = z;
                                    this.f57193i = 5;
                                    if (DistantRepairFormViewModelImpl.zc(distantRepairFormViewModelImpl2, this) != coroutineSingletons) {
                                        str21 = str2;
                                        obj4 = obj2;
                                        monitorAction4 = monitorAction;
                                        createCareServiceParam5 = createCareServiceParam;
                                        distantRepairFormViewModelImpl2.getClass();
                                        BuildersKt.c(ViewModelKt.a(distantRepairFormViewModelImpl2), null, null, new DistantRepairFormViewModelImpl$cancelCareService$1(distantRepairFormViewModelImpl2, createCareServiceParam5, str21, null), 3);
                                        monitorAction2 = monitorAction4;
                                        obj2 = obj4;
                                        createCareServiceParam2 = createCareServiceParam5;
                                        thA2 = Result.a(obj2);
                                        if (thA2 != null) {
                                            monitorAction2.d(new CareServicesMonitoring.Error.BookRepairError(thA2));
                                            this.f57188b = monitorAction2;
                                            this.f57189c = createCareServiceParam2;
                                            this.d = obj2;
                                            this.f57190e = distantRepairFormViewModelImpl5;
                                            this.f57191f = thA2;
                                            this.g = 0;
                                            this.f57193i = 6;
                                            objU = distantRepairFormViewModelImpl5.D.u(NotificationBuilder.a(distantRepairFormViewModelImpl5.g, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60), this);
                                            if (objU != CoroutineSingletons.COROUTINE_SUSPENDED) {
                                                objU = Unit.f71739a;
                                            }
                                            if (objU != coroutineSingletons) {
                                                monitorAction6 = monitorAction2;
                                                createCareServiceParam6 = createCareServiceParam2;
                                                distantRepairFormViewModelImpl4 = distantRepairFormViewModelImpl5;
                                                CareServiceId.INSTANCE.getClass();
                                                String str34 = CareServiceId.f66878b;
                                                distantRepairFormViewModelImpl4.getClass();
                                                BuildersKt.c(ViewModelKt.a(distantRepairFormViewModelImpl4), null, null, new DistantRepairFormViewModelImpl$cancelCareService$1(distantRepairFormViewModelImpl4, createCareServiceParam6, str34, null), 3);
                                                mutableStateFlow4 = distantRepairFormViewModelImpl4.t;
                                                do {
                                                    value4 = mutableStateFlow4.getValue();
                                                    ((Boolean) value4).getClass();
                                                } while (!mutableStateFlow4.i(value4, Boolean.FALSE));
                                                distantRepairFormViewModelImpl4.f57156b.c("DistantRepairFormViewModelImpl", "Unable to create care service", thA2);
                                                monitorAction2 = monitorAction6;
                                            }
                                        }
                                        mutableStateFlow3 = distantRepairFormViewModelImpl5.t;
                                        do {
                                            value3 = mutableStateFlow3.getValue();
                                            ((Boolean) value3).getClass();
                                        } while (!mutableStateFlow3.i(value3, Boolean.FALSE));
                                        monitorAction2.b();
                                        return Unit.f71739a;
                                    }
                                } else {
                                    ServiceRepairActions serviceRepairActions3 = ServiceRepairActions.BOOKED;
                                    str20 = ((DistantRepairsConfigUiModel) distantRepairFormViewModelImpl2.B.getValue()).f64006f;
                                    if (((Step1StateUIModel) distantRepairFormViewModelImpl2.v.getValue()).f57402b == null) {
                                        str20 = null;
                                    }
                                    distantRepairFormViewModelImpl2.Cc(serviceRepairActions3, str20);
                                    bufferedChannel = distantRepairFormViewModelImpl2.E;
                                    result = new Result(Boolean.TRUE);
                                    this.f57188b = monitorAction;
                                    this.f57189c = createCareServiceParam;
                                    this.d = obj2;
                                    this.f57190e = distantRepairFormViewModelImpl2;
                                    this.f57191f = null;
                                    this.g = i3;
                                    this.f57192h = z;
                                    this.f57193i = 3;
                                    if (bufferedChannel.u(result, this) != coroutineSingletons) {
                                        distantRepairFormViewModelImpl3 = distantRepairFormViewModelImpl2;
                                        obj3 = obj2;
                                        monitorAction3 = monitorAction;
                                        createCareServiceParam4 = createCareServiceParam;
                                        lVEventSender = distantRepairFormViewModelImpl3.d;
                                        this.f57188b = monitorAction3;
                                        this.f57189c = createCareServiceParam4;
                                        this.d = obj3;
                                        this.f57190e = distantRepairFormViewModelImpl3;
                                        this.f57191f = null;
                                        this.g = i3;
                                        this.f57192h = z;
                                        this.f57193i = 4;
                                        if (lVEventSender.a(AppEvent.RefreshRepairsEvent.f43505a, this) != coroutineSingletons) {
                                            monitorAction5 = monitorAction3;
                                            distantRepairFormViewModelImpl3.f57161i.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.RepairCreationConfirmationScreen.f57442a));
                                            mutableStateFlow2 = distantRepairFormViewModelImpl3.u;
                                            do {
                                                value2 = mutableStateFlow2.getValue();
                                            } while (!mutableStateFlow2.i(value2, FormStateUIModel.b((FormStateUIModel) value2, null, FormState.CONFIRMED, 7)));
                                            obj2 = obj3;
                                            monitorAction2 = monitorAction5;
                                            createCareServiceParam5 = createCareServiceParam4;
                                            createCareServiceParam2 = createCareServiceParam5;
                                            thA2 = Result.a(obj2);
                                            if (thA2 != null) {
                                                monitorAction2.d(new CareServicesMonitoring.Error.BookRepairError(thA2));
                                                this.f57188b = monitorAction2;
                                                this.f57189c = createCareServiceParam2;
                                                this.d = obj2;
                                                this.f57190e = distantRepairFormViewModelImpl5;
                                                this.f57191f = thA2;
                                                this.g = 0;
                                                this.f57193i = 6;
                                                objU = distantRepairFormViewModelImpl5.D.u(NotificationBuilder.a(distantRepairFormViewModelImpl5.g, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60), this);
                                                if (objU != CoroutineSingletons.COROUTINE_SUSPENDED) {
                                                    objU = Unit.f71739a;
                                                }
                                                if (objU != coroutineSingletons) {
                                                    monitorAction6 = monitorAction2;
                                                    createCareServiceParam6 = createCareServiceParam2;
                                                    distantRepairFormViewModelImpl4 = distantRepairFormViewModelImpl5;
                                                    CareServiceId.INSTANCE.getClass();
                                                    String str35 = CareServiceId.f66878b;
                                                    distantRepairFormViewModelImpl4.getClass();
                                                    BuildersKt.c(ViewModelKt.a(distantRepairFormViewModelImpl4), null, null, new DistantRepairFormViewModelImpl$cancelCareService$1(distantRepairFormViewModelImpl4, createCareServiceParam6, str35, null), 3);
                                                    mutableStateFlow4 = distantRepairFormViewModelImpl4.t;
                                                    do {
                                                        value4 = mutableStateFlow4.getValue();
                                                        ((Boolean) value4).getClass();
                                                    } while (!mutableStateFlow4.i(value4, Boolean.FALSE));
                                                    distantRepairFormViewModelImpl4.f57156b.c("DistantRepairFormViewModelImpl", "Unable to create care service", thA2);
                                                    monitorAction2 = monitorAction6;
                                                }
                                            }
                                            mutableStateFlow3 = distantRepairFormViewModelImpl5.t;
                                            do {
                                                value3 = mutableStateFlow3.getValue();
                                                ((Boolean) value3).getClass();
                                            } while (!mutableStateFlow3.i(value3, Boolean.FALSE));
                                            monitorAction2.b();
                                            return Unit.f71739a;
                                        }
                                    }
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            distantRepairFormViewModelImpl = distantRepairFormViewModelImpl5;
                            str2 = str;
                            i2 = 0;
                            createCareServiceParam3 = createCareServiceParam;
                            Result.Companion companion5 = Result.INSTANCE;
                            failure2 = new Result.Failure(th);
                        }
                    }
                    break;
                }
                return coroutineSingletons;
            case 1:
                CreateCareServiceParam createCareServiceParam7 = this.f57189c;
                monitorAction = this.f57188b;
                ResultKt.b(obj);
                createCareServiceParam = createCareServiceParam7;
                obj2 = ((Result) obj).f71708b;
                Result.Companion companion6 = Result.INSTANCE;
                if (!(obj2 instanceof Result.Failure)) {
                    monitorAction2 = monitorAction;
                    createCareServiceParam2 = createCareServiceParam;
                    thA2 = Result.a(obj2);
                    if (thA2 != null) {
                        monitorAction2.d(new CareServicesMonitoring.Error.BookRepairError(thA2));
                        this.f57188b = monitorAction2;
                        this.f57189c = createCareServiceParam2;
                        this.d = obj2;
                        this.f57190e = distantRepairFormViewModelImpl5;
                        this.f57191f = thA2;
                        this.g = 0;
                        this.f57193i = 6;
                        objU = distantRepairFormViewModelImpl5.D.u(NotificationBuilder.a(distantRepairFormViewModelImpl5.g, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60), this);
                        if (objU != CoroutineSingletons.COROUTINE_SUSPENDED) {
                            objU = Unit.f71739a;
                        }
                        if (objU != coroutineSingletons) {
                            monitorAction6 = monitorAction2;
                            createCareServiceParam6 = createCareServiceParam2;
                            distantRepairFormViewModelImpl4 = distantRepairFormViewModelImpl5;
                            CareServiceId.INSTANCE.getClass();
                            String str36 = CareServiceId.f66878b;
                            distantRepairFormViewModelImpl4.getClass();
                            BuildersKt.c(ViewModelKt.a(distantRepairFormViewModelImpl4), null, null, new DistantRepairFormViewModelImpl$cancelCareService$1(distantRepairFormViewModelImpl4, createCareServiceParam6, str36, null), 3);
                            mutableStateFlow4 = distantRepairFormViewModelImpl4.t;
                            do {
                                value4 = mutableStateFlow4.getValue();
                                ((Boolean) value4).getClass();
                            } while (!mutableStateFlow4.i(value4, Boolean.FALSE));
                            distantRepairFormViewModelImpl4.f57156b.c("DistantRepairFormViewModelImpl", "Unable to create care service", thA2);
                            monitorAction2 = monitorAction6;
                        }
                    }
                    mutableStateFlow3 = distantRepairFormViewModelImpl5.t;
                    do {
                        value3 = mutableStateFlow3.getValue();
                        ((Boolean) value3).getClass();
                    } while (!mutableStateFlow3.i(value3, Boolean.FALSE));
                    monitorAction2.b();
                    return Unit.f71739a;
                }
                str = ((CareServiceId) obj2).f66879a;
                monitorAction.c(str, "repairId");
                mutableStateFlow = distantRepairFormViewModelImpl5.z;
                do {
                    value = mutableStateFlow.getValue();
                    ((CareServiceIdUiModel) value).getClass();
                    CareServiceIdUiModel.f64059c.getClass();
                } while (!mutableStateFlow.i(value, new CareServiceIdUiModel(str)));
                profile = ((Step2StateUIModel) mutableStateFlow5.getValue()).f57404a;
                Result.Companion companion7 = Result.INSTANCE;
                timeSlotUiModel = ((Step1StateUIModel) mutableStateFlow6.getValue()).f57402b;
                if (timeSlotUiModel != null) {
                    str3 = timeSlotUiModel.f57418e;
                } else {
                    str3 = null;
                }
                if (str3 == null) {
                    str4 = "";
                } else {
                    str4 = str3;
                }
                Object objA4 = DistantRepairContactMethodKt.a(((Step1StateUIModel) mutableStateFlow6.getValue()).f57401a);
                ResultKt.b(objA4);
                AppointmentType appointmentType2 = (AppointmentType) objA4;
                timeSlotUiModel2 = ((Step1StateUIModel) mutableStateFlow6.getValue()).f57402b;
                if (timeSlotUiModel2 != null) {
                    str5 = timeSlotUiModel2.f57416b;
                } else {
                    str5 = null;
                }
                if (str5 == null) {
                    str6 = "";
                } else {
                    str6 = str5;
                }
                profile2 = ((Step2StateUIModel) mutableStateFlow5.getValue()).f57404a;
                if (profile2 != null) {
                    str7 = profile2.g;
                } else {
                    str7 = null;
                }
                if (str7 == null) {
                    str8 = "";
                } else {
                    str8 = str7;
                }
                if (profile != null) {
                    str9 = profile.f68166c;
                } else {
                    str9 = null;
                }
                if (str9 == null) {
                    str10 = "";
                } else {
                    str10 = str9;
                }
                if (profile != null) {
                    str11 = profile.f68167e;
                } else {
                    str11 = null;
                }
                if (str11 == null) {
                    str12 = "";
                } else {
                    str12 = str11;
                }
                String str37 = inAppDispatch.f67483j;
                String strValueOf2 = String.valueOf(((Step2StateUIModel) mutableStateFlow5.getValue()).f57405b);
                phoneNumber = ((Step2StateUIModel) mutableStateFlow5.getValue()).f57405b;
                if (phoneNumber != null) {
                    str13 = phoneNumber.f57392a;
                } else {
                    str13 = null;
                }
                if (str13 == null) {
                    str14 = "";
                } else {
                    str14 = str13;
                }
                phoneNumber2 = ((Step2StateUIModel) mutableStateFlow5.getValue()).f57405b;
                if (phoneNumber2 != null) {
                    str15 = phoneNumber2.f57393b;
                } else {
                    str15 = null;
                }
                if (str15 == null) {
                    str16 = "";
                } else {
                    str16 = str15;
                }
                String value7 = PhoneNumber.Type.MOBILE.getValue();
                List list3 = ProfileHelper.f52681a;
                if (profile != null) {
                    str17 = profile.f68169h;
                } else {
                    str17 = null;
                }
                StringResourceUiModel stringResourceUiModelA2 = ProfileHelper.a(str17);
                application.getClass();
                String strA2 = StringResourceUiModelKt.a(stringResourceUiModelA2, application);
                if (profile != null) {
                    str18 = profile.f68169h;
                } else {
                    str18 = null;
                }
                if (str18 == null) {
                    str19 = "";
                } else {
                    str19 = str18;
                }
                failure = new Result(new Appointment(str4, appointmentType2, str6, str8, str10, str12, str37, strValueOf2, str14, str16, value7, strA2, str, str19, false, new String(), null, 65536, null));
                thA = Result.a(failure);
                if (thA != null) {
                    if (!(thA instanceof CancellationException)) {
                        throw thA;
                    }
                    failure = new Result(new Result.Failure(thA));
                }
                failure2 = ((Result) failure).f71708b;
                if (failure2 instanceof Result.Failure) {
                    ConfirmAppointmentUseCase confirmAppointmentUseCase2 = distantRepairFormViewModelImpl5.o;
                    this.f57188b = monitorAction;
                    this.f57189c = createCareServiceParam;
                    this.d = obj2;
                    this.f57190e = distantRepairFormViewModelImpl5;
                    this.f57191f = str;
                    this.g = 0;
                    this.f57193i = 2;
                    objA = confirmAppointmentUseCase2.a((Appointment) failure2, false, this);
                    if (objA != coroutineSingletons) {
                        distantRepairFormViewModelImpl = distantRepairFormViewModelImpl5;
                        str2 = str;
                        i2 = 0;
                        createCareServiceParam3 = createCareServiceParam;
                        ResultKt.b(objA);
                        failure2 = (OsaItem) objA;
                        Result.Companion companion8 = Result.INSTANCE;
                        DistantRepairFormViewModelImpl distantRepairFormViewModelImpl7 = distantRepairFormViewModelImpl;
                        i3 = i2;
                        distantRepairFormViewModelImpl2 = distantRepairFormViewModelImpl7;
                        createCareServiceParam = createCareServiceParam3;
                        boolean z4 = failure2 instanceof Result.Failure;
                        z = !z4;
                        if (((Step1StateUIModel) distantRepairFormViewModelImpl2.v.getValue()).f57401a == DistantRepairContactMethod.EMAIL) {
                            ServiceRepairActions serviceRepairActions4 = ServiceRepairActions.BOOKED;
                            str20 = ((DistantRepairsConfigUiModel) distantRepairFormViewModelImpl2.B.getValue()).f64006f;
                            if (((Step1StateUIModel) distantRepairFormViewModelImpl2.v.getValue()).f57402b == null) {
                                str20 = null;
                            }
                            distantRepairFormViewModelImpl2.Cc(serviceRepairActions4, str20);
                            bufferedChannel = distantRepairFormViewModelImpl2.E;
                            result = new Result(Boolean.TRUE);
                            this.f57188b = monitorAction;
                            this.f57189c = createCareServiceParam;
                            this.d = obj2;
                            this.f57190e = distantRepairFormViewModelImpl2;
                            this.f57191f = null;
                            this.g = i3;
                            this.f57192h = z;
                            this.f57193i = 3;
                            if (bufferedChannel.u(result, this) != coroutineSingletons) {
                                distantRepairFormViewModelImpl3 = distantRepairFormViewModelImpl2;
                                obj3 = obj2;
                                monitorAction3 = monitorAction;
                                createCareServiceParam4 = createCareServiceParam;
                                lVEventSender = distantRepairFormViewModelImpl3.d;
                                this.f57188b = monitorAction3;
                                this.f57189c = createCareServiceParam4;
                                this.d = obj3;
                                this.f57190e = distantRepairFormViewModelImpl3;
                                this.f57191f = null;
                                this.g = i3;
                                this.f57192h = z;
                                this.f57193i = 4;
                                if (lVEventSender.a(AppEvent.RefreshRepairsEvent.f43505a, this) != coroutineSingletons) {
                                    monitorAction5 = monitorAction3;
                                    distantRepairFormViewModelImpl3.f57161i.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.RepairCreationConfirmationScreen.f57442a));
                                    mutableStateFlow2 = distantRepairFormViewModelImpl3.u;
                                    do {
                                        value2 = mutableStateFlow2.getValue();
                                    } while (!mutableStateFlow2.i(value2, FormStateUIModel.b((FormStateUIModel) value2, null, FormState.CONFIRMED, 7)));
                                    obj2 = obj3;
                                    monitorAction2 = monitorAction5;
                                    createCareServiceParam5 = createCareServiceParam4;
                                    createCareServiceParam2 = createCareServiceParam5;
                                    thA2 = Result.a(obj2);
                                    if (thA2 != null) {
                                        monitorAction2.d(new CareServicesMonitoring.Error.BookRepairError(thA2));
                                        this.f57188b = monitorAction2;
                                        this.f57189c = createCareServiceParam2;
                                        this.d = obj2;
                                        this.f57190e = distantRepairFormViewModelImpl5;
                                        this.f57191f = thA2;
                                        this.g = 0;
                                        this.f57193i = 6;
                                        objU = distantRepairFormViewModelImpl5.D.u(NotificationBuilder.a(distantRepairFormViewModelImpl5.g, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60), this);
                                        if (objU != CoroutineSingletons.COROUTINE_SUSPENDED) {
                                            objU = Unit.f71739a;
                                        }
                                        if (objU != coroutineSingletons) {
                                            monitorAction6 = monitorAction2;
                                            createCareServiceParam6 = createCareServiceParam2;
                                            distantRepairFormViewModelImpl4 = distantRepairFormViewModelImpl5;
                                            CareServiceId.INSTANCE.getClass();
                                            String str38 = CareServiceId.f66878b;
                                            distantRepairFormViewModelImpl4.getClass();
                                            BuildersKt.c(ViewModelKt.a(distantRepairFormViewModelImpl4), null, null, new DistantRepairFormViewModelImpl$cancelCareService$1(distantRepairFormViewModelImpl4, createCareServiceParam6, str38, null), 3);
                                            mutableStateFlow4 = distantRepairFormViewModelImpl4.t;
                                            do {
                                                value4 = mutableStateFlow4.getValue();
                                                ((Boolean) value4).getClass();
                                            } while (!mutableStateFlow4.i(value4, Boolean.FALSE));
                                            distantRepairFormViewModelImpl4.f57156b.c("DistantRepairFormViewModelImpl", "Unable to create care service", thA2);
                                            monitorAction2 = monitorAction6;
                                        }
                                    }
                                    mutableStateFlow3 = distantRepairFormViewModelImpl5.t;
                                    do {
                                        value3 = mutableStateFlow3.getValue();
                                        ((Boolean) value3).getClass();
                                    } while (!mutableStateFlow3.i(value3, Boolean.FALSE));
                                    monitorAction2.b();
                                    return Unit.f71739a;
                                }
                            }
                        } else {
                            ServiceRepairActions serviceRepairActions5 = ServiceRepairActions.BOOKED;
                            str20 = ((DistantRepairsConfigUiModel) distantRepairFormViewModelImpl2.B.getValue()).f64006f;
                            if (((Step1StateUIModel) distantRepairFormViewModelImpl2.v.getValue()).f57402b == null) {
                                str20 = null;
                            }
                            distantRepairFormViewModelImpl2.Cc(serviceRepairActions5, str20);
                            bufferedChannel = distantRepairFormViewModelImpl2.E;
                            result = new Result(Boolean.TRUE);
                            this.f57188b = monitorAction;
                            this.f57189c = createCareServiceParam;
                            this.d = obj2;
                            this.f57190e = distantRepairFormViewModelImpl2;
                            this.f57191f = null;
                            this.g = i3;
                            this.f57192h = z;
                            this.f57193i = 3;
                            if (bufferedChannel.u(result, this) != coroutineSingletons) {
                                distantRepairFormViewModelImpl3 = distantRepairFormViewModelImpl2;
                                obj3 = obj2;
                                monitorAction3 = monitorAction;
                                createCareServiceParam4 = createCareServiceParam;
                                lVEventSender = distantRepairFormViewModelImpl3.d;
                                this.f57188b = monitorAction3;
                                this.f57189c = createCareServiceParam4;
                                this.d = obj3;
                                this.f57190e = distantRepairFormViewModelImpl3;
                                this.f57191f = null;
                                this.g = i3;
                                this.f57192h = z;
                                this.f57193i = 4;
                                if (lVEventSender.a(AppEvent.RefreshRepairsEvent.f43505a, this) != coroutineSingletons) {
                                    monitorAction5 = monitorAction3;
                                    distantRepairFormViewModelImpl3.f57161i.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.RepairCreationConfirmationScreen.f57442a));
                                    mutableStateFlow2 = distantRepairFormViewModelImpl3.u;
                                    do {
                                        value2 = mutableStateFlow2.getValue();
                                    } while (!mutableStateFlow2.i(value2, FormStateUIModel.b((FormStateUIModel) value2, null, FormState.CONFIRMED, 7)));
                                    obj2 = obj3;
                                    monitorAction2 = monitorAction5;
                                    createCareServiceParam5 = createCareServiceParam4;
                                    createCareServiceParam2 = createCareServiceParam5;
                                    thA2 = Result.a(obj2);
                                    if (thA2 != null) {
                                        monitorAction2.d(new CareServicesMonitoring.Error.BookRepairError(thA2));
                                        this.f57188b = monitorAction2;
                                        this.f57189c = createCareServiceParam2;
                                        this.d = obj2;
                                        this.f57190e = distantRepairFormViewModelImpl5;
                                        this.f57191f = thA2;
                                        this.g = 0;
                                        this.f57193i = 6;
                                        objU = distantRepairFormViewModelImpl5.D.u(NotificationBuilder.a(distantRepairFormViewModelImpl5.g, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60), this);
                                        if (objU != CoroutineSingletons.COROUTINE_SUSPENDED) {
                                            objU = Unit.f71739a;
                                        }
                                        if (objU != coroutineSingletons) {
                                            monitorAction6 = monitorAction2;
                                            createCareServiceParam6 = createCareServiceParam2;
                                            distantRepairFormViewModelImpl4 = distantRepairFormViewModelImpl5;
                                            CareServiceId.INSTANCE.getClass();
                                            String str39 = CareServiceId.f66878b;
                                            distantRepairFormViewModelImpl4.getClass();
                                            BuildersKt.c(ViewModelKt.a(distantRepairFormViewModelImpl4), null, null, new DistantRepairFormViewModelImpl$cancelCareService$1(distantRepairFormViewModelImpl4, createCareServiceParam6, str39, null), 3);
                                            mutableStateFlow4 = distantRepairFormViewModelImpl4.t;
                                            do {
                                                value4 = mutableStateFlow4.getValue();
                                                ((Boolean) value4).getClass();
                                            } while (!mutableStateFlow4.i(value4, Boolean.FALSE));
                                            distantRepairFormViewModelImpl4.f57156b.c("DistantRepairFormViewModelImpl", "Unable to create care service", thA2);
                                            monitorAction2 = monitorAction6;
                                        }
                                    }
                                    mutableStateFlow3 = distantRepairFormViewModelImpl5.t;
                                    do {
                                        value3 = mutableStateFlow3.getValue();
                                        ((Boolean) value3).getClass();
                                    } while (!mutableStateFlow3.i(value3, Boolean.FALSE));
                                    monitorAction2.b();
                                    return Unit.f71739a;
                                }
                            }
                        }
                    }
                } else {
                    distantRepairFormViewModelImpl2 = distantRepairFormViewModelImpl5;
                    str2 = str;
                    i3 = 0;
                    boolean z5 = failure2 instanceof Result.Failure;
                    z = !z5;
                    if (((Step1StateUIModel) distantRepairFormViewModelImpl2.v.getValue()).f57401a == DistantRepairContactMethod.EMAIL) {
                        ServiceRepairActions serviceRepairActions6 = ServiceRepairActions.BOOKED;
                        str20 = ((DistantRepairsConfigUiModel) distantRepairFormViewModelImpl2.B.getValue()).f64006f;
                        if (((Step1StateUIModel) distantRepairFormViewModelImpl2.v.getValue()).f57402b == null) {
                            str20 = null;
                        }
                        distantRepairFormViewModelImpl2.Cc(serviceRepairActions6, str20);
                        bufferedChannel = distantRepairFormViewModelImpl2.E;
                        result = new Result(Boolean.TRUE);
                        this.f57188b = monitorAction;
                        this.f57189c = createCareServiceParam;
                        this.d = obj2;
                        this.f57190e = distantRepairFormViewModelImpl2;
                        this.f57191f = null;
                        this.g = i3;
                        this.f57192h = z;
                        this.f57193i = 3;
                        if (bufferedChannel.u(result, this) != coroutineSingletons) {
                            distantRepairFormViewModelImpl3 = distantRepairFormViewModelImpl2;
                            obj3 = obj2;
                            monitorAction3 = monitorAction;
                            createCareServiceParam4 = createCareServiceParam;
                            lVEventSender = distantRepairFormViewModelImpl3.d;
                            this.f57188b = monitorAction3;
                            this.f57189c = createCareServiceParam4;
                            this.d = obj3;
                            this.f57190e = distantRepairFormViewModelImpl3;
                            this.f57191f = null;
                            this.g = i3;
                            this.f57192h = z;
                            this.f57193i = 4;
                            if (lVEventSender.a(AppEvent.RefreshRepairsEvent.f43505a, this) != coroutineSingletons) {
                                monitorAction5 = monitorAction3;
                                distantRepairFormViewModelImpl3.f57161i.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.RepairCreationConfirmationScreen.f57442a));
                                mutableStateFlow2 = distantRepairFormViewModelImpl3.u;
                                do {
                                    value2 = mutableStateFlow2.getValue();
                                } while (!mutableStateFlow2.i(value2, FormStateUIModel.b((FormStateUIModel) value2, null, FormState.CONFIRMED, 7)));
                                obj2 = obj3;
                                monitorAction2 = monitorAction5;
                                createCareServiceParam5 = createCareServiceParam4;
                                createCareServiceParam2 = createCareServiceParam5;
                                thA2 = Result.a(obj2);
                                if (thA2 != null) {
                                    monitorAction2.d(new CareServicesMonitoring.Error.BookRepairError(thA2));
                                    this.f57188b = monitorAction2;
                                    this.f57189c = createCareServiceParam2;
                                    this.d = obj2;
                                    this.f57190e = distantRepairFormViewModelImpl5;
                                    this.f57191f = thA2;
                                    this.g = 0;
                                    this.f57193i = 6;
                                    objU = distantRepairFormViewModelImpl5.D.u(NotificationBuilder.a(distantRepairFormViewModelImpl5.g, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60), this);
                                    if (objU != CoroutineSingletons.COROUTINE_SUSPENDED) {
                                        objU = Unit.f71739a;
                                    }
                                    if (objU != coroutineSingletons) {
                                        monitorAction6 = monitorAction2;
                                        createCareServiceParam6 = createCareServiceParam2;
                                        distantRepairFormViewModelImpl4 = distantRepairFormViewModelImpl5;
                                        CareServiceId.INSTANCE.getClass();
                                        String str310 = CareServiceId.f66878b;
                                        distantRepairFormViewModelImpl4.getClass();
                                        BuildersKt.c(ViewModelKt.a(distantRepairFormViewModelImpl4), null, null, new DistantRepairFormViewModelImpl$cancelCareService$1(distantRepairFormViewModelImpl4, createCareServiceParam6, str310, null), 3);
                                        mutableStateFlow4 = distantRepairFormViewModelImpl4.t;
                                        do {
                                            value4 = mutableStateFlow4.getValue();
                                            ((Boolean) value4).getClass();
                                        } while (!mutableStateFlow4.i(value4, Boolean.FALSE));
                                        distantRepairFormViewModelImpl4.f57156b.c("DistantRepairFormViewModelImpl", "Unable to create care service", thA2);
                                        monitorAction2 = monitorAction6;
                                    }
                                }
                                mutableStateFlow3 = distantRepairFormViewModelImpl5.t;
                                do {
                                    value3 = mutableStateFlow3.getValue();
                                    ((Boolean) value3).getClass();
                                } while (!mutableStateFlow3.i(value3, Boolean.FALSE));
                                monitorAction2.b();
                                return Unit.f71739a;
                            }
                        }
                    } else {
                        ServiceRepairActions serviceRepairActions7 = ServiceRepairActions.BOOKED;
                        str20 = ((DistantRepairsConfigUiModel) distantRepairFormViewModelImpl2.B.getValue()).f64006f;
                        if (((Step1StateUIModel) distantRepairFormViewModelImpl2.v.getValue()).f57402b == null) {
                            str20 = null;
                        }
                        distantRepairFormViewModelImpl2.Cc(serviceRepairActions7, str20);
                        bufferedChannel = distantRepairFormViewModelImpl2.E;
                        result = new Result(Boolean.TRUE);
                        this.f57188b = monitorAction;
                        this.f57189c = createCareServiceParam;
                        this.d = obj2;
                        this.f57190e = distantRepairFormViewModelImpl2;
                        this.f57191f = null;
                        this.g = i3;
                        this.f57192h = z;
                        this.f57193i = 3;
                        if (bufferedChannel.u(result, this) != coroutineSingletons) {
                            distantRepairFormViewModelImpl3 = distantRepairFormViewModelImpl2;
                            obj3 = obj2;
                            monitorAction3 = monitorAction;
                            createCareServiceParam4 = createCareServiceParam;
                            lVEventSender = distantRepairFormViewModelImpl3.d;
                            this.f57188b = monitorAction3;
                            this.f57189c = createCareServiceParam4;
                            this.d = obj3;
                            this.f57190e = distantRepairFormViewModelImpl3;
                            this.f57191f = null;
                            this.g = i3;
                            this.f57192h = z;
                            this.f57193i = 4;
                            if (lVEventSender.a(AppEvent.RefreshRepairsEvent.f43505a, this) != coroutineSingletons) {
                                monitorAction5 = monitorAction3;
                                distantRepairFormViewModelImpl3.f57161i.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.RepairCreationConfirmationScreen.f57442a));
                                mutableStateFlow2 = distantRepairFormViewModelImpl3.u;
                                do {
                                    value2 = mutableStateFlow2.getValue();
                                } while (!mutableStateFlow2.i(value2, FormStateUIModel.b((FormStateUIModel) value2, null, FormState.CONFIRMED, 7)));
                                obj2 = obj3;
                                monitorAction2 = monitorAction5;
                                createCareServiceParam5 = createCareServiceParam4;
                                createCareServiceParam2 = createCareServiceParam5;
                                thA2 = Result.a(obj2);
                                if (thA2 != null) {
                                    monitorAction2.d(new CareServicesMonitoring.Error.BookRepairError(thA2));
                                    this.f57188b = monitorAction2;
                                    this.f57189c = createCareServiceParam2;
                                    this.d = obj2;
                                    this.f57190e = distantRepairFormViewModelImpl5;
                                    this.f57191f = thA2;
                                    this.g = 0;
                                    this.f57193i = 6;
                                    objU = distantRepairFormViewModelImpl5.D.u(NotificationBuilder.a(distantRepairFormViewModelImpl5.g, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60), this);
                                    if (objU != CoroutineSingletons.COROUTINE_SUSPENDED) {
                                        objU = Unit.f71739a;
                                    }
                                    if (objU != coroutineSingletons) {
                                        monitorAction6 = monitorAction2;
                                        createCareServiceParam6 = createCareServiceParam2;
                                        distantRepairFormViewModelImpl4 = distantRepairFormViewModelImpl5;
                                        CareServiceId.INSTANCE.getClass();
                                        String str311 = CareServiceId.f66878b;
                                        distantRepairFormViewModelImpl4.getClass();
                                        BuildersKt.c(ViewModelKt.a(distantRepairFormViewModelImpl4), null, null, new DistantRepairFormViewModelImpl$cancelCareService$1(distantRepairFormViewModelImpl4, createCareServiceParam6, str311, null), 3);
                                        mutableStateFlow4 = distantRepairFormViewModelImpl4.t;
                                        do {
                                            value4 = mutableStateFlow4.getValue();
                                            ((Boolean) value4).getClass();
                                        } while (!mutableStateFlow4.i(value4, Boolean.FALSE));
                                        distantRepairFormViewModelImpl4.f57156b.c("DistantRepairFormViewModelImpl", "Unable to create care service", thA2);
                                        monitorAction2 = monitorAction6;
                                    }
                                }
                                mutableStateFlow3 = distantRepairFormViewModelImpl5.t;
                                do {
                                    value3 = mutableStateFlow3.getValue();
                                    ((Boolean) value3).getClass();
                                } while (!mutableStateFlow3.i(value3, Boolean.FALSE));
                                monitorAction2.b();
                                return Unit.f71739a;
                            }
                        }
                    }
                }
                return coroutineSingletons;
            case 2:
                i2 = this.g;
                str2 = (String) this.f57191f;
                distantRepairFormViewModelImpl = this.f57190e;
                obj2 = this.d;
                createCareServiceParam3 = this.f57189c;
                monitorAction = this.f57188b;
                try {
                    ResultKt.b(obj);
                    objA = ((Result) obj).f71708b;
                    ResultKt.b(objA);
                    failure2 = (OsaItem) objA;
                    Result.Companion companion9 = Result.INSTANCE;
                    break;
                } catch (Throwable th4) {
                    th = th4;
                    Result.Companion companion10 = Result.INSTANCE;
                    failure2 = new Result.Failure(th);
                }
                DistantRepairFormViewModelImpl distantRepairFormViewModelImpl8 = distantRepairFormViewModelImpl;
                i3 = i2;
                distantRepairFormViewModelImpl2 = distantRepairFormViewModelImpl8;
                createCareServiceParam = createCareServiceParam3;
                boolean z6 = failure2 instanceof Result.Failure;
                z = !z6;
                if (((Step1StateUIModel) distantRepairFormViewModelImpl2.v.getValue()).f57401a == DistantRepairContactMethod.EMAIL) {
                    ServiceRepairActions serviceRepairActions8 = ServiceRepairActions.BOOKED;
                    str20 = ((DistantRepairsConfigUiModel) distantRepairFormViewModelImpl2.B.getValue()).f64006f;
                    if (((Step1StateUIModel) distantRepairFormViewModelImpl2.v.getValue()).f57402b == null) {
                        str20 = null;
                    }
                    distantRepairFormViewModelImpl2.Cc(serviceRepairActions8, str20);
                    bufferedChannel = distantRepairFormViewModelImpl2.E;
                    result = new Result(Boolean.TRUE);
                    this.f57188b = monitorAction;
                    this.f57189c = createCareServiceParam;
                    this.d = obj2;
                    this.f57190e = distantRepairFormViewModelImpl2;
                    this.f57191f = null;
                    this.g = i3;
                    this.f57192h = z;
                    this.f57193i = 3;
                    if (bufferedChannel.u(result, this) != coroutineSingletons) {
                        distantRepairFormViewModelImpl3 = distantRepairFormViewModelImpl2;
                        obj3 = obj2;
                        monitorAction3 = monitorAction;
                        createCareServiceParam4 = createCareServiceParam;
                        lVEventSender = distantRepairFormViewModelImpl3.d;
                        this.f57188b = monitorAction3;
                        this.f57189c = createCareServiceParam4;
                        this.d = obj3;
                        this.f57190e = distantRepairFormViewModelImpl3;
                        this.f57191f = null;
                        this.g = i3;
                        this.f57192h = z;
                        this.f57193i = 4;
                        if (lVEventSender.a(AppEvent.RefreshRepairsEvent.f43505a, this) != coroutineSingletons) {
                            monitorAction5 = monitorAction3;
                            distantRepairFormViewModelImpl3.f57161i.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.RepairCreationConfirmationScreen.f57442a));
                            mutableStateFlow2 = distantRepairFormViewModelImpl3.u;
                            do {
                                value2 = mutableStateFlow2.getValue();
                            } while (!mutableStateFlow2.i(value2, FormStateUIModel.b((FormStateUIModel) value2, null, FormState.CONFIRMED, 7)));
                            obj2 = obj3;
                            monitorAction2 = monitorAction5;
                            createCareServiceParam5 = createCareServiceParam4;
                            createCareServiceParam2 = createCareServiceParam5;
                            thA2 = Result.a(obj2);
                            if (thA2 != null) {
                                monitorAction2.d(new CareServicesMonitoring.Error.BookRepairError(thA2));
                                this.f57188b = monitorAction2;
                                this.f57189c = createCareServiceParam2;
                                this.d = obj2;
                                this.f57190e = distantRepairFormViewModelImpl5;
                                this.f57191f = thA2;
                                this.g = 0;
                                this.f57193i = 6;
                                objU = distantRepairFormViewModelImpl5.D.u(NotificationBuilder.a(distantRepairFormViewModelImpl5.g, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60), this);
                                if (objU != CoroutineSingletons.COROUTINE_SUSPENDED) {
                                    objU = Unit.f71739a;
                                }
                                if (objU != coroutineSingletons) {
                                    monitorAction6 = monitorAction2;
                                    createCareServiceParam6 = createCareServiceParam2;
                                    distantRepairFormViewModelImpl4 = distantRepairFormViewModelImpl5;
                                    CareServiceId.INSTANCE.getClass();
                                    String str312 = CareServiceId.f66878b;
                                    distantRepairFormViewModelImpl4.getClass();
                                    BuildersKt.c(ViewModelKt.a(distantRepairFormViewModelImpl4), null, null, new DistantRepairFormViewModelImpl$cancelCareService$1(distantRepairFormViewModelImpl4, createCareServiceParam6, str312, null), 3);
                                    mutableStateFlow4 = distantRepairFormViewModelImpl4.t;
                                    do {
                                        value4 = mutableStateFlow4.getValue();
                                        ((Boolean) value4).getClass();
                                    } while (!mutableStateFlow4.i(value4, Boolean.FALSE));
                                    distantRepairFormViewModelImpl4.f57156b.c("DistantRepairFormViewModelImpl", "Unable to create care service", thA2);
                                    monitorAction2 = monitorAction6;
                                }
                            }
                            mutableStateFlow3 = distantRepairFormViewModelImpl5.t;
                            do {
                                value3 = mutableStateFlow3.getValue();
                                ((Boolean) value3).getClass();
                            } while (!mutableStateFlow3.i(value3, Boolean.FALSE));
                            monitorAction2.b();
                            return Unit.f71739a;
                        }
                    }
                } else {
                    ServiceRepairActions serviceRepairActions9 = ServiceRepairActions.BOOKED;
                    str20 = ((DistantRepairsConfigUiModel) distantRepairFormViewModelImpl2.B.getValue()).f64006f;
                    if (((Step1StateUIModel) distantRepairFormViewModelImpl2.v.getValue()).f57402b == null) {
                        str20 = null;
                    }
                    distantRepairFormViewModelImpl2.Cc(serviceRepairActions9, str20);
                    bufferedChannel = distantRepairFormViewModelImpl2.E;
                    result = new Result(Boolean.TRUE);
                    this.f57188b = monitorAction;
                    this.f57189c = createCareServiceParam;
                    this.d = obj2;
                    this.f57190e = distantRepairFormViewModelImpl2;
                    this.f57191f = null;
                    this.g = i3;
                    this.f57192h = z;
                    this.f57193i = 3;
                    if (bufferedChannel.u(result, this) != coroutineSingletons) {
                        distantRepairFormViewModelImpl3 = distantRepairFormViewModelImpl2;
                        obj3 = obj2;
                        monitorAction3 = monitorAction;
                        createCareServiceParam4 = createCareServiceParam;
                        lVEventSender = distantRepairFormViewModelImpl3.d;
                        this.f57188b = monitorAction3;
                        this.f57189c = createCareServiceParam4;
                        this.d = obj3;
                        this.f57190e = distantRepairFormViewModelImpl3;
                        this.f57191f = null;
                        this.g = i3;
                        this.f57192h = z;
                        this.f57193i = 4;
                        if (lVEventSender.a(AppEvent.RefreshRepairsEvent.f43505a, this) != coroutineSingletons) {
                            monitorAction5 = monitorAction3;
                            distantRepairFormViewModelImpl3.f57161i.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.RepairCreationConfirmationScreen.f57442a));
                            mutableStateFlow2 = distantRepairFormViewModelImpl3.u;
                            do {
                                value2 = mutableStateFlow2.getValue();
                            } while (!mutableStateFlow2.i(value2, FormStateUIModel.b((FormStateUIModel) value2, null, FormState.CONFIRMED, 7)));
                            obj2 = obj3;
                            monitorAction2 = monitorAction5;
                            createCareServiceParam5 = createCareServiceParam4;
                            createCareServiceParam2 = createCareServiceParam5;
                            thA2 = Result.a(obj2);
                            if (thA2 != null) {
                                monitorAction2.d(new CareServicesMonitoring.Error.BookRepairError(thA2));
                                this.f57188b = monitorAction2;
                                this.f57189c = createCareServiceParam2;
                                this.d = obj2;
                                this.f57190e = distantRepairFormViewModelImpl5;
                                this.f57191f = thA2;
                                this.g = 0;
                                this.f57193i = 6;
                                objU = distantRepairFormViewModelImpl5.D.u(NotificationBuilder.a(distantRepairFormViewModelImpl5.g, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60), this);
                                if (objU != CoroutineSingletons.COROUTINE_SUSPENDED) {
                                    objU = Unit.f71739a;
                                }
                                if (objU != coroutineSingletons) {
                                    monitorAction6 = monitorAction2;
                                    createCareServiceParam6 = createCareServiceParam2;
                                    distantRepairFormViewModelImpl4 = distantRepairFormViewModelImpl5;
                                    CareServiceId.INSTANCE.getClass();
                                    String str313 = CareServiceId.f66878b;
                                    distantRepairFormViewModelImpl4.getClass();
                                    BuildersKt.c(ViewModelKt.a(distantRepairFormViewModelImpl4), null, null, new DistantRepairFormViewModelImpl$cancelCareService$1(distantRepairFormViewModelImpl4, createCareServiceParam6, str313, null), 3);
                                    mutableStateFlow4 = distantRepairFormViewModelImpl4.t;
                                    do {
                                        value4 = mutableStateFlow4.getValue();
                                        ((Boolean) value4).getClass();
                                    } while (!mutableStateFlow4.i(value4, Boolean.FALSE));
                                    distantRepairFormViewModelImpl4.f57156b.c("DistantRepairFormViewModelImpl", "Unable to create care service", thA2);
                                    monitorAction2 = monitorAction6;
                                }
                            }
                            mutableStateFlow3 = distantRepairFormViewModelImpl5.t;
                            do {
                                value3 = mutableStateFlow3.getValue();
                                ((Boolean) value3).getClass();
                            } while (!mutableStateFlow3.i(value3, Boolean.FALSE));
                            monitorAction2.b();
                            return Unit.f71739a;
                        }
                    }
                }
                return coroutineSingletons;
            case 3:
                boolean z7 = this.f57192h;
                int i4 = this.g;
                DistantRepairFormViewModelImpl distantRepairFormViewModelImpl9 = this.f57190e;
                Object obj5 = this.d;
                CreateCareServiceParam createCareServiceParam8 = this.f57189c;
                monitorAction3 = this.f57188b;
                ResultKt.b(obj);
                i3 = i4;
                obj3 = obj5;
                z = z7;
                distantRepairFormViewModelImpl3 = distantRepairFormViewModelImpl9;
                createCareServiceParam4 = createCareServiceParam8;
                lVEventSender = distantRepairFormViewModelImpl3.d;
                this.f57188b = monitorAction3;
                this.f57189c = createCareServiceParam4;
                this.d = obj3;
                this.f57190e = distantRepairFormViewModelImpl3;
                this.f57191f = null;
                this.g = i3;
                this.f57192h = z;
                this.f57193i = 4;
                if (lVEventSender.a(AppEvent.RefreshRepairsEvent.f43505a, this) != coroutineSingletons) {
                    monitorAction5 = monitorAction3;
                    distantRepairFormViewModelImpl3.f57161i.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.RepairCreationConfirmationScreen.f57442a));
                    mutableStateFlow2 = distantRepairFormViewModelImpl3.u;
                    do {
                        value2 = mutableStateFlow2.getValue();
                    } while (!mutableStateFlow2.i(value2, FormStateUIModel.b((FormStateUIModel) value2, null, FormState.CONFIRMED, 7)));
                    obj2 = obj3;
                    monitorAction2 = monitorAction5;
                    createCareServiceParam5 = createCareServiceParam4;
                    createCareServiceParam2 = createCareServiceParam5;
                    thA2 = Result.a(obj2);
                    if (thA2 != null) {
                        monitorAction2.d(new CareServicesMonitoring.Error.BookRepairError(thA2));
                        this.f57188b = monitorAction2;
                        this.f57189c = createCareServiceParam2;
                        this.d = obj2;
                        this.f57190e = distantRepairFormViewModelImpl5;
                        this.f57191f = thA2;
                        this.g = 0;
                        this.f57193i = 6;
                        objU = distantRepairFormViewModelImpl5.D.u(NotificationBuilder.a(distantRepairFormViewModelImpl5.g, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60), this);
                        if (objU != CoroutineSingletons.COROUTINE_SUSPENDED) {
                            objU = Unit.f71739a;
                        }
                        if (objU != coroutineSingletons) {
                            monitorAction6 = monitorAction2;
                            createCareServiceParam6 = createCareServiceParam2;
                            distantRepairFormViewModelImpl4 = distantRepairFormViewModelImpl5;
                            CareServiceId.INSTANCE.getClass();
                            String str314 = CareServiceId.f66878b;
                            distantRepairFormViewModelImpl4.getClass();
                            BuildersKt.c(ViewModelKt.a(distantRepairFormViewModelImpl4), null, null, new DistantRepairFormViewModelImpl$cancelCareService$1(distantRepairFormViewModelImpl4, createCareServiceParam6, str314, null), 3);
                            mutableStateFlow4 = distantRepairFormViewModelImpl4.t;
                            do {
                                value4 = mutableStateFlow4.getValue();
                                ((Boolean) value4).getClass();
                            } while (!mutableStateFlow4.i(value4, Boolean.FALSE));
                            distantRepairFormViewModelImpl4.f57156b.c("DistantRepairFormViewModelImpl", "Unable to create care service", thA2);
                            monitorAction2 = monitorAction6;
                        }
                    }
                    mutableStateFlow3 = distantRepairFormViewModelImpl5.t;
                    do {
                        value3 = mutableStateFlow3.getValue();
                        ((Boolean) value3).getClass();
                    } while (!mutableStateFlow3.i(value3, Boolean.FALSE));
                    monitorAction2.b();
                    return Unit.f71739a;
                }
                return coroutineSingletons;
            case 4:
                distantRepairFormViewModelImpl3 = this.f57190e;
                obj3 = this.d;
                createCareServiceParam4 = this.f57189c;
                monitorAction5 = this.f57188b;
                ResultKt.b(obj);
                distantRepairFormViewModelImpl3.f57161i.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.RepairCreationConfirmationScreen.f57442a));
                mutableStateFlow2 = distantRepairFormViewModelImpl3.u;
                do {
                    value2 = mutableStateFlow2.getValue();
                } while (!mutableStateFlow2.i(value2, FormStateUIModel.b((FormStateUIModel) value2, null, FormState.CONFIRMED, 7)));
                obj2 = obj3;
                monitorAction2 = monitorAction5;
                createCareServiceParam5 = createCareServiceParam4;
                createCareServiceParam2 = createCareServiceParam5;
                thA2 = Result.a(obj2);
                if (thA2 != null) {
                    monitorAction2.d(new CareServicesMonitoring.Error.BookRepairError(thA2));
                    this.f57188b = monitorAction2;
                    this.f57189c = createCareServiceParam2;
                    this.d = obj2;
                    this.f57190e = distantRepairFormViewModelImpl5;
                    this.f57191f = thA2;
                    this.g = 0;
                    this.f57193i = 6;
                    objU = distantRepairFormViewModelImpl5.D.u(NotificationBuilder.a(distantRepairFormViewModelImpl5.g, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60), this);
                    if (objU != CoroutineSingletons.COROUTINE_SUSPENDED) {
                        objU = Unit.f71739a;
                    }
                    if (objU != coroutineSingletons) {
                        monitorAction6 = monitorAction2;
                        createCareServiceParam6 = createCareServiceParam2;
                        distantRepairFormViewModelImpl4 = distantRepairFormViewModelImpl5;
                        CareServiceId.INSTANCE.getClass();
                        String str315 = CareServiceId.f66878b;
                        distantRepairFormViewModelImpl4.getClass();
                        BuildersKt.c(ViewModelKt.a(distantRepairFormViewModelImpl4), null, null, new DistantRepairFormViewModelImpl$cancelCareService$1(distantRepairFormViewModelImpl4, createCareServiceParam6, str315, null), 3);
                        mutableStateFlow4 = distantRepairFormViewModelImpl4.t;
                        do {
                            value4 = mutableStateFlow4.getValue();
                            ((Boolean) value4).getClass();
                        } while (!mutableStateFlow4.i(value4, Boolean.FALSE));
                        distantRepairFormViewModelImpl4.f57156b.c("DistantRepairFormViewModelImpl", "Unable to create care service", thA2);
                        monitorAction2 = monitorAction6;
                    }
                    return coroutineSingletons;
                }
                mutableStateFlow3 = distantRepairFormViewModelImpl5.t;
                do {
                    value3 = mutableStateFlow3.getValue();
                    ((Boolean) value3).getClass();
                } while (!mutableStateFlow3.i(value3, Boolean.FALSE));
                monitorAction2.b();
                return Unit.f71739a;
            case 5:
                str21 = (String) this.f57191f;
                distantRepairFormViewModelImpl2 = this.f57190e;
                obj4 = this.d;
                createCareServiceParam5 = this.f57189c;
                monitorAction4 = this.f57188b;
                ResultKt.b(obj);
                distantRepairFormViewModelImpl2.getClass();
                BuildersKt.c(ViewModelKt.a(distantRepairFormViewModelImpl2), null, null, new DistantRepairFormViewModelImpl$cancelCareService$1(distantRepairFormViewModelImpl2, createCareServiceParam5, str21, null), 3);
                monitorAction2 = monitorAction4;
                obj2 = obj4;
                createCareServiceParam2 = createCareServiceParam5;
                thA2 = Result.a(obj2);
                if (thA2 != null) {
                    monitorAction2.d(new CareServicesMonitoring.Error.BookRepairError(thA2));
                    this.f57188b = monitorAction2;
                    this.f57189c = createCareServiceParam2;
                    this.d = obj2;
                    this.f57190e = distantRepairFormViewModelImpl5;
                    this.f57191f = thA2;
                    this.g = 0;
                    this.f57193i = 6;
                    objU = distantRepairFormViewModelImpl5.D.u(NotificationBuilder.a(distantRepairFormViewModelImpl5.g, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60), this);
                    if (objU != CoroutineSingletons.COROUTINE_SUSPENDED) {
                        objU = Unit.f71739a;
                    }
                    if (objU != coroutineSingletons) {
                        monitorAction6 = monitorAction2;
                        createCareServiceParam6 = createCareServiceParam2;
                        distantRepairFormViewModelImpl4 = distantRepairFormViewModelImpl5;
                        CareServiceId.INSTANCE.getClass();
                        String str316 = CareServiceId.f66878b;
                        distantRepairFormViewModelImpl4.getClass();
                        BuildersKt.c(ViewModelKt.a(distantRepairFormViewModelImpl4), null, null, new DistantRepairFormViewModelImpl$cancelCareService$1(distantRepairFormViewModelImpl4, createCareServiceParam6, str316, null), 3);
                        mutableStateFlow4 = distantRepairFormViewModelImpl4.t;
                        do {
                            value4 = mutableStateFlow4.getValue();
                            ((Boolean) value4).getClass();
                        } while (!mutableStateFlow4.i(value4, Boolean.FALSE));
                        distantRepairFormViewModelImpl4.f57156b.c("DistantRepairFormViewModelImpl", "Unable to create care service", thA2);
                        monitorAction2 = monitorAction6;
                    }
                    return coroutineSingletons;
                }
                mutableStateFlow3 = distantRepairFormViewModelImpl5.t;
                do {
                    value3 = mutableStateFlow3.getValue();
                    ((Boolean) value3).getClass();
                } while (!mutableStateFlow3.i(value3, Boolean.FALSE));
                monitorAction2.b();
                return Unit.f71739a;
            case 6:
                Throwable th5 = (Throwable) this.f57191f;
                DistantRepairFormViewModelImpl distantRepairFormViewModelImpl10 = this.f57190e;
                CreateCareServiceParam createCareServiceParam9 = this.f57189c;
                monitorAction6 = this.f57188b;
                ResultKt.b(obj);
                thA2 = th5;
                createCareServiceParam6 = createCareServiceParam9;
                distantRepairFormViewModelImpl4 = distantRepairFormViewModelImpl10;
                CareServiceId.INSTANCE.getClass();
                String str317 = CareServiceId.f66878b;
                distantRepairFormViewModelImpl4.getClass();
                BuildersKt.c(ViewModelKt.a(distantRepairFormViewModelImpl4), null, null, new DistantRepairFormViewModelImpl$cancelCareService$1(distantRepairFormViewModelImpl4, createCareServiceParam6, str317, null), 3);
                mutableStateFlow4 = distantRepairFormViewModelImpl4.t;
                do {
                    value4 = mutableStateFlow4.getValue();
                    ((Boolean) value4).getClass();
                } while (!mutableStateFlow4.i(value4, Boolean.FALSE));
                distantRepairFormViewModelImpl4.f57156b.c("DistantRepairFormViewModelImpl", "Unable to create care service", thA2);
                monitorAction2 = monitorAction6;
                mutableStateFlow3 = distantRepairFormViewModelImpl5.t;
                do {
                    value3 = mutableStateFlow3.getValue();
                    ((Boolean) value3).getClass();
                } while (!mutableStateFlow3.i(value3, Boolean.FALSE));
                monitorAction2.b();
                return Unit.f71739a;
            default:
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }
}

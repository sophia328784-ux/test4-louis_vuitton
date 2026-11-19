package com.vuitton.android.presentation.screen.repairs;

import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.careservices.CareServicesMonitoring;
import com.vuitton.android.domain.usecase.careservices.UpdateCareServiceUseCase;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModelKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceMapperKt;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.android.presentation.tracking.LoggedUserStatus;
import com.vuitton.android.presentation.tracking.ServiceRepairActions;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceUpdate;
import com.vuitton.foundation.model.domain.model.repair.RepairStatus;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.builders.MapBuilder;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl$cancelAppointment$1", f = "RepairViewModelImpl.kt", l = {478, 488, 493}, m = "invokeSuspend", v = 2)
final class RepairViewModelImpl$cancelAppointment$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f63508b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public RepairViewModelImpl f63509c;
    public CareServiceDetailUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f63510e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Throwable f63511f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f63512h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public /* synthetic */ Object f63513i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ RepairViewModelImpl f63514j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ String f63515k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairViewModelImpl$cancelAppointment$1(RepairViewModelImpl repairViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f63514j = repairViewModelImpl;
        this.f63515k = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        RepairViewModelImpl$cancelAppointment$1 repairViewModelImpl$cancelAppointment$1 = new RepairViewModelImpl$cancelAppointment$1(this.f63514j, this.f63515k, continuation);
        repairViewModelImpl$cancelAppointment$1.f63513i = obj;
        return repairViewModelImpl$cancelAppointment$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepairViewModelImpl$cancelAppointment$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0125  */
    /* JADX WARN: Code duplicated, block: B:34:0x0128  */
    /* JADX WARN: Code duplicated, block: B:37:0x013c  */
    /* JADX WARN: Code duplicated, block: B:42:0x0162  */
    /* JADX WARN: Code duplicated, block: B:45:0x0181  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object value2;
        MonitorAction monitorAction;
        CareServiceDetailUiModel careServiceDetailUiModel;
        Object obj2;
        int i2;
        int i3;
        RepairViewModelImpl repairViewModelImpl;
        RepairViewModelImpl repairViewModelImpl2;
        CareServiceDetailUiModel careServiceDetailUiModel2;
        Object obj3;
        Throwable thA;
        MonitorAction monitorAction2;
        MutableStateFlow mutableStateFlow;
        Object value3;
        String str;
        LoggedUserStatus loggedUserStatus;
        MapBuilder mapBuilder;
        MutableStateFlow mutableStateFlow2;
        Object value4;
        RepairViewModelImpl repairViewModelImpl3 = this.f63514j;
        MutableStateFlow mutableStateFlow3 = repairViewModelImpl3.u;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = this.f63512h;
        if (i4 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = repairViewModelImpl3.f63497b.a(repairViewModelImpl3.q, CareServicesMonitoring.Action.CancelRepair.f48864a);
            do {
                value = mutableStateFlow3.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow3.i(value, Boolean.TRUE));
            CareServiceDetailUiModel careServiceDetailUiModel3 = (CareServiceDetailUiModel) repairViewModelImpl3.B.getValue();
            if (careServiceDetailUiModel3 != null) {
                CareServiceUpdate careServiceUpdateA = CareServiceUpdate.a(CareServiceMapperKt.a(careServiceDetailUiModel3), RepairStatus.CANCELLED, RepairStatusUiModelKt.d(careServiceDetailUiModel3.d), this.f63515k, 4194300);
                UpdateCareServiceUseCase updateCareServiceUseCase = repairViewModelImpl3.f63502i;
                CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
                String str2 = careServiceDetailUiModel3.f63979b;
                companion.getClass();
                CareServiceIdUiModel.Companion.a(str2);
                this.f63513i = null;
                this.f63508b = dynatraceMonitorActionA;
                this.f63509c = repairViewModelImpl3;
                this.d = careServiceDetailUiModel3;
                this.f63510e = null;
                this.g = 0;
                this.f63512h = 1;
                Object objA = updateCareServiceUseCase.a(str2, careServiceUpdateA, this);
                if (objA != coroutineSingletons) {
                    monitorAction = dynatraceMonitorActionA;
                    careServiceDetailUiModel = careServiceDetailUiModel3;
                    obj2 = objA;
                    i2 = 0;
                }
                return coroutineSingletons;
            }
            dynatraceMonitorActionA.b();
            do {
                value2 = mutableStateFlow3.getValue();
                ((Boolean) value2).getClass();
            } while (!mutableStateFlow3.i(value2, Boolean.FALSE));
            return Unit.f71739a;
        }
        if (i4 == 1) {
            int i5 = this.g;
            CareServiceDetailUiModel careServiceDetailUiModel4 = this.d;
            RepairViewModelImpl repairViewModelImpl4 = this.f63509c;
            monitorAction = this.f63508b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
            i2 = i5;
            repairViewModelImpl3 = repairViewModelImpl4;
            careServiceDetailUiModel = careServiceDetailUiModel4;
        } else {
            if (i4 == 2) {
                int i6 = this.g;
                Object obj4 = this.f63510e;
                CareServiceDetailUiModel careServiceDetailUiModel5 = this.d;
                RepairViewModelImpl repairViewModelImpl5 = this.f63509c;
                monitorAction = this.f63508b;
                ResultKt.b(obj);
                careServiceDetailUiModel2 = careServiceDetailUiModel5;
                repairViewModelImpl2 = repairViewModelImpl5;
                i3 = i6;
                obj3 = obj4;
                MonitorAction monitorAction3 = monitorAction;
                mutableStateFlow = repairViewModelImpl2.w;
                do {
                    value3 = mutableStateFlow.getValue();
                    ((Boolean) value3).getClass();
                } while (!mutableStateFlow.i(value3, Boolean.TRUE));
                str = careServiceDetailUiModel2.I;
                ServiceRepairActions serviceRepairActions = ServiceRepairActions.CANCELLED;
                if (((LoginState) repairViewModelImpl2.f63500f.a().getValue()).a()) {
                    loggedUserStatus = LoggedUserStatus.LOGGED;
                } else {
                    loggedUserStatus = LoggedUserStatus.NOT_LOGGED;
                }
                AppsFlyerTracker appsFlyerTracker = repairViewModelImpl2.f63501h;
                mapBuilder = new MapBuilder();
                mapBuilder.put("action", serviceRepairActions.getValue());
                if (str != null) {
                    mapBuilder.put("store_id", str);
                }
                mapBuilder.put("login_status", loggedUserStatus.getValue());
                appsFlyerTracker.a("RepairViewModelImpl", new AppsFlyerEvent.ServiceRepair(mapBuilder.c()));
                obj2 = obj3;
                repairViewModelImpl = repairViewModelImpl2;
                monitorAction = monitorAction3;
                thA = Result.a(obj2);
                if (thA != null) {
                    monitorAction.d(new CareServicesMonitoring.Error.CancelRepairError(thA));
                    this.f63513i = null;
                    this.f63508b = monitorAction;
                    this.f63509c = repairViewModelImpl;
                    this.d = null;
                    this.f63510e = obj2;
                    this.f63511f = thA;
                    this.g = i3;
                    this.f63512h = 3;
                    if (RepairViewModelImpl.Ac(repairViewModelImpl, this) != coroutineSingletons) {
                        monitorAction2 = monitorAction;
                    }
                    return coroutineSingletons;
                }
                monitorAction.b();
                Result.Companion companion2 = Result.INSTANCE;
                return Unit.f71739a;
            }
            if (i4 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            thA = this.f63511f;
            repairViewModelImpl = this.f63509c;
            monitorAction2 = this.f63508b;
            ResultKt.b(obj);
        }
        repairViewModelImpl.f63496a.c("RepairViewModelImpl", "Unable to cancel appointment", thA);
        mutableStateFlow2 = repairViewModelImpl.u;
        do {
            value4 = mutableStateFlow2.getValue();
            ((Boolean) value4).getClass();
        } while (!mutableStateFlow2.i(value4, Boolean.FALSE));
        monitorAction = monitorAction2;
        monitorAction.b();
        Result.Companion companion3 = Result.INSTANCE;
        return Unit.f71739a;
        Result.Companion companion4 = Result.INSTANCE;
        if (obj2 instanceof Result.Failure) {
            i3 = i2;
            repairViewModelImpl = repairViewModelImpl3;
            thA = Result.a(obj2);
            if (thA != null) {
                monitorAction.d(new CareServicesMonitoring.Error.CancelRepairError(thA));
                this.f63513i = null;
                this.f63508b = monitorAction;
                this.f63509c = repairViewModelImpl;
                this.d = null;
                this.f63510e = obj2;
                this.f63511f = thA;
                this.g = i3;
                this.f63512h = 3;
                if (RepairViewModelImpl.Ac(repairViewModelImpl, this) != coroutineSingletons) {
                    monitorAction2 = monitorAction;
                    repairViewModelImpl.f63496a.c("RepairViewModelImpl", "Unable to cancel appointment", thA);
                    mutableStateFlow2 = repairViewModelImpl.u;
                    do {
                        value4 = mutableStateFlow2.getValue();
                        ((Boolean) value4).getClass();
                    } while (!mutableStateFlow2.i(value4, Boolean.FALSE));
                    monitorAction = monitorAction2;
                }
            }
            monitorAction.b();
            Result.Companion companion5 = Result.INSTANCE;
            return Unit.f71739a;
        }
        monitorAction.c(careServiceDetailUiModel.f63979b, "repairId");
        repairViewModelImpl3.k0(false);
        LVEventSender lVEventSender = repairViewModelImpl3.f63498c;
        this.f63513i = null;
        this.f63508b = monitorAction;
        this.f63509c = repairViewModelImpl3;
        this.d = careServiceDetailUiModel;
        this.f63510e = obj2;
        this.f63511f = null;
        this.g = i2;
        this.f63512h = 2;
        if (lVEventSender.a(AppEvent.RefreshRepairsEvent.f43505a, this) != coroutineSingletons) {
            repairViewModelImpl2 = repairViewModelImpl3;
            careServiceDetailUiModel2 = careServiceDetailUiModel;
            obj3 = obj2;
            i3 = i2;
            MonitorAction monitorAction4 = monitorAction;
            mutableStateFlow = repairViewModelImpl2.w;
            do {
                value3 = mutableStateFlow.getValue();
                ((Boolean) value3).getClass();
            } while (!mutableStateFlow.i(value3, Boolean.TRUE));
            str = careServiceDetailUiModel2.I;
            ServiceRepairActions serviceRepairActions2 = ServiceRepairActions.CANCELLED;
            if (((LoginState) repairViewModelImpl2.f63500f.a().getValue()).a()) {
                loggedUserStatus = LoggedUserStatus.LOGGED;
            } else {
                loggedUserStatus = LoggedUserStatus.NOT_LOGGED;
            }
            AppsFlyerTracker appsFlyerTracker2 = repairViewModelImpl2.f63501h;
            mapBuilder = new MapBuilder();
            mapBuilder.put("action", serviceRepairActions2.getValue());
            if (str != null) {
                mapBuilder.put("store_id", str);
            }
            mapBuilder.put("login_status", loggedUserStatus.getValue());
            appsFlyerTracker2.a("RepairViewModelImpl", new AppsFlyerEvent.ServiceRepair(mapBuilder.c()));
            obj2 = obj3;
            repairViewModelImpl = repairViewModelImpl2;
            monitorAction = monitorAction4;
            thA = Result.a(obj2);
            if (thA != null) {
                monitorAction.d(new CareServicesMonitoring.Error.CancelRepairError(thA));
                this.f63513i = null;
                this.f63508b = monitorAction;
                this.f63509c = repairViewModelImpl;
                this.d = null;
                this.f63510e = obj2;
                this.f63511f = thA;
                this.g = i3;
                this.f63512h = 3;
                if (RepairViewModelImpl.Ac(repairViewModelImpl, this) != coroutineSingletons) {
                    monitorAction2 = monitorAction;
                    repairViewModelImpl.f63496a.c("RepairViewModelImpl", "Unable to cancel appointment", thA);
                    mutableStateFlow2 = repairViewModelImpl.u;
                    do {
                        value4 = mutableStateFlow2.getValue();
                        ((Boolean) value4).getClass();
                    } while (!mutableStateFlow2.i(value4, Boolean.FALSE));
                    monitorAction = monitorAction2;
                }
            }
            monitorAction.b();
            Result.Companion companion6 = Result.INSTANCE;
            return Unit.f71739a;
        }
        return coroutineSingletons;
    }
}

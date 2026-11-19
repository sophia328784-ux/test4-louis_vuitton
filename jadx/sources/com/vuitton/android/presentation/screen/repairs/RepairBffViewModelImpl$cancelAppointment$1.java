package com.vuitton.android.presentation.screen.repairs;

import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.careservices.CareServicesMonitoring;
import com.vuitton.android.domain.usecase.careservices.CancelCareServiceBffUseCase;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.android.presentation.tracking.LoggedUserStatus;
import com.vuitton.android.presentation.tracking.ServiceRepairActions;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl$cancelAppointment$1", f = "RepairBffViewModelImpl.kt", l = {350, 360}, m = "invokeSuspend", v = 2)
final class RepairBffViewModelImpl$cancelAppointment$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f63454b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public RepairBffViewModelImpl f63455c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f63456e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f63457f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ RepairBffViewModelImpl f63458h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ String f63459i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairBffViewModelImpl$cancelAppointment$1(RepairBffViewModelImpl repairBffViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f63458h = repairBffViewModelImpl;
        this.f63459i = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RepairBffViewModelImpl$cancelAppointment$1(this.f63458h, this.f63459i, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepairBffViewModelImpl$cancelAppointment$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:39:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:42:0x0113  */
    /* JADX WARN: Code duplicated, block: B:46:0x0136  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MonitorAction monitorActionA;
        Object value;
        String str;
        RepairBffViewModelImpl repairBffViewModelImpl;
        Object obj2;
        int i2;
        Object obj3;
        MonitorAction monitorAction;
        RepairBffViewModelImpl repairBffViewModelImpl2;
        Throwable thA;
        MutableStateFlow mutableStateFlow;
        Object value2;
        MutableStateFlow mutableStateFlow2;
        Object value3;
        MutableStateFlow mutableStateFlow3;
        Object value4;
        CareServiceDetailUiModel careServiceDetailUiModel;
        LoggedUserStatus loggedUserStatus;
        MapBuilder mapBuilder;
        CareServiceDetailUiModel.Store store;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.g;
        String str2 = null;
        if (i3 == 0) {
            ResultKt.b(obj);
            RepairBffViewModelImpl repairBffViewModelImpl3 = this.f63458h;
            monitorActionA = repairBffViewModelImpl3.f63444b.a(repairBffViewModelImpl3.p, CareServicesMonitoring.Action.CancelRepair.f48864a);
            MutableStateFlow mutableStateFlow4 = repairBffViewModelImpl3.r;
            do {
                value = mutableStateFlow4.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow4.i(value, Boolean.TRUE));
            CareServiceDetailUiModel careServiceDetailUiModel2 = (CareServiceDetailUiModel) repairBffViewModelImpl3.y.getValue();
            if (careServiceDetailUiModel2 != null) {
                String str3 = careServiceDetailUiModel2.f64037b;
                CancelCareServiceBffUseCase cancelCareServiceBffUseCase = repairBffViewModelImpl3.l;
                CareServiceIdUiModel.f64059c.getClass();
                CareServiceId.Companion companion = CareServiceId.INSTANCE;
                this.f63454b = monitorActionA;
                this.f63455c = repairBffViewModelImpl3;
                this.d = str3;
                this.f63457f = 0;
                this.g = 1;
                Object objA = cancelCareServiceBffUseCase.a(str3, this.f63459i, this);
                if (objA != coroutineSingletons) {
                    str = str3;
                    repairBffViewModelImpl = repairBffViewModelImpl3;
                    obj2 = objA;
                    i2 = 0;
                }
                return coroutineSingletons;
            }
            return Unit.f71739a;
        }
        if (i3 == 1) {
            int i4 = this.f63457f;
            String str4 = this.d;
            repairBffViewModelImpl = this.f63455c;
            MonitorAction monitorAction2 = this.f63454b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
            i2 = i4;
            monitorActionA = monitorAction2;
            str = str4;
        } else {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            obj3 = this.f63456e;
            RepairBffViewModelImpl repairBffViewModelImpl4 = this.f63455c;
            monitorAction = this.f63454b;
            ResultKt.b(obj);
            repairBffViewModelImpl2 = repairBffViewModelImpl4;
        }
        mutableStateFlow2 = repairBffViewModelImpl2.t;
        do {
            value3 = mutableStateFlow2.getValue();
            ((Boolean) value3).getClass();
        } while (!mutableStateFlow2.i(value3, Boolean.TRUE));
        mutableStateFlow3 = repairBffViewModelImpl2.r;
        do {
            value4 = mutableStateFlow3.getValue();
            ((Boolean) value4).getClass();
        } while (!mutableStateFlow3.i(value4, Boolean.FALSE));
        careServiceDetailUiModel = (CareServiceDetailUiModel) repairBffViewModelImpl2.y.getValue();
        if (careServiceDetailUiModel != null && (store = careServiceDetailUiModel.g) != null) {
            str2 = store.f64053b;
        }
        ServiceRepairActions serviceRepairActions = ServiceRepairActions.CANCELLED;
        if (((LoginState) repairBffViewModelImpl2.f63447f.a().getValue()).a()) {
            loggedUserStatus = LoggedUserStatus.LOGGED;
        } else {
            loggedUserStatus = LoggedUserStatus.NOT_LOGGED;
        }
        AppsFlyerTracker appsFlyerTracker = repairBffViewModelImpl2.f63448h;
        mapBuilder = new MapBuilder();
        mapBuilder.put("action", serviceRepairActions.getValue());
        if (str2 != null) {
            mapBuilder.put("store_id", str2);
        }
        mapBuilder.put("login_status", loggedUserStatus.getValue());
        appsFlyerTracker.a("RepairBffViewModelImpl", new AppsFlyerEvent.ServiceRepair(mapBuilder.c()));
        monitorActionA = monitorAction;
        obj2 = obj3;
        repairBffViewModelImpl = repairBffViewModelImpl2;
        thA = Result.a(obj2);
        if (thA != null) {
            monitorActionA.d(new CareServicesMonitoring.Error.CancelRepairError(thA));
            repairBffViewModelImpl.f63443a.c("RepairBffViewModelImpl", "Unable to cancel appointment", thA);
            mutableStateFlow = repairBffViewModelImpl.r;
            do {
                value2 = mutableStateFlow.getValue();
                ((Boolean) value2).getClass();
            } while (!mutableStateFlow.i(value2, Boolean.FALSE));
            RepairBffViewModelImpl.Ac(repairBffViewModelImpl);
        }
        monitorActionA.b();
        return Unit.f71739a;
        Result.Companion companion2 = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            monitorActionA.c(str, "repairId");
            repairBffViewModelImpl.k0(false);
            LVEventSender lVEventSender = repairBffViewModelImpl.f63445c;
            this.f63454b = monitorActionA;
            this.f63455c = repairBffViewModelImpl;
            this.d = null;
            this.f63456e = obj2;
            this.f63457f = i2;
            this.g = 2;
            if (lVEventSender.a(AppEvent.RefreshRepairsEvent.f43505a, this) != coroutineSingletons) {
                obj3 = obj2;
                monitorAction = monitorActionA;
                repairBffViewModelImpl2 = repairBffViewModelImpl;
                mutableStateFlow2 = repairBffViewModelImpl2.t;
                do {
                    value3 = mutableStateFlow2.getValue();
                    ((Boolean) value3).getClass();
                } while (!mutableStateFlow2.i(value3, Boolean.TRUE));
                mutableStateFlow3 = repairBffViewModelImpl2.r;
                do {
                    value4 = mutableStateFlow3.getValue();
                    ((Boolean) value4).getClass();
                } while (!mutableStateFlow3.i(value4, Boolean.FALSE));
                careServiceDetailUiModel = (CareServiceDetailUiModel) repairBffViewModelImpl2.y.getValue();
                if (careServiceDetailUiModel != null) {
                    str2 = store.f64053b;
                }
                ServiceRepairActions serviceRepairActions2 = ServiceRepairActions.CANCELLED;
                if (((LoginState) repairBffViewModelImpl2.f63447f.a().getValue()).a()) {
                    loggedUserStatus = LoggedUserStatus.LOGGED;
                } else {
                    loggedUserStatus = LoggedUserStatus.NOT_LOGGED;
                }
                AppsFlyerTracker appsFlyerTracker2 = repairBffViewModelImpl2.f63448h;
                mapBuilder = new MapBuilder();
                mapBuilder.put("action", serviceRepairActions2.getValue());
                if (str2 != null) {
                    mapBuilder.put("store_id", str2);
                }
                mapBuilder.put("login_status", loggedUserStatus.getValue());
                appsFlyerTracker2.a("RepairBffViewModelImpl", new AppsFlyerEvent.ServiceRepair(mapBuilder.c()));
                monitorActionA = monitorAction;
                obj2 = obj3;
                repairBffViewModelImpl = repairBffViewModelImpl2;
            }
            return coroutineSingletons;
        }
        thA = Result.a(obj2);
        if (thA != null) {
            monitorActionA.d(new CareServicesMonitoring.Error.CancelRepairError(thA));
            repairBffViewModelImpl.f63443a.c("RepairBffViewModelImpl", "Unable to cancel appointment", thA);
            mutableStateFlow = repairBffViewModelImpl.r;
            do {
                value2 = mutableStateFlow.getValue();
                ((Boolean) value2).getClass();
            } while (!mutableStateFlow.i(value2, Boolean.FALSE));
            RepairBffViewModelImpl.Ac(repairBffViewModelImpl);
        }
        monitorActionA.b();
        return Unit.f71739a;
    }
}

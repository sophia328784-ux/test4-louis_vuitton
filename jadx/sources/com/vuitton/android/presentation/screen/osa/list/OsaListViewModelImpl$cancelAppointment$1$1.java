package com.vuitton.android.presentation.screen.osa.list;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.R;
import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.osa.OSAMonitoring;
import com.vuitton.android.domain.usecase.osa.CancelAppointmentUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.StoreInformationItemUiModel;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel;
import com.vuitton.android.presentation.tracking.LoggedUserStatus;
import com.vuitton.android.presentation.tracking.OnlineStoreAppointmentActions;
import com.vuitton.foundation.logger.LegacyLogger;
import com.vuitton.foundation.model.domain.model.osa.CancelAppointmentResponseItem;
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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.list.OsaListViewModelImpl$cancelAppointment$1$1", f = "OsaListViewModelImpl.kt", l = {198, 206}, m = "invokeSuspend", v = 2)
final class OsaListViewModelImpl$cancelAppointment$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f60854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f60855c;
    public OsaListViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f60856e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ OsaListViewModelImpl f60857f;
    public final /* synthetic */ OsaItemUiModel g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaListViewModelImpl$cancelAppointment$1$1(OsaListViewModelImpl osaListViewModelImpl, OsaItemUiModel osaItemUiModel, Continuation continuation) {
        super(2, continuation);
        this.f60857f = osaListViewModelImpl;
        this.g = osaItemUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaListViewModelImpl$cancelAppointment$1$1(this.f60857f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaListViewModelImpl$cancelAppointment$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x010a  */
    /* JADX WARN: Code duplicated, block: B:45:0x011d  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        MonitorAction monitorAction;
        MonitorAction monitorAction2;
        OsaListViewModelImpl osaListViewModelImpl;
        Object obj3;
        Throwable thA;
        String message;
        OsaItemUiModel osaItemUiModel = this.g;
        String str = osaItemUiModel.f60924a;
        OsaListViewModelImpl osaListViewModelImpl2 = this.f60857f;
        MutableStateFlow mutableStateFlow = osaListViewModelImpl2.m;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f60856e;
        if (i2 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = osaListViewModelImpl2.f60845a.a(osaListViewModelImpl2.f60852j, OSAMonitoring.Action.CancelAppointment.f48960a);
            dynatraceMonitorActionA.c(str, "appointmentId");
            mutableStateFlow.setValue(Boolean.TRUE);
            CancelAppointmentUseCase cancelAppointmentUseCase = osaListViewModelImpl2.g;
            this.f60854b = dynatraceMonitorActionA;
            this.f60856e = 1;
            Object objA = cancelAppointmentUseCase.a(str, this);
            if (objA != coroutineSingletons) {
                obj2 = objA;
                monitorAction = dynatraceMonitorActionA;
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            monitorAction = this.f60854b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        } else {
            if (i2 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            osaListViewModelImpl = this.d;
            obj3 = this.f60855c;
            monitorAction2 = this.f60854b;
            ResultKt.b(obj);
        }
        osaListViewModelImpl.getClass();
        BuildersKt.c(ViewModelKt.a(osaListViewModelImpl), null, null, new OsaListViewModelImpl$showSuccessNotification$1(osaListViewModelImpl, new StringResourceUiModel.ResId(R.string.osa_cancel_notification, null, 2, null), null), 3);
        obj2 = obj3;
        monitorAction = monitorAction2;
        thA = Result.a(obj2);
        if (thA != null) {
            monitorAction.d(new OSAMonitoring.Error.CancelAppointmentError(thA));
            mutableStateFlow.setValue(Boolean.FALSE);
            message = thA.getMessage();
            if (message == null) {
                message = "";
            }
            BuildersKt.c(ViewModelKt.a(osaListViewModelImpl2), null, null, new OsaListViewModelImpl$showErrorNotification$1(osaListViewModelImpl2, message, null), 3);
            LegacyLogger.f66205a.c("OsaListViewModelImpl", "Unable to cancel appointment", thA);
        }
        monitorAction.b();
        return Unit.f71739a;
        Result.Companion companion = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            CancelAppointmentResponseItem cancelAppointmentResponseItem = (CancelAppointmentResponseItem) obj2;
            mutableStateFlow.setValue(Boolean.FALSE);
            if (cancelAppointmentResponseItem.f67766a) {
                StoreInformationItemUiModel storeInformationItemUiModel = osaItemUiModel.f60929h;
                String str2 = storeInformationItemUiModel != null ? storeInformationItemUiModel.f60938a : null;
                OsaReasonUiModel osaReasonUiModel = osaItemUiModel.f60930i;
                String str3 = osaReasonUiModel != null ? osaReasonUiModel.f60965a : null;
                OnlineStoreAppointmentActions onlineStoreAppointmentActions = OnlineStoreAppointmentActions.CANCELLED;
                LoggedUserStatus loggedUserStatus = osaListViewModelImpl2.f60847c.b() ? LoggedUserStatus.LOGGED : LoggedUserStatus.NOT_LOGGED;
                AppsFlyerTracker appsFlyerTracker = osaListViewModelImpl2.f60849f;
                MapBuilder mapBuilder = new MapBuilder();
                mapBuilder.put("action", onlineStoreAppointmentActions.getValue());
                if (str3 != null) {
                    mapBuilder.put("appointment_reason", str3);
                }
                if (str2 != null) {
                    mapBuilder.put("store_id", str2);
                }
                mapBuilder.put("login_status", loggedUserStatus.getValue());
                appsFlyerTracker.a("OsaListViewModelImpl", new AppsFlyerEvent.OnlineStoreAppointment(mapBuilder.c()));
                LVEventSender lVEventSender = osaListViewModelImpl2.f60846b;
                this.f60854b = monitorAction;
                this.f60855c = obj2;
                this.d = osaListViewModelImpl2;
                this.f60856e = 2;
                if (lVEventSender.a(AppEvent.RefreshAppointmentsEvent.f43499a, this) != coroutineSingletons) {
                    monitorAction2 = monitorAction;
                    osaListViewModelImpl = osaListViewModelImpl2;
                    obj3 = obj2;
                    osaListViewModelImpl.getClass();
                    BuildersKt.c(ViewModelKt.a(osaListViewModelImpl), null, null, new OsaListViewModelImpl$showSuccessNotification$1(osaListViewModelImpl, new StringResourceUiModel.ResId(R.string.osa_cancel_notification, null, 2, null), null), 3);
                    obj2 = obj3;
                    monitorAction = monitorAction2;
                }
                return coroutineSingletons;
            }
            BuildersKt.c(ViewModelKt.a(osaListViewModelImpl2), null, null, new OsaListViewModelImpl$showErrorNotification$1(osaListViewModelImpl2, cancelAppointmentResponseItem.f67769e, null), 3);
        }
        thA = Result.a(obj2);
        if (thA != null) {
            monitorAction.d(new OSAMonitoring.Error.CancelAppointmentError(thA));
            mutableStateFlow.setValue(Boolean.FALSE);
            message = thA.getMessage();
            if (message == null) {
                message = "";
            }
            BuildersKt.c(ViewModelKt.a(osaListViewModelImpl2), null, null, new OsaListViewModelImpl$showErrorNotification$1(osaListViewModelImpl2, message, null), 3);
            LegacyLogger.f66205a.c("OsaListViewModelImpl", "Unable to cancel appointment", thA);
        }
        monitorAction.b();
        return Unit.f71739a;
    }
}

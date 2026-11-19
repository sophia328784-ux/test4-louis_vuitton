package com.vuitton.android.presentation.screen.account.userworldwideid;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.mylv.MyLvMonitoring;
import com.vuitton.android.domain.usecase.account.GetUserWorldwideIdUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.storemode.GetRmsCodeUseCase;
import com.vuitton.android.domain.usecase.storemode.GetStoreModeAffiliationUseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.mylv.models.MyLvTrackingUiModel;
import com.vuitton.android.presentation.screen.mylv.models.MyLvTrackingUiModelKt;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.account.WorldwideId;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002BI\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/account/GetUserWorldwideIdUseCase;", "getUserWorldwideIdUseCase", "Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeAffiliationUseCase;", "getStoreModeAffiliationUseCase", "Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;", "getRmsCodeUseCase", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/account/GetUserWorldwideIdUseCase;Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeAffiliationUseCase;Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class UserWorldwideIdViewModelImpl extends ViewModel implements UserWorldwideIdViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f52689a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Monitor f52690b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnalyticsTracker f52691c;
    public final IsFeatureAvailableUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GetUserWorldwideIdUseCase f52692e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GetStoreModeAffiliationUseCase f52693f;
    public final InAppDispatch g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableStateFlow f52694h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Job f52695i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final SharedFlowImpl f52696j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final SharedFlow f52697k;

    @Inject
    public UserWorldwideIdViewModelImpl(Logger logger, Monitor monitor, AnalyticsTracker analyticsTracker, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetUserWorldwideIdUseCase getUserWorldwideIdUseCase, GetStoreModeAffiliationUseCase getStoreModeAffiliationUseCase, GetRmsCodeUseCase getRmsCodeUseCase) {
        logger.getClass();
        monitor.getClass();
        analyticsTracker.getClass();
        requireUserInAppDispatchUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getUserWorldwideIdUseCase.getClass();
        getStoreModeAffiliationUseCase.getClass();
        getRmsCodeUseCase.getClass();
        this.f52689a = logger;
        this.f52690b = monitor;
        this.f52691c = analyticsTracker;
        this.d = isFeatureAvailableUseCase;
        this.f52692e = getUserWorldwideIdUseCase;
        this.f52693f = getStoreModeAffiliationUseCase;
        this.g = requireUserInAppDispatchUseCase.f49912a.b();
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(null);
        this.f52694h = mutableStateFlowA;
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(0, 1, null, 5);
        this.f52696j = sharedFlowImplB;
        this.f52697k = FlowKt.a(sharedFlowImplB);
        Object objE = getRmsCodeUseCase.f50391a.e();
        Result.Companion companion = Result.INSTANCE;
        if (!(objE instanceof Result.Failure)) {
            mutableStateFlowA.setValue((String) objE);
        }
        if (Result.a(objE) != null) {
            mutableStateFlowA.setValue(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object yc(UserWorldwideIdViewModelImpl userWorldwideIdViewModelImpl, ContinuationImpl continuationImpl) {
        UserWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1 userWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1;
        Object failure;
        MonitorAction monitorAction;
        if (continuationImpl instanceof UserWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1) {
            userWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1 = (UserWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1) continuationImpl;
            int i2 = userWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1.f52704e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                userWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1.f52704e = i2 - Integer.MIN_VALUE;
            } else {
                userWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1 = new UserWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1(userWorldwideIdViewModelImpl, continuationImpl);
            }
        } else {
            userWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1 = new UserWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1(userWorldwideIdViewModelImpl, continuationImpl);
        }
        Object obj = userWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1.f52703c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = userWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1.f52704e;
        if (i3 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = userWorldwideIdViewModelImpl.f52690b.a(userWorldwideIdViewModelImpl.g, MyLvMonitoring.Action.LoadLvPass.f48929a);
            GetUserWorldwideIdUseCase getUserWorldwideIdUseCase = userWorldwideIdViewModelImpl.f52692e;
            userWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1.f52702b = dynatraceMonitorActionA;
            userWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1.f52704e = 1;
            Object objA = getUserWorldwideIdUseCase.a(userWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            failure = objA;
            monitorAction = dynatraceMonitorActionA;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction = userWorldwideIdViewModelImpl$retrieveUserWorldwideIdResult$1.f52702b;
            ResultKt.b(obj);
            failure = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(failure instanceof Result.Failure)) {
            try {
                failure = ((WorldwideId) failure).f66244a;
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            monitorAction.d(new MyLvMonitoring.Error.LoadLvPassError(thA, "mylv"));
        }
        monitorAction.b();
        return failure;
    }

    @Override // com.vuitton.android.presentation.screen.account.userworldwideid.UserWorldwideIdViewModel
    /* JADX INFO: renamed from: J1, reason: from getter */
    public final SharedFlow getF52697k() {
        return this.f52697k;
    }

    @Override // com.vuitton.android.presentation.screen.account.userworldwideid.UserWorldwideIdViewModel
    public final void W(MyLvTrackingUiModel myLvTrackingUiModel) {
        this.f52691c.a(MyLvTrackingUiModelKt.a(myLvTrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.account.userworldwideid.UserWorldwideIdViewModel
    public final void f5() {
        Job job = this.f52695i;
        if (job != null) {
            job.cancel(null);
        }
    }

    @Override // com.vuitton.android.presentation.screen.account.userworldwideid.UserWorldwideIdViewModel
    public final void k7() {
        if (this.d.b(new Feature[]{Feature.STORE_MODE})) {
            Job job = this.f52695i;
            if (job == null || !job.isActive()) {
                this.f52695i = BuildersKt.c(ViewModelKt.a(this), null, null, new UserWorldwideIdViewModelImpl$checkStoreModeAccess$1(this, null), 3);
            }
        }
    }
}

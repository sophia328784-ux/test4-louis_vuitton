package com.vuitton.android.presentation.screen.distantrepairs.assessment;

import android.app.Application;
import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.careservices.CareServicesMonitoring;
import com.vuitton.android.domain.usecase.careservices.UpdateCareServiceUseCase;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceDetail;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceDetailKt;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceUpdate;
import com.vuitton.foundation.model.domain.model.repair.RepairStatus;
import defpackage.md;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl$acceptAssessment$1", f = "DistantRepairAssessmentViewModelImpl.kt", l = {477, 486, 487, 491}, m = "invokeSuspend", v = 2)
final class DistantRepairAssessmentViewModelImpl$acceptAssessment$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f56895b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CareServiceDetail f56896c;
    public DistantRepairAssessmentViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f56897e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Throwable f56898f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f56899h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f56900i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentViewModelImpl f56901j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairAssessmentViewModelImpl$acceptAssessment$1(Continuation continuation, DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl) {
        super(2, continuation);
        this.f56901j = distantRepairAssessmentViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DistantRepairAssessmentViewModelImpl$acceptAssessment$1(continuation, this.f56901j);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DistantRepairAssessmentViewModelImpl$acceptAssessment$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x011e  */
    /* JADX WARN: Code duplicated, block: B:38:0x012c  */
    /* JADX WARN: Code duplicated, block: B:41:0x014e  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws IOException {
        MonitorAction monitorActionA;
        Object objA;
        CareServiceDetail careServiceDetail;
        int i2;
        MonitorAction monitorAction;
        DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl;
        int i3;
        int i4;
        Object obj2;
        BufferedChannel bufferedChannel;
        Result result;
        Object obj3;
        DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl2;
        Throwable thA;
        DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl3;
        Throwable th;
        MonitorAction monitorAction2;
        DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl4 = this.f56901j;
        MutableStateFlow mutableStateFlow = distantRepairAssessmentViewModelImpl4.r;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i5 = this.f56900i;
        if (i5 == 0) {
            ResultKt.b(obj);
            monitorActionA = distantRepairAssessmentViewModelImpl4.d.a(distantRepairAssessmentViewModelImpl4.o, CareServicesMonitoring.Action.ConfirmAssessment.f48865a);
            mutableStateFlow.setValue(Boolean.TRUE);
            Application application = distantRepairAssessmentViewModelImpl4.f13405a;
            application.getClass();
            CareServiceDetail careServiceDetailCc = distantRepairAssessmentViewModelImpl4.Cc(application, null, (AddressUiModel) distantRepairAssessmentViewModelImpl4.y.getValue(), null);
            if (careServiceDetailCc != null) {
                CareServiceUpdate careServiceUpdateA = CareServiceUpdate.a(CareServiceDetailKt.a(careServiceDetailCc), RepairStatus.PRELIMINARY_ASSESSMENT_ACC, null, null, 8388606);
                UpdateCareServiceUseCase updateCareServiceUseCase = distantRepairAssessmentViewModelImpl4.f56889i;
                String str = careServiceDetailCc.f66794a;
                this.f56895b = monitorActionA;
                this.f56896c = careServiceDetailCc;
                this.d = distantRepairAssessmentViewModelImpl4;
                this.g = 0;
                this.f56900i = 1;
                objA = updateCareServiceUseCase.a(str, careServiceUpdateA, this);
                if (objA != coroutineSingletons) {
                    careServiceDetail = careServiceDetailCc;
                    i2 = 0;
                }
                return coroutineSingletons;
            }
            mutableStateFlow.setValue(Boolean.FALSE);
            return Unit.f71739a;
        }
        if (i5 == 1) {
            int i6 = this.g;
            DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl5 = this.d;
            careServiceDetail = this.f56896c;
            monitorActionA = this.f56895b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
            i2 = i6;
            distantRepairAssessmentViewModelImpl4 = distantRepairAssessmentViewModelImpl5;
        } else {
            if (i5 == 2) {
                int i7 = this.f56899h;
                int i8 = this.g;
                obj2 = this.f56897e;
                distantRepairAssessmentViewModelImpl = this.d;
                monitorActionA = this.f56895b;
                ResultKt.b(obj);
                i4 = i7;
                i3 = i8;
                bufferedChannel = distantRepairAssessmentViewModelImpl.K;
                Result.Companion companion = Result.INSTANCE;
                result = new Result(Boolean.TRUE);
                this.f56895b = monitorActionA;
                this.f56896c = null;
                this.d = distantRepairAssessmentViewModelImpl;
                this.f56897e = obj2;
                this.f56898f = null;
                this.g = i3;
                this.f56899h = i4;
                this.f56900i = 3;
                if (bufferedChannel.u(result, this) != coroutineSingletons) {
                    obj3 = obj2;
                    distantRepairAssessmentViewModelImpl2 = distantRepairAssessmentViewModelImpl;
                    monitorAction = monitorActionA;
                    objA = obj3;
                    i2 = i3;
                    distantRepairAssessmentViewModelImpl4 = distantRepairAssessmentViewModelImpl2;
                    thA = Result.a(objA);
                    if (thA != null) {
                        monitorAction.d(new CareServicesMonitoring.Error.ConfirmAssessmentError(thA));
                        this.f56895b = monitorAction;
                        this.f56896c = null;
                        this.d = distantRepairAssessmentViewModelImpl4;
                        this.f56897e = objA;
                        this.f56898f = thA;
                        this.g = i2;
                        this.f56899h = 0;
                        this.f56900i = 4;
                        int i9 = DistantRepairAssessmentViewModelImpl.R;
                        if (distantRepairAssessmentViewModelImpl4.Bc(this) != coroutineSingletons) {
                            distantRepairAssessmentViewModelImpl3 = distantRepairAssessmentViewModelImpl4;
                            th = thA;
                            monitorAction2 = monitorAction;
                        }
                    }
                    monitorAction.b();
                    Result.Companion companion2 = Result.INSTANCE;
                    mutableStateFlow.setValue(Boolean.FALSE);
                    return Unit.f71739a;
                }
                return coroutineSingletons;
            }
            if (i5 == 3) {
                i3 = this.g;
                obj3 = this.f56897e;
                distantRepairAssessmentViewModelImpl2 = this.d;
                monitorAction = this.f56895b;
                ResultKt.b(obj);
                objA = obj3;
                i2 = i3;
                distantRepairAssessmentViewModelImpl4 = distantRepairAssessmentViewModelImpl2;
                thA = Result.a(objA);
                if (thA != null) {
                    monitorAction.d(new CareServicesMonitoring.Error.ConfirmAssessmentError(thA));
                    this.f56895b = monitorAction;
                    this.f56896c = null;
                    this.d = distantRepairAssessmentViewModelImpl4;
                    this.f56897e = objA;
                    this.f56898f = thA;
                    this.g = i2;
                    this.f56899h = 0;
                    this.f56900i = 4;
                    int i10 = DistantRepairAssessmentViewModelImpl.R;
                    if (distantRepairAssessmentViewModelImpl4.Bc(this) != coroutineSingletons) {
                        distantRepairAssessmentViewModelImpl3 = distantRepairAssessmentViewModelImpl4;
                        th = thA;
                        monitorAction2 = monitorAction;
                    }
                    return coroutineSingletons;
                }
                monitorAction.b();
                Result.Companion companion3 = Result.INSTANCE;
                mutableStateFlow.setValue(Boolean.FALSE);
                return Unit.f71739a;
            }
            if (i5 != 4) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            th = this.f56898f;
            distantRepairAssessmentViewModelImpl3 = this.d;
            monitorAction2 = this.f56895b;
            ResultKt.b(obj);
        }
        distantRepairAssessmentViewModelImpl3.f56885c.c("DistantRepairAssessmentViewModelImpl", "Unable to accept assessment", th);
        distantRepairAssessmentViewModelImpl3.r.setValue(Boolean.FALSE);
        monitorAction = monitorAction2;
        monitorAction.b();
        Result.Companion companion4 = Result.INSTANCE;
        mutableStateFlow.setValue(Boolean.FALSE);
        return Unit.f71739a;
        Result.Companion companion5 = Result.INSTANCE;
        if (objA instanceof Result.Failure) {
            monitorAction = monitorActionA;
            thA = Result.a(objA);
            if (thA != null) {
                monitorAction.d(new CareServicesMonitoring.Error.ConfirmAssessmentError(thA));
                this.f56895b = monitorAction;
                this.f56896c = null;
                this.d = distantRepairAssessmentViewModelImpl4;
                this.f56897e = objA;
                this.f56898f = thA;
                this.g = i2;
                this.f56899h = 0;
                this.f56900i = 4;
                int i11 = DistantRepairAssessmentViewModelImpl.R;
                if (distantRepairAssessmentViewModelImpl4.Bc(this) != coroutineSingletons) {
                    distantRepairAssessmentViewModelImpl3 = distantRepairAssessmentViewModelImpl4;
                    th = thA;
                    monitorAction2 = monitorAction;
                    distantRepairAssessmentViewModelImpl3.f56885c.c("DistantRepairAssessmentViewModelImpl", "Unable to accept assessment", th);
                    distantRepairAssessmentViewModelImpl3.r.setValue(Boolean.FALSE);
                    monitorAction = monitorAction2;
                }
            }
            monitorAction.b();
            Result.Companion companion6 = Result.INSTANCE;
            mutableStateFlow.setValue(Boolean.FALSE);
            return Unit.f71739a;
        }
        monitorActionA.c(careServiceDetail.f66794a, "repairId");
        MutableStateFlow mutableStateFlow2 = distantRepairAssessmentViewModelImpl4.v;
        CareServiceDetailUiModel careServiceDetailUiModel = (CareServiceDetailUiModel) mutableStateFlow2.getValue();
        mutableStateFlow2.setValue(careServiceDetailUiModel != null ? CareServiceDetailUiModel.a(careServiceDetailUiModel, RepairStatusUiModel.PRELIMINARY_ASSESSMENT_ACC, false, -5, 255) : null);
        LVEventSender lVEventSender = distantRepairAssessmentViewModelImpl4.l;
        this.f56895b = monitorActionA;
        this.f56896c = null;
        this.d = distantRepairAssessmentViewModelImpl4;
        this.f56897e = objA;
        this.f56898f = null;
        this.g = i2;
        this.f56899h = 0;
        this.f56900i = 2;
        if (lVEventSender.a(AppEvent.RefreshRepairsEvent.f43505a, this) != coroutineSingletons) {
            distantRepairAssessmentViewModelImpl = distantRepairAssessmentViewModelImpl4;
            i3 = i2;
            i4 = 0;
            obj2 = objA;
            bufferedChannel = distantRepairAssessmentViewModelImpl.K;
            Result.Companion companion7 = Result.INSTANCE;
            result = new Result(Boolean.TRUE);
            this.f56895b = monitorActionA;
            this.f56896c = null;
            this.d = distantRepairAssessmentViewModelImpl;
            this.f56897e = obj2;
            this.f56898f = null;
            this.g = i3;
            this.f56899h = i4;
            this.f56900i = 3;
            if (bufferedChannel.u(result, this) != coroutineSingletons) {
                obj3 = obj2;
                distantRepairAssessmentViewModelImpl2 = distantRepairAssessmentViewModelImpl;
                monitorAction = monitorActionA;
                objA = obj3;
                i2 = i3;
                distantRepairAssessmentViewModelImpl4 = distantRepairAssessmentViewModelImpl2;
                thA = Result.a(objA);
                if (thA != null) {
                    monitorAction.d(new CareServicesMonitoring.Error.ConfirmAssessmentError(thA));
                    this.f56895b = monitorAction;
                    this.f56896c = null;
                    this.d = distantRepairAssessmentViewModelImpl4;
                    this.f56897e = objA;
                    this.f56898f = thA;
                    this.g = i2;
                    this.f56899h = 0;
                    this.f56900i = 4;
                    int i12 = DistantRepairAssessmentViewModelImpl.R;
                    if (distantRepairAssessmentViewModelImpl4.Bc(this) != coroutineSingletons) {
                        distantRepairAssessmentViewModelImpl3 = distantRepairAssessmentViewModelImpl4;
                        th = thA;
                        monitorAction2 = monitorAction;
                        distantRepairAssessmentViewModelImpl3.f56885c.c("DistantRepairAssessmentViewModelImpl", "Unable to accept assessment", th);
                        distantRepairAssessmentViewModelImpl3.r.setValue(Boolean.FALSE);
                        monitorAction = monitorAction2;
                    }
                }
                monitorAction.b();
                Result.Companion companion8 = Result.INSTANCE;
                mutableStateFlow.setValue(Boolean.FALSE);
                return Unit.f71739a;
            }
        }
        return coroutineSingletons;
    }
}

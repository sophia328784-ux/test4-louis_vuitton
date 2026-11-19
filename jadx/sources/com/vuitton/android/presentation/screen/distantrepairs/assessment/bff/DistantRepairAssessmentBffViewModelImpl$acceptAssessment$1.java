package com.vuitton.android.presentation.screen.distantrepairs.assessment.bff;

import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.careservices.CareServicesMonitoring;
import com.vuitton.android.domain.usecase.careservices.AcceptCareServiceBffUseCase;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.account.profile.MapperKt;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAddress;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import defpackage.md;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl$acceptAssessment$1", f = "DistantRepairAssessmentBffViewModelImpl.kt", l = {450, 458, 459, 462}, m = "invokeSuspend", v = 2)
final class DistantRepairAssessmentBffViewModelImpl$acceptAssessment$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f56971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f56972c;
    public DistantRepairAssessmentBffViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Throwable f56973e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f56974f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentBffViewModelImpl f56975h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairAssessmentBffViewModelImpl$acceptAssessment$1(Continuation continuation, DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl) {
        super(2, continuation);
        this.f56975h = distantRepairAssessmentBffViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DistantRepairAssessmentBffViewModelImpl$acceptAssessment$1(continuation, this.f56975h);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DistantRepairAssessmentBffViewModelImpl$acceptAssessment$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:40:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:43:0x0106  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MonitorAction monitorActionA;
        Object objA;
        DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl;
        MonitorAction monitorAction;
        Object obj2;
        int i2;
        BufferedChannel bufferedChannel;
        Result result;
        MonitorAction monitorAction2;
        Throwable thA;
        MonitorAction monitorAction3;
        DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl2 = this.f56975h;
        MutableStateFlow mutableStateFlow = distantRepairAssessmentBffViewModelImpl2.t;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.g;
        if (i3 == 0) {
            ResultKt.b(obj);
            monitorActionA = distantRepairAssessmentBffViewModelImpl2.d.a(distantRepairAssessmentBffViewModelImpl2.q, CareServicesMonitoring.Action.ConfirmAssessment.f48865a);
            mutableStateFlow.setValue(Boolean.TRUE);
            AcceptCareServiceBffUseCase acceptCareServiceBffUseCase = distantRepairAssessmentBffViewModelImpl2.f56967k;
            CareServiceId.Companion companion = CareServiceId.INSTANCE;
            String str = distantRepairAssessmentBffViewModelImpl2.Q;
            companion.getClass();
            if (str == null) {
                str = CareServiceId.f66878b;
            }
            AddressUiModel addressUiModel = (AddressUiModel) distantRepairAssessmentBffViewModelImpl2.z.getValue();
            CareServiceAddress careServiceAddressA = addressUiModel != null ? MapperKt.a(addressUiModel) : null;
            this.f56971b = monitorActionA;
            this.g = 1;
            objA = acceptCareServiceBffUseCase.a(str, careServiceAddressA, this);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            monitorActionA = this.f56971b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        } else {
            if (i3 == 2) {
                int i4 = this.f56974f;
                distantRepairAssessmentBffViewModelImpl = this.d;
                Object obj3 = this.f56972c;
                monitorAction = this.f56971b;
                ResultKt.b(obj);
                i2 = i4;
                obj2 = obj3;
                bufferedChannel = distantRepairAssessmentBffViewModelImpl.L;
                Result.Companion companion2 = Result.INSTANCE;
                result = new Result(Boolean.TRUE);
                this.f56971b = monitorAction;
                this.f56972c = obj2;
                this.d = null;
                this.f56973e = null;
                this.f56974f = i2;
                this.g = 3;
                if (bufferedChannel.u(result, this) != coroutineSingletons) {
                    monitorAction2 = monitorAction;
                    objA = obj2;
                    monitorActionA = monitorAction2;
                    thA = Result.a(objA);
                    if (thA != null) {
                        monitorActionA.d(new CareServicesMonitoring.Error.ConfirmAssessmentError(thA));
                        this.f56971b = monitorActionA;
                        this.f56972c = objA;
                        this.d = distantRepairAssessmentBffViewModelImpl2;
                        this.f56973e = thA;
                        this.f56974f = 0;
                        this.g = 4;
                        if (DistantRepairAssessmentBffViewModelImpl.yc(distantRepairAssessmentBffViewModelImpl2, this) != coroutineSingletons) {
                            monitorAction3 = monitorActionA;
                        }
                    }
                    mutableStateFlow.setValue(Boolean.FALSE);
                    monitorActionA.b();
                    return Unit.f71739a;
                }
                return coroutineSingletons;
            }
            if (i3 == 3) {
                obj2 = this.f56972c;
                monitorAction2 = this.f56971b;
                ResultKt.b(obj);
                objA = obj2;
                monitorActionA = monitorAction2;
                thA = Result.a(objA);
                if (thA != null) {
                    monitorActionA.d(new CareServicesMonitoring.Error.ConfirmAssessmentError(thA));
                    this.f56971b = monitorActionA;
                    this.f56972c = objA;
                    this.d = distantRepairAssessmentBffViewModelImpl2;
                    this.f56973e = thA;
                    this.f56974f = 0;
                    this.g = 4;
                    if (DistantRepairAssessmentBffViewModelImpl.yc(distantRepairAssessmentBffViewModelImpl2, this) != coroutineSingletons) {
                        monitorAction3 = monitorActionA;
                    }
                    return coroutineSingletons;
                }
                mutableStateFlow.setValue(Boolean.FALSE);
                monitorActionA.b();
                return Unit.f71739a;
            }
            if (i3 != 4) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Throwable th = this.f56973e;
            DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl3 = this.d;
            monitorAction3 = this.f56971b;
            ResultKt.b(obj);
            thA = th;
            distantRepairAssessmentBffViewModelImpl2 = distantRepairAssessmentBffViewModelImpl3;
        }
        distantRepairAssessmentBffViewModelImpl2.f56961c.c("DistantRepairAssessmentBffViewModelImpl", "Unable to accept assessment", thA);
        distantRepairAssessmentBffViewModelImpl2.t.setValue(Boolean.FALSE);
        monitorActionA = monitorAction3;
        mutableStateFlow.setValue(Boolean.FALSE);
        monitorActionA.b();
        return Unit.f71739a;
        Result.Companion companion3 = Result.INSTANCE;
        if (objA instanceof Result.Failure) {
            thA = Result.a(objA);
            if (thA != null) {
                monitorActionA.d(new CareServicesMonitoring.Error.ConfirmAssessmentError(thA));
                this.f56971b = monitorActionA;
                this.f56972c = objA;
                this.d = distantRepairAssessmentBffViewModelImpl2;
                this.f56973e = thA;
                this.f56974f = 0;
                this.g = 4;
                if (DistantRepairAssessmentBffViewModelImpl.yc(distantRepairAssessmentBffViewModelImpl2, this) != coroutineSingletons) {
                    monitorAction3 = monitorActionA;
                    distantRepairAssessmentBffViewModelImpl2.f56961c.c("DistantRepairAssessmentBffViewModelImpl", "Unable to accept assessment", thA);
                    distantRepairAssessmentBffViewModelImpl2.t.setValue(Boolean.FALSE);
                    monitorActionA = monitorAction3;
                }
            }
            mutableStateFlow.setValue(Boolean.FALSE);
            monitorActionA.b();
            return Unit.f71739a;
        }
        CareServiceId.Companion companion4 = CareServiceId.INSTANCE;
        String str2 = distantRepairAssessmentBffViewModelImpl2.Q;
        companion4.getClass();
        if (str2 == null) {
            str2 = CareServiceId.f66878b;
        }
        monitorActionA.c(str2, "repairId");
        LVEventSender lVEventSender = distantRepairAssessmentBffViewModelImpl2.n;
        this.f56971b = monitorActionA;
        this.f56972c = objA;
        this.d = distantRepairAssessmentBffViewModelImpl2;
        this.f56973e = null;
        this.f56974f = 0;
        this.g = 2;
        if (lVEventSender.a(AppEvent.RefreshRepairsEvent.f43505a, this) != coroutineSingletons) {
            distantRepairAssessmentBffViewModelImpl = distantRepairAssessmentBffViewModelImpl2;
            monitorAction = monitorActionA;
            obj2 = objA;
            i2 = 0;
            bufferedChannel = distantRepairAssessmentBffViewModelImpl.L;
            Result.Companion companion5 = Result.INSTANCE;
            result = new Result(Boolean.TRUE);
            this.f56971b = monitorAction;
            this.f56972c = obj2;
            this.d = null;
            this.f56973e = null;
            this.f56974f = i2;
            this.g = 3;
            if (bufferedChannel.u(result, this) != coroutineSingletons) {
                monitorAction2 = monitorAction;
                objA = obj2;
                monitorActionA = monitorAction2;
                thA = Result.a(objA);
                if (thA != null) {
                    monitorActionA.d(new CareServicesMonitoring.Error.ConfirmAssessmentError(thA));
                    this.f56971b = monitorActionA;
                    this.f56972c = objA;
                    this.d = distantRepairAssessmentBffViewModelImpl2;
                    this.f56973e = thA;
                    this.f56974f = 0;
                    this.g = 4;
                    if (DistantRepairAssessmentBffViewModelImpl.yc(distantRepairAssessmentBffViewModelImpl2, this) != coroutineSingletons) {
                        monitorAction3 = monitorActionA;
                        distantRepairAssessmentBffViewModelImpl2.f56961c.c("DistantRepairAssessmentBffViewModelImpl", "Unable to accept assessment", thA);
                        distantRepairAssessmentBffViewModelImpl2.t.setValue(Boolean.FALSE);
                        monitorActionA = monitorAction3;
                    }
                }
                mutableStateFlow.setValue(Boolean.FALSE);
                monitorActionA.b();
                return Unit.f71739a;
            }
        }
        return coroutineSingletons;
    }
}

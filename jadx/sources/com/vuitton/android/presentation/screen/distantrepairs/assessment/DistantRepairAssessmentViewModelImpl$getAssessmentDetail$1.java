package com.vuitton.android.presentation.screen.distantrepairs.assessment;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.careservices.CareServicesMonitoring;
import com.vuitton.android.domain.usecase.careservices.GetCareServiceByIdUseCase;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailMapperKt;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceDetail;
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
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl$getAssessmentDetail$1", f = "DistantRepairAssessmentViewModelImpl.kt", l = {312, DilithiumEngine.DilithiumPolyT1PackedBytes}, m = "invokeSuspend", v = 2)
final class DistantRepairAssessmentViewModelImpl$getAssessmentDetail$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public DistantRepairAssessmentViewModelImpl f56919b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f56920c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Throwable f56921e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f56922f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentViewModelImpl f56923h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairAssessmentViewModelImpl$getAssessmentDetail$1(Continuation continuation, DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl) {
        super(2, continuation);
        this.f56923h = distantRepairAssessmentViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DistantRepairAssessmentViewModelImpl$getAssessmentDetail$1(continuation, this.f56923h);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DistantRepairAssessmentViewModelImpl$getAssessmentDetail$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0097  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a6  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl;
        Object objA;
        String str;
        int i2;
        DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl2;
        Throwable th;
        MonitorAction monitorAction;
        MonitorAction monitorAction2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.g;
        if (i3 == 0) {
            ResultKt.b(obj);
            distantRepairAssessmentViewModelImpl = this.f56923h;
            String str2 = distantRepairAssessmentViewModelImpl.P;
            if (str2 != null) {
                distantRepairAssessmentViewModelImpl.r.setValue(Boolean.TRUE);
                GetCareServiceByIdUseCase getCareServiceByIdUseCase = distantRepairAssessmentViewModelImpl.f56888h;
                CareServiceIdUiModel.f64059c.getClass();
                CareServiceId.Companion companion = CareServiceId.INSTANCE;
                this.f56919b = distantRepairAssessmentViewModelImpl;
                this.f56920c = str2;
                this.f56922f = 0;
                this.g = 1;
                objA = getCareServiceByIdUseCase.a(str2, this);
                if (objA != coroutineSingletons) {
                    str = str2;
                    i2 = 0;
                }
                return coroutineSingletons;
            }
            return Unit.f71739a;
        }
        if (i3 == 1) {
            i2 = this.f56922f;
            String str3 = this.f56920c;
            DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl3 = this.f56919b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
            distantRepairAssessmentViewModelImpl = distantRepairAssessmentViewModelImpl3;
            str = str3;
        } else {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            th = this.f56921e;
            distantRepairAssessmentViewModelImpl2 = this.f56919b;
            ResultKt.b(obj);
        }
        monitorAction2 = distantRepairAssessmentViewModelImpl2.p;
        if (monitorAction2 != null) {
            monitorAction2.d(new CareServicesMonitoring.Error.ViewEstimateError(th));
            Result.Companion companion2 = Result.INSTANCE;
        }
        distantRepairAssessmentViewModelImpl = distantRepairAssessmentViewModelImpl2;
        monitorAction = distantRepairAssessmentViewModelImpl.p;
        if (monitorAction != null) {
            monitorAction.b();
            Result.Companion companion3 = Result.INSTANCE;
        }
        distantRepairAssessmentViewModelImpl.p = null;
        distantRepairAssessmentViewModelImpl.r.setValue(Boolean.FALSE);
        return Unit.f71739a;
        Result.Companion companion4 = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            CareServiceDetail careServiceDetail = (CareServiceDetail) objA;
            distantRepairAssessmentViewModelImpl.v.setValue(CareServiceDetailMapperKt.c(careServiceDetail, careServiceDetail.f66801j, false));
            MonitorAction monitorAction3 = distantRepairAssessmentViewModelImpl.p;
            if (monitorAction3 != null) {
                monitorAction3.c(str, "repairId");
            }
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            this.f56919b = distantRepairAssessmentViewModelImpl;
            this.f56920c = null;
            this.d = objA;
            this.f56921e = thA;
            this.f56922f = i2;
            this.g = 2;
            int i4 = DistantRepairAssessmentViewModelImpl.R;
            if (distantRepairAssessmentViewModelImpl.Bc(this) != coroutineSingletons) {
                distantRepairAssessmentViewModelImpl2 = distantRepairAssessmentViewModelImpl;
                th = thA;
                monitorAction2 = distantRepairAssessmentViewModelImpl2.p;
                if (monitorAction2 != null) {
                    monitorAction2.d(new CareServicesMonitoring.Error.ViewEstimateError(th));
                    Result.Companion companion5 = Result.INSTANCE;
                }
                distantRepairAssessmentViewModelImpl = distantRepairAssessmentViewModelImpl2;
            }
            return coroutineSingletons;
        }
        monitorAction = distantRepairAssessmentViewModelImpl.p;
        if (monitorAction != null) {
            monitorAction.b();
            Result.Companion companion6 = Result.INSTANCE;
        }
        distantRepairAssessmentViewModelImpl.p = null;
        distantRepairAssessmentViewModelImpl.r.setValue(Boolean.FALSE);
        return Unit.f71739a;
    }
}

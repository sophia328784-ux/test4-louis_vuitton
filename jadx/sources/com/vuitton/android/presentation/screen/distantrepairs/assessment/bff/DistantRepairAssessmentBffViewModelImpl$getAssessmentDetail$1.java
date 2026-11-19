package com.vuitton.android.presentation.screen.distantrepairs.assessment.bff;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.careservices.CareServicesMonitoring;
import com.vuitton.android.domain.usecase.careservices.GetCareServiceDetailBffUseCase;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModelMapperKt;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceDetail;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1", f = "DistantRepairAssessmentBffViewModelImpl.kt", l = {308, 316}, m = "invokeSuspend", v = 2)
final class DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public DistantRepairAssessmentBffViewModelImpl f56987b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f56988c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Throwable f56989e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f56990f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentBffViewModelImpl f56991h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1(Continuation continuation, DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl) {
        super(2, continuation);
        this.f56991h = distantRepairAssessmentBffViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1(continuation, this.f56991h);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x008e  */
    /* JADX WARN: Code duplicated, block: B:33:0x009d  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl;
        Object objA;
        String str;
        int i2;
        DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl2;
        Throwable th;
        MonitorAction monitorAction;
        MonitorAction monitorAction2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.g;
        if (i3 == 0) {
            ResultKt.b(obj);
            distantRepairAssessmentBffViewModelImpl = this.f56991h;
            String str2 = distantRepairAssessmentBffViewModelImpl.Q;
            if (str2 != null) {
                distantRepairAssessmentBffViewModelImpl.t.setValue(Boolean.TRUE);
                GetCareServiceDetailBffUseCase getCareServiceDetailBffUseCase = distantRepairAssessmentBffViewModelImpl.f56964h;
                this.f56987b = distantRepairAssessmentBffViewModelImpl;
                this.f56988c = str2;
                this.f56990f = 0;
                this.g = 1;
                objA = getCareServiceDetailBffUseCase.a(str2, this);
                if (objA != coroutineSingletons) {
                    str = str2;
                    i2 = 0;
                }
                return coroutineSingletons;
            }
            return Unit.f71739a;
        }
        if (i3 == 1) {
            i2 = this.f56990f;
            String str3 = this.f56988c;
            DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl3 = this.f56987b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
            distantRepairAssessmentBffViewModelImpl = distantRepairAssessmentBffViewModelImpl3;
            str = str3;
        } else {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            th = this.f56989e;
            distantRepairAssessmentBffViewModelImpl2 = this.f56987b;
            ResultKt.b(obj);
        }
        monitorAction2 = distantRepairAssessmentBffViewModelImpl2.r;
        if (monitorAction2 != null) {
            monitorAction2.d(new CareServicesMonitoring.Error.ViewEstimateError(th));
            Result.Companion companion = Result.INSTANCE;
        }
        distantRepairAssessmentBffViewModelImpl = distantRepairAssessmentBffViewModelImpl2;
        monitorAction = distantRepairAssessmentBffViewModelImpl.r;
        if (monitorAction != null) {
            monitorAction.b();
            Result.Companion companion2 = Result.INSTANCE;
        }
        distantRepairAssessmentBffViewModelImpl.r = null;
        distantRepairAssessmentBffViewModelImpl.t.setValue(Boolean.FALSE);
        return Unit.f71739a;
        Result.Companion companion3 = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            distantRepairAssessmentBffViewModelImpl.x.setValue(CareServiceDetailUiModelMapperKt.a((CareServiceDetail) objA, distantRepairAssessmentBffViewModelImpl.q));
            MonitorAction monitorAction3 = distantRepairAssessmentBffViewModelImpl.r;
            if (monitorAction3 != null) {
                monitorAction3.c(str, "repairId");
            }
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            this.f56987b = distantRepairAssessmentBffViewModelImpl;
            this.f56988c = null;
            this.d = objA;
            this.f56989e = thA;
            this.f56990f = i2;
            this.g = 2;
            if (DistantRepairAssessmentBffViewModelImpl.yc(distantRepairAssessmentBffViewModelImpl, this) != coroutineSingletons) {
                distantRepairAssessmentBffViewModelImpl2 = distantRepairAssessmentBffViewModelImpl;
                th = thA;
                monitorAction2 = distantRepairAssessmentBffViewModelImpl2.r;
                if (monitorAction2 != null) {
                    monitorAction2.d(new CareServicesMonitoring.Error.ViewEstimateError(th));
                    Result.Companion companion4 = Result.INSTANCE;
                }
                distantRepairAssessmentBffViewModelImpl = distantRepairAssessmentBffViewModelImpl2;
            }
            return coroutineSingletons;
        }
        monitorAction = distantRepairAssessmentBffViewModelImpl.r;
        if (monitorAction != null) {
            monitorAction.b();
            Result.Companion companion5 = Result.INSTANCE;
        }
        distantRepairAssessmentBffViewModelImpl.r = null;
        distantRepairAssessmentBffViewModelImpl.t.setValue(Boolean.FALSE);
        return Unit.f71739a;
    }
}

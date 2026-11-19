package com.vuitton.android.presentation.screen.distantrepairs.assessment;

import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.usecase.careservices.UpdateCareServiceUseCase;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModelKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceMapperKt;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceUpdate;
import com.vuitton.foundation.model.domain.model.repair.RepairStatus;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl$declineAssessment$1", f = "DistantRepairAssessmentViewModelImpl.kt", l = {514, 516, 517, 520}, m = "invokeSuspend", v = 2)
final class DistantRepairAssessmentViewModelImpl$declineAssessment$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public DistantRepairAssessmentViewModelImpl f56911b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f56912c;
    public Throwable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f56913e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f56914f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentViewModelImpl f56915h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ String f56916i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairAssessmentViewModelImpl$declineAssessment$1(DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f56915h = distantRepairAssessmentViewModelImpl;
        this.f56916i = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DistantRepairAssessmentViewModelImpl$declineAssessment$1(this.f56915h, this.f56916i, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DistantRepairAssessmentViewModelImpl$declineAssessment$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:33:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:36:0x010b  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        int i2;
        Object obj2;
        DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl;
        int i3;
        int i4;
        BufferedChannel bufferedChannel;
        Result result;
        Object obj3;
        DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl2;
        Throwable thA;
        DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl3;
        Throwable th;
        DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl4 = this.f56915h;
        MutableStateFlow mutableStateFlow = distantRepairAssessmentViewModelImpl4.r;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i5 = this.g;
        if (i5 == 0) {
            ResultKt.b(obj);
            mutableStateFlow.setValue(Boolean.TRUE);
            CareServiceDetailUiModel careServiceDetailUiModel = (CareServiceDetailUiModel) distantRepairAssessmentViewModelImpl4.v.getValue();
            if (careServiceDetailUiModel != null) {
                CareServiceUpdate careServiceUpdateA = CareServiceUpdate.a(CareServiceMapperKt.a(careServiceDetailUiModel), RepairStatus.PRELIMINARY_ASSESSMENT_DEC, RepairStatusUiModelKt.d(careServiceDetailUiModel.d), this.f56916i, 3932156);
                UpdateCareServiceUseCase updateCareServiceUseCase = distantRepairAssessmentViewModelImpl4.f56889i;
                CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
                String str = careServiceDetailUiModel.f63979b;
                companion.getClass();
                CareServiceIdUiModel.Companion.a(str);
                this.f56911b = distantRepairAssessmentViewModelImpl4;
                this.f56912c = null;
                this.f56913e = 0;
                this.g = 1;
                objA = updateCareServiceUseCase.a(str, careServiceUpdateA, this);
                if (objA != coroutineSingletons) {
                    i2 = 0;
                }
                return coroutineSingletons;
            }
            mutableStateFlow.setValue(Boolean.FALSE);
            return Unit.f71739a;
        }
        if (i5 == 1) {
            int i6 = this.f56913e;
            DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl5 = this.f56911b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
            i2 = i6;
            distantRepairAssessmentViewModelImpl4 = distantRepairAssessmentViewModelImpl5;
        } else {
            if (i5 == 2) {
                int i7 = this.f56914f;
                int i8 = this.f56913e;
                obj2 = this.f56912c;
                distantRepairAssessmentViewModelImpl = this.f56911b;
                ResultKt.b(obj);
                i4 = i7;
                i3 = i8;
                bufferedChannel = distantRepairAssessmentViewModelImpl.J;
                Result.Companion companion2 = Result.INSTANCE;
                result = new Result(Boolean.TRUE);
                this.f56911b = distantRepairAssessmentViewModelImpl;
                this.f56912c = obj2;
                this.d = null;
                this.f56913e = i3;
                this.f56914f = i4;
                this.g = 3;
                if (bufferedChannel.u(result, this) != coroutineSingletons) {
                    obj3 = obj2;
                    distantRepairAssessmentViewModelImpl2 = distantRepairAssessmentViewModelImpl;
                    objA = obj3;
                    i2 = i3;
                    distantRepairAssessmentViewModelImpl4 = distantRepairAssessmentViewModelImpl2;
                    thA = Result.a(objA);
                    if (thA != null) {
                        this.f56911b = distantRepairAssessmentViewModelImpl4;
                        this.f56912c = objA;
                        this.d = thA;
                        this.f56913e = i2;
                        this.f56914f = 0;
                        this.g = 4;
                        int i9 = DistantRepairAssessmentViewModelImpl.R;
                        if (distantRepairAssessmentViewModelImpl4.Bc(this) != coroutineSingletons) {
                            distantRepairAssessmentViewModelImpl3 = distantRepairAssessmentViewModelImpl4;
                            th = thA;
                        }
                    }
                    Result.Companion companion3 = Result.INSTANCE;
                    mutableStateFlow.setValue(Boolean.FALSE);
                    return Unit.f71739a;
                }
                return coroutineSingletons;
            }
            if (i5 == 3) {
                i3 = this.f56913e;
                obj3 = this.f56912c;
                distantRepairAssessmentViewModelImpl2 = this.f56911b;
                ResultKt.b(obj);
                objA = obj3;
                i2 = i3;
                distantRepairAssessmentViewModelImpl4 = distantRepairAssessmentViewModelImpl2;
                thA = Result.a(objA);
                if (thA != null) {
                    this.f56911b = distantRepairAssessmentViewModelImpl4;
                    this.f56912c = objA;
                    this.d = thA;
                    this.f56913e = i2;
                    this.f56914f = 0;
                    this.g = 4;
                    int i10 = DistantRepairAssessmentViewModelImpl.R;
                    if (distantRepairAssessmentViewModelImpl4.Bc(this) != coroutineSingletons) {
                        distantRepairAssessmentViewModelImpl3 = distantRepairAssessmentViewModelImpl4;
                        th = thA;
                    }
                    return coroutineSingletons;
                }
                Result.Companion companion4 = Result.INSTANCE;
                mutableStateFlow.setValue(Boolean.FALSE);
                return Unit.f71739a;
            }
            if (i5 != 4) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            th = this.d;
            distantRepairAssessmentViewModelImpl3 = this.f56911b;
            ResultKt.b(obj);
        }
        distantRepairAssessmentViewModelImpl3.f56885c.c("DistantRepairAssessmentViewModelImpl", "Unable to decline assessment", th);
        Result.Companion companion5 = Result.INSTANCE;
        mutableStateFlow.setValue(Boolean.FALSE);
        return Unit.f71739a;
        Result.Companion companion6 = Result.INSTANCE;
        if (objA instanceof Result.Failure) {
            thA = Result.a(objA);
            if (thA != null) {
                this.f56911b = distantRepairAssessmentViewModelImpl4;
                this.f56912c = objA;
                this.d = thA;
                this.f56913e = i2;
                this.f56914f = 0;
                this.g = 4;
                int i11 = DistantRepairAssessmentViewModelImpl.R;
                if (distantRepairAssessmentViewModelImpl4.Bc(this) != coroutineSingletons) {
                    distantRepairAssessmentViewModelImpl3 = distantRepairAssessmentViewModelImpl4;
                    th = thA;
                    distantRepairAssessmentViewModelImpl3.f56885c.c("DistantRepairAssessmentViewModelImpl", "Unable to decline assessment", th);
                }
            }
            Result.Companion companion7 = Result.INSTANCE;
            mutableStateFlow.setValue(Boolean.FALSE);
            return Unit.f71739a;
        }
        LVEventSender lVEventSender = distantRepairAssessmentViewModelImpl4.l;
        this.f56911b = distantRepairAssessmentViewModelImpl4;
        this.f56912c = objA;
        this.d = null;
        this.f56913e = i2;
        this.f56914f = 0;
        this.g = 2;
        if (lVEventSender.a(AppEvent.RefreshRepairsEvent.f43505a, this) != coroutineSingletons) {
            obj2 = objA;
            distantRepairAssessmentViewModelImpl = distantRepairAssessmentViewModelImpl4;
            i3 = i2;
            i4 = 0;
            bufferedChannel = distantRepairAssessmentViewModelImpl.J;
            Result.Companion companion8 = Result.INSTANCE;
            result = new Result(Boolean.TRUE);
            this.f56911b = distantRepairAssessmentViewModelImpl;
            this.f56912c = obj2;
            this.d = null;
            this.f56913e = i3;
            this.f56914f = i4;
            this.g = 3;
            if (bufferedChannel.u(result, this) != coroutineSingletons) {
                obj3 = obj2;
                distantRepairAssessmentViewModelImpl2 = distantRepairAssessmentViewModelImpl;
                objA = obj3;
                i2 = i3;
                distantRepairAssessmentViewModelImpl4 = distantRepairAssessmentViewModelImpl2;
                thA = Result.a(objA);
                if (thA != null) {
                    this.f56911b = distantRepairAssessmentViewModelImpl4;
                    this.f56912c = objA;
                    this.d = thA;
                    this.f56913e = i2;
                    this.f56914f = 0;
                    this.g = 4;
                    int i12 = DistantRepairAssessmentViewModelImpl.R;
                    if (distantRepairAssessmentViewModelImpl4.Bc(this) != coroutineSingletons) {
                        distantRepairAssessmentViewModelImpl3 = distantRepairAssessmentViewModelImpl4;
                        th = thA;
                        distantRepairAssessmentViewModelImpl3.f56885c.c("DistantRepairAssessmentViewModelImpl", "Unable to decline assessment", th);
                    }
                }
                Result.Companion companion9 = Result.INSTANCE;
                mutableStateFlow.setValue(Boolean.FALSE);
                return Unit.f71739a;
            }
        }
        return coroutineSingletons;
    }
}

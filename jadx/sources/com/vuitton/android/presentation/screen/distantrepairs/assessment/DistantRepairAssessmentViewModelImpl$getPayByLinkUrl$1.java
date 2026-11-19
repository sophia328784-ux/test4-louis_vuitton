package com.vuitton.android.presentation.screen.distantrepairs.assessment;

import com.vuitton.android.domain.usecase.careservices.GetCareServiceByIdUseCase;
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
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl$getPayByLinkUrl$1", f = "DistantRepairAssessmentViewModelImpl.kt", l = {335, 339, 343, 348}, m = "invokeSuspend", v = 2)
final class DistantRepairAssessmentViewModelImpl$getPayByLinkUrl$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public DistantRepairAssessmentViewModelImpl f56924b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f56925c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f56926e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentViewModelImpl f56927f;
    public final /* synthetic */ int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairAssessmentViewModelImpl$getPayByLinkUrl$1(DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl, int i2, Continuation continuation) {
        super(2, continuation);
        this.f56927f = distantRepairAssessmentViewModelImpl;
        this.g = i2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DistantRepairAssessmentViewModelImpl$getPayByLinkUrl$1(this.f56927f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DistantRepairAssessmentViewModelImpl$getPayByLinkUrl$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e2  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl;
        Object obj2;
        int i2;
        int i3;
        Object obj3;
        DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl2;
        int i4;
        DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl3;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i5 = this.f56926e;
        if (i5 == 0) {
            ResultKt.b(obj);
            DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl4 = this.f56927f;
            distantRepairAssessmentViewModelImpl4.r.setValue(Boolean.TRUE);
            String str = distantRepairAssessmentViewModelImpl4.P;
            if (str != null) {
                GetCareServiceByIdUseCase getCareServiceByIdUseCase = distantRepairAssessmentViewModelImpl4.f56888h;
                CareServiceIdUiModel.f64059c.getClass();
                CareServiceId.Companion companion = CareServiceId.INSTANCE;
                this.f56924b = distantRepairAssessmentViewModelImpl4;
                int i6 = this.g;
                this.d = i6;
                this.f56926e = 1;
                Object objA = getCareServiceByIdUseCase.a(str, this);
                if (objA != coroutineSingletons) {
                    distantRepairAssessmentViewModelImpl = distantRepairAssessmentViewModelImpl4;
                    obj2 = objA;
                    i2 = i6;
                }
                return coroutineSingletons;
            }
            return Unit.f71739a;
        }
        if (i5 == 1) {
            i2 = this.d;
            distantRepairAssessmentViewModelImpl = this.f56924b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        } else {
            if (i5 == 2) {
                i4 = this.d;
                obj3 = this.f56925c;
                distantRepairAssessmentViewModelImpl2 = this.f56924b;
                ResultKt.b(obj);
                i3 = i4;
                obj2 = obj3;
                distantRepairAssessmentViewModelImpl = distantRepairAssessmentViewModelImpl2;
                if (Result.a(obj2) != null) {
                    this.f56924b = distantRepairAssessmentViewModelImpl;
                    this.f56925c = obj2;
                    this.d = i3;
                    this.f56926e = 4;
                    if (DistantRepairAssessmentViewModelImpl.yc(this, distantRepairAssessmentViewModelImpl) != coroutineSingletons) {
                        distantRepairAssessmentViewModelImpl3 = distantRepairAssessmentViewModelImpl;
                    }
                    return coroutineSingletons;
                }
                distantRepairAssessmentViewModelImpl.r.setValue(Boolean.FALSE);
                return Unit.f71739a;
            }
            if (i5 == 3) {
                i4 = this.d;
                obj3 = this.f56925c;
                distantRepairAssessmentViewModelImpl2 = this.f56924b;
                ResultKt.b(obj);
                distantRepairAssessmentViewModelImpl2.f56885c.c("DistantRepairAssessmentViewModelImpl", "Unable to get pay by link url", null);
                i3 = i4;
                obj2 = obj3;
                distantRepairAssessmentViewModelImpl = distantRepairAssessmentViewModelImpl2;
                if (Result.a(obj2) != null) {
                    this.f56924b = distantRepairAssessmentViewModelImpl;
                    this.f56925c = obj2;
                    this.d = i3;
                    this.f56926e = 4;
                    if (DistantRepairAssessmentViewModelImpl.yc(this, distantRepairAssessmentViewModelImpl) != coroutineSingletons) {
                        distantRepairAssessmentViewModelImpl3 = distantRepairAssessmentViewModelImpl;
                    }
                    return coroutineSingletons;
                }
                distantRepairAssessmentViewModelImpl.r.setValue(Boolean.FALSE);
                return Unit.f71739a;
            }
            if (i5 != 4) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            distantRepairAssessmentViewModelImpl3 = this.f56924b;
            ResultKt.b(obj);
        }
        distantRepairAssessmentViewModelImpl3.f56885c.c("DistantRepairAssessmentViewModelImpl", "Unable to get pay by link url", null);
        distantRepairAssessmentViewModelImpl = distantRepairAssessmentViewModelImpl3;
        distantRepairAssessmentViewModelImpl.r.setValue(Boolean.FALSE);
        return Unit.f71739a;
        Result.Companion companion2 = Result.INSTANCE;
        i3 = 0;
        if (!(obj2 instanceof Result.Failure)) {
            String str2 = ((CareServiceDetail) obj2).U;
            if (str2 != null && str2.length() != 0) {
                MutableStateFlow mutableStateFlow = distantRepairAssessmentViewModelImpl.B;
                str2.getClass();
                mutableStateFlow.setValue(str2);
                BufferedChannel bufferedChannel = distantRepairAssessmentViewModelImpl.N;
                Result result = new Result(str2);
                this.f56924b = distantRepairAssessmentViewModelImpl;
                this.f56925c = obj2;
                this.d = 0;
                this.f56926e = 2;
                if (bufferedChannel.u(result, this) != coroutineSingletons) {
                    obj3 = obj2;
                    distantRepairAssessmentViewModelImpl2 = distantRepairAssessmentViewModelImpl;
                    i4 = 0;
                    i3 = i4;
                    obj2 = obj3;
                    distantRepairAssessmentViewModelImpl = distantRepairAssessmentViewModelImpl2;
                    if (Result.a(obj2) != null) {
                        this.f56924b = distantRepairAssessmentViewModelImpl;
                        this.f56925c = obj2;
                        this.d = i3;
                        this.f56926e = 4;
                        if (DistantRepairAssessmentViewModelImpl.yc(this, distantRepairAssessmentViewModelImpl) != coroutineSingletons) {
                            distantRepairAssessmentViewModelImpl3 = distantRepairAssessmentViewModelImpl;
                            distantRepairAssessmentViewModelImpl3.f56885c.c("DistantRepairAssessmentViewModelImpl", "Unable to get pay by link url", null);
                            distantRepairAssessmentViewModelImpl = distantRepairAssessmentViewModelImpl3;
                        }
                    }
                    distantRepairAssessmentViewModelImpl.r.setValue(Boolean.FALSE);
                }
            } else if (8 > i2) {
                distantRepairAssessmentViewModelImpl.S(i2 + 1);
                if (Result.a(obj2) != null) {
                    this.f56924b = distantRepairAssessmentViewModelImpl;
                    this.f56925c = obj2;
                    this.d = i3;
                    this.f56926e = 4;
                    if (DistantRepairAssessmentViewModelImpl.yc(this, distantRepairAssessmentViewModelImpl) != coroutineSingletons) {
                        distantRepairAssessmentViewModelImpl3 = distantRepairAssessmentViewModelImpl;
                        distantRepairAssessmentViewModelImpl3.f56885c.c("DistantRepairAssessmentViewModelImpl", "Unable to get pay by link url", null);
                        distantRepairAssessmentViewModelImpl = distantRepairAssessmentViewModelImpl3;
                    }
                }
                distantRepairAssessmentViewModelImpl.r.setValue(Boolean.FALSE);
            } else {
                this.f56924b = distantRepairAssessmentViewModelImpl;
                this.f56925c = obj2;
                this.d = 0;
                this.f56926e = 3;
                if (DistantRepairAssessmentViewModelImpl.yc(this, distantRepairAssessmentViewModelImpl) != coroutineSingletons) {
                    obj3 = obj2;
                    distantRepairAssessmentViewModelImpl2 = distantRepairAssessmentViewModelImpl;
                    i4 = 0;
                    distantRepairAssessmentViewModelImpl2.f56885c.c("DistantRepairAssessmentViewModelImpl", "Unable to get pay by link url", null);
                    i3 = i4;
                    obj2 = obj3;
                    distantRepairAssessmentViewModelImpl = distantRepairAssessmentViewModelImpl2;
                    if (Result.a(obj2) != null) {
                        this.f56924b = distantRepairAssessmentViewModelImpl;
                        this.f56925c = obj2;
                        this.d = i3;
                        this.f56926e = 4;
                        if (DistantRepairAssessmentViewModelImpl.yc(this, distantRepairAssessmentViewModelImpl) != coroutineSingletons) {
                            distantRepairAssessmentViewModelImpl3 = distantRepairAssessmentViewModelImpl;
                            distantRepairAssessmentViewModelImpl3.f56885c.c("DistantRepairAssessmentViewModelImpl", "Unable to get pay by link url", null);
                            distantRepairAssessmentViewModelImpl = distantRepairAssessmentViewModelImpl3;
                        }
                    }
                    distantRepairAssessmentViewModelImpl.r.setValue(Boolean.FALSE);
                }
            }
            return coroutineSingletons;
        }
        if (Result.a(obj2) != null) {
            this.f56924b = distantRepairAssessmentViewModelImpl;
            this.f56925c = obj2;
            this.d = i3;
            this.f56926e = 4;
            if (DistantRepairAssessmentViewModelImpl.yc(this, distantRepairAssessmentViewModelImpl) != coroutineSingletons) {
                distantRepairAssessmentViewModelImpl3 = distantRepairAssessmentViewModelImpl;
                distantRepairAssessmentViewModelImpl3.f56885c.c("DistantRepairAssessmentViewModelImpl", "Unable to get pay by link url", null);
                distantRepairAssessmentViewModelImpl = distantRepairAssessmentViewModelImpl3;
            }
            return coroutineSingletons;
        }
        distantRepairAssessmentViewModelImpl.r.setValue(Boolean.FALSE);
        return Unit.f71739a;
    }
}

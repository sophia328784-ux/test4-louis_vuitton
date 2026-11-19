package com.vuitton.android.presentation.screen.distantrepairs.assessment.bff;

import com.vuitton.android.domain.usecase.careservices.GetCareServiceDetailBffUseCase;
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
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl$getPayByLinkUrl$1", f = "DistantRepairAssessmentBffViewModelImpl.kt", l = {331, 335, 339, 344}, m = "invokeSuspend", v = 2)
final class DistantRepairAssessmentBffViewModelImpl$getPayByLinkUrl$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public DistantRepairAssessmentBffViewModelImpl f56992b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f56993c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f56994e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentBffViewModelImpl f56995f;
    public final /* synthetic */ int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairAssessmentBffViewModelImpl$getPayByLinkUrl$1(DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl, int i2, Continuation continuation) {
        super(2, continuation);
        this.f56995f = distantRepairAssessmentBffViewModelImpl;
        this.g = i2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DistantRepairAssessmentBffViewModelImpl$getPayByLinkUrl$1(this.f56995f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DistantRepairAssessmentBffViewModelImpl$getPayByLinkUrl$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:45:0x00db  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl;
        Object obj2;
        int i2;
        int i3;
        Object obj3;
        DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl2;
        int i4;
        DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl3;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i5 = this.f56994e;
        if (i5 == 0) {
            ResultKt.b(obj);
            DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl4 = this.f56995f;
            distantRepairAssessmentBffViewModelImpl4.t.setValue(Boolean.TRUE);
            String str = distantRepairAssessmentBffViewModelImpl4.Q;
            if (str != null) {
                GetCareServiceDetailBffUseCase getCareServiceDetailBffUseCase = distantRepairAssessmentBffViewModelImpl4.f56964h;
                this.f56992b = distantRepairAssessmentBffViewModelImpl4;
                int i6 = this.g;
                this.d = i6;
                this.f56994e = 1;
                Object objA = getCareServiceDetailBffUseCase.a(str, this);
                if (objA != coroutineSingletons) {
                    distantRepairAssessmentBffViewModelImpl = distantRepairAssessmentBffViewModelImpl4;
                    obj2 = objA;
                    i2 = i6;
                }
                return coroutineSingletons;
            }
            return Unit.f71739a;
        }
        if (i5 == 1) {
            i2 = this.d;
            distantRepairAssessmentBffViewModelImpl = this.f56992b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        } else {
            if (i5 == 2) {
                i4 = this.d;
                obj3 = this.f56993c;
                distantRepairAssessmentBffViewModelImpl2 = this.f56992b;
                ResultKt.b(obj);
                i3 = i4;
                obj2 = obj3;
                distantRepairAssessmentBffViewModelImpl = distantRepairAssessmentBffViewModelImpl2;
                if (Result.a(obj2) != null) {
                    this.f56992b = distantRepairAssessmentBffViewModelImpl;
                    this.f56993c = obj2;
                    this.d = i3;
                    this.f56994e = 4;
                    if (DistantRepairAssessmentBffViewModelImpl.zc(this, distantRepairAssessmentBffViewModelImpl) != coroutineSingletons) {
                        distantRepairAssessmentBffViewModelImpl3 = distantRepairAssessmentBffViewModelImpl;
                    }
                    return coroutineSingletons;
                }
                distantRepairAssessmentBffViewModelImpl.t.setValue(Boolean.FALSE);
                return Unit.f71739a;
            }
            if (i5 == 3) {
                i4 = this.d;
                obj3 = this.f56993c;
                distantRepairAssessmentBffViewModelImpl2 = this.f56992b;
                ResultKt.b(obj);
                distantRepairAssessmentBffViewModelImpl2.f56961c.c("DistantRepairAssessmentBffViewModelImpl", "Unable to get pay by link url", null);
                i3 = i4;
                obj2 = obj3;
                distantRepairAssessmentBffViewModelImpl = distantRepairAssessmentBffViewModelImpl2;
                if (Result.a(obj2) != null) {
                    this.f56992b = distantRepairAssessmentBffViewModelImpl;
                    this.f56993c = obj2;
                    this.d = i3;
                    this.f56994e = 4;
                    if (DistantRepairAssessmentBffViewModelImpl.zc(this, distantRepairAssessmentBffViewModelImpl) != coroutineSingletons) {
                        distantRepairAssessmentBffViewModelImpl3 = distantRepairAssessmentBffViewModelImpl;
                    }
                    return coroutineSingletons;
                }
                distantRepairAssessmentBffViewModelImpl.t.setValue(Boolean.FALSE);
                return Unit.f71739a;
            }
            if (i5 != 4) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            distantRepairAssessmentBffViewModelImpl3 = this.f56992b;
            ResultKt.b(obj);
        }
        distantRepairAssessmentBffViewModelImpl3.f56961c.c("DistantRepairAssessmentBffViewModelImpl", "Unable to get pay by link url", null);
        distantRepairAssessmentBffViewModelImpl = distantRepairAssessmentBffViewModelImpl3;
        distantRepairAssessmentBffViewModelImpl.t.setValue(Boolean.FALSE);
        return Unit.f71739a;
        Result.Companion companion = Result.INSTANCE;
        i3 = 0;
        if (!(obj2 instanceof Result.Failure)) {
            String str2 = ((CareServiceDetail) obj2).m;
            if (str2 != null && str2.length() != 0) {
                MutableStateFlow mutableStateFlow = distantRepairAssessmentBffViewModelImpl.C;
                str2.getClass();
                mutableStateFlow.setValue(str2);
                BufferedChannel bufferedChannel = distantRepairAssessmentBffViewModelImpl.O;
                Result result = new Result(str2);
                this.f56992b = distantRepairAssessmentBffViewModelImpl;
                this.f56993c = obj2;
                this.d = 0;
                this.f56994e = 2;
                if (bufferedChannel.u(result, this) != coroutineSingletons) {
                    obj3 = obj2;
                    distantRepairAssessmentBffViewModelImpl2 = distantRepairAssessmentBffViewModelImpl;
                    i4 = 0;
                    i3 = i4;
                    obj2 = obj3;
                    distantRepairAssessmentBffViewModelImpl = distantRepairAssessmentBffViewModelImpl2;
                    if (Result.a(obj2) != null) {
                        this.f56992b = distantRepairAssessmentBffViewModelImpl;
                        this.f56993c = obj2;
                        this.d = i3;
                        this.f56994e = 4;
                        if (DistantRepairAssessmentBffViewModelImpl.zc(this, distantRepairAssessmentBffViewModelImpl) != coroutineSingletons) {
                            distantRepairAssessmentBffViewModelImpl3 = distantRepairAssessmentBffViewModelImpl;
                            distantRepairAssessmentBffViewModelImpl3.f56961c.c("DistantRepairAssessmentBffViewModelImpl", "Unable to get pay by link url", null);
                            distantRepairAssessmentBffViewModelImpl = distantRepairAssessmentBffViewModelImpl3;
                        }
                    }
                    distantRepairAssessmentBffViewModelImpl.t.setValue(Boolean.FALSE);
                }
            } else if (8 > i2) {
                distantRepairAssessmentBffViewModelImpl.S(i2 + 1);
                if (Result.a(obj2) != null) {
                    this.f56992b = distantRepairAssessmentBffViewModelImpl;
                    this.f56993c = obj2;
                    this.d = i3;
                    this.f56994e = 4;
                    if (DistantRepairAssessmentBffViewModelImpl.zc(this, distantRepairAssessmentBffViewModelImpl) != coroutineSingletons) {
                        distantRepairAssessmentBffViewModelImpl3 = distantRepairAssessmentBffViewModelImpl;
                        distantRepairAssessmentBffViewModelImpl3.f56961c.c("DistantRepairAssessmentBffViewModelImpl", "Unable to get pay by link url", null);
                        distantRepairAssessmentBffViewModelImpl = distantRepairAssessmentBffViewModelImpl3;
                    }
                }
                distantRepairAssessmentBffViewModelImpl.t.setValue(Boolean.FALSE);
            } else {
                this.f56992b = distantRepairAssessmentBffViewModelImpl;
                this.f56993c = obj2;
                this.d = 0;
                this.f56994e = 3;
                if (DistantRepairAssessmentBffViewModelImpl.zc(this, distantRepairAssessmentBffViewModelImpl) != coroutineSingletons) {
                    obj3 = obj2;
                    distantRepairAssessmentBffViewModelImpl2 = distantRepairAssessmentBffViewModelImpl;
                    i4 = 0;
                    distantRepairAssessmentBffViewModelImpl2.f56961c.c("DistantRepairAssessmentBffViewModelImpl", "Unable to get pay by link url", null);
                    i3 = i4;
                    obj2 = obj3;
                    distantRepairAssessmentBffViewModelImpl = distantRepairAssessmentBffViewModelImpl2;
                    if (Result.a(obj2) != null) {
                        this.f56992b = distantRepairAssessmentBffViewModelImpl;
                        this.f56993c = obj2;
                        this.d = i3;
                        this.f56994e = 4;
                        if (DistantRepairAssessmentBffViewModelImpl.zc(this, distantRepairAssessmentBffViewModelImpl) != coroutineSingletons) {
                            distantRepairAssessmentBffViewModelImpl3 = distantRepairAssessmentBffViewModelImpl;
                            distantRepairAssessmentBffViewModelImpl3.f56961c.c("DistantRepairAssessmentBffViewModelImpl", "Unable to get pay by link url", null);
                            distantRepairAssessmentBffViewModelImpl = distantRepairAssessmentBffViewModelImpl3;
                        }
                    }
                    distantRepairAssessmentBffViewModelImpl.t.setValue(Boolean.FALSE);
                }
            }
            return coroutineSingletons;
        }
        if (Result.a(obj2) != null) {
            this.f56992b = distantRepairAssessmentBffViewModelImpl;
            this.f56993c = obj2;
            this.d = i3;
            this.f56994e = 4;
            if (DistantRepairAssessmentBffViewModelImpl.zc(this, distantRepairAssessmentBffViewModelImpl) != coroutineSingletons) {
                distantRepairAssessmentBffViewModelImpl3 = distantRepairAssessmentBffViewModelImpl;
                distantRepairAssessmentBffViewModelImpl3.f56961c.c("DistantRepairAssessmentBffViewModelImpl", "Unable to get pay by link url", null);
                distantRepairAssessmentBffViewModelImpl = distantRepairAssessmentBffViewModelImpl3;
            }
            return coroutineSingletons;
        }
        distantRepairAssessmentBffViewModelImpl.t.setValue(Boolean.FALSE);
        return Unit.f71739a;
    }
}

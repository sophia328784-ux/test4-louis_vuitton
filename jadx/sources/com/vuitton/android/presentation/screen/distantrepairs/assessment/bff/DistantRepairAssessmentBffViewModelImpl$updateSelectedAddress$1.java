package com.vuitton.android.presentation.screen.distantrepairs.assessment.bff;

import android.app.Application;
import com.vuitton.android.domain.usecase.careservices.UpdateCareServiceAddressBffUseCase;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl$updateSelectedAddress$1", f = "DistantRepairAssessmentBffViewModelImpl.kt", l = {403, 410, 412}, m = "invokeSuspend", v = 2)
final class DistantRepairAssessmentBffViewModelImpl$updateSelectedAddress$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f57008b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DistantRepairAssessmentBffViewModelImpl f57009c;
    public Throwable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f57010e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentBffViewModelImpl f57011f;
    public final /* synthetic */ AddressUiModel g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairAssessmentBffViewModelImpl$updateSelectedAddress$1(DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl, AddressUiModel addressUiModel, Continuation continuation) {
        super(2, continuation);
        this.f57011f = distantRepairAssessmentBffViewModelImpl;
        this.g = addressUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DistantRepairAssessmentBffViewModelImpl$updateSelectedAddress$1(this.f57011f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DistantRepairAssessmentBffViewModelImpl$updateSelectedAddress$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0090 A[PHI: r4
      0x0090: PHI (r4v4 java.lang.Object) = (r4v3 java.lang.Object), (r4v3 java.lang.Object), (r4v8 java.lang.Object) binds: [B:20:0x0063, B:22:0x008d, B:10:0x0027] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:26:0x0096  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a5  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        Object obj2;
        Throwable thA;
        Throwable th;
        DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl;
        DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl2 = this.f57011f;
        MutableStateFlow mutableStateFlow = distantRepairAssessmentBffViewModelImpl2.v;
        MutableStateFlow mutableStateFlow2 = distantRepairAssessmentBffViewModelImpl2.t;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f57010e;
        AddressUiModel addressUiModel = this.g;
        if (i2 == 0) {
            ResultKt.b(obj);
            Boolean bool = Boolean.TRUE;
            mutableStateFlow2.setValue(bool);
            mutableStateFlow.setValue(bool);
            UpdateCareServiceAddressBffUseCase updateCareServiceAddressBffUseCase = distantRepairAssessmentBffViewModelImpl2.f56965i;
            CareServiceId.Companion companion = CareServiceId.INSTANCE;
            String str = distantRepairAssessmentBffViewModelImpl2.Q;
            companion.getClass();
            if (str == null) {
                str = CareServiceId.f66878b;
            }
            CareServiceAddress careServiceAddressA = MapperKt.a(addressUiModel);
            this.f57010e = 1;
            objA = updateCareServiceAddressBffUseCase.a(str, careServiceAddressA, this);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        } else {
            if (i2 == 2) {
                obj2 = this.f57008b;
                ResultKt.b(obj);
                thA = Result.a(obj2);
                if (thA != null) {
                    this.f57008b = obj2;
                    this.f57009c = distantRepairAssessmentBffViewModelImpl2;
                    this.d = thA;
                    this.f57010e = 3;
                    if (DistantRepairAssessmentBffViewModelImpl.yc(distantRepairAssessmentBffViewModelImpl2, this) != coroutineSingletons) {
                        th = thA;
                        distantRepairAssessmentBffViewModelImpl = distantRepairAssessmentBffViewModelImpl2;
                    }
                    return coroutineSingletons;
                }
                Boolean bool2 = Boolean.FALSE;
                mutableStateFlow2.setValue(bool2);
                mutableStateFlow.setValue(bool2);
                distantRepairAssessmentBffViewModelImpl2.u.setValue(bool2);
                return Unit.f71739a;
            }
            if (i2 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            th = this.d;
            distantRepairAssessmentBffViewModelImpl = this.f57009c;
            ResultKt.b(obj);
        }
        distantRepairAssessmentBffViewModelImpl.f56961c.c("DistantRepairAssessmentBffViewModelImpl", "Unable to update address", th);
        Boolean bool3 = Boolean.FALSE;
        mutableStateFlow2.setValue(bool3);
        mutableStateFlow.setValue(bool3);
        distantRepairAssessmentBffViewModelImpl2.u.setValue(bool3);
        return Unit.f71739a;
        obj2 = objA;
        Result.Companion companion2 = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            distantRepairAssessmentBffViewModelImpl2.z.setValue(addressUiModel);
            distantRepairAssessmentBffViewModelImpl2.A.setValue(addressUiModel);
            Application application = distantRepairAssessmentBffViewModelImpl2.f13405a;
            application.getClass();
            distantRepairAssessmentBffViewModelImpl2.Bc(application);
            BufferedChannel bufferedChannel = distantRepairAssessmentBffViewModelImpl2.N;
            Result result = new Result(Boolean.TRUE);
            this.f57008b = obj2;
            this.f57009c = null;
            this.f57010e = 2;
            if (bufferedChannel.u(result, this) != coroutineSingletons) {
                thA = Result.a(obj2);
                if (thA != null) {
                    this.f57008b = obj2;
                    this.f57009c = distantRepairAssessmentBffViewModelImpl2;
                    this.d = thA;
                    this.f57010e = 3;
                    if (DistantRepairAssessmentBffViewModelImpl.yc(distantRepairAssessmentBffViewModelImpl2, this) != coroutineSingletons) {
                        th = thA;
                        distantRepairAssessmentBffViewModelImpl = distantRepairAssessmentBffViewModelImpl2;
                        distantRepairAssessmentBffViewModelImpl.f56961c.c("DistantRepairAssessmentBffViewModelImpl", "Unable to update address", th);
                    }
                }
            }
            return coroutineSingletons;
        }
        thA = Result.a(obj2);
        if (thA != null) {
            this.f57008b = obj2;
            this.f57009c = distantRepairAssessmentBffViewModelImpl2;
            this.d = thA;
            this.f57010e = 3;
            if (DistantRepairAssessmentBffViewModelImpl.yc(distantRepairAssessmentBffViewModelImpl2, this) != coroutineSingletons) {
                th = thA;
                distantRepairAssessmentBffViewModelImpl = distantRepairAssessmentBffViewModelImpl2;
                distantRepairAssessmentBffViewModelImpl.f56961c.c("DistantRepairAssessmentBffViewModelImpl", "Unable to update address", th);
            }
            return coroutineSingletons;
        }
        Boolean bool4 = Boolean.FALSE;
        mutableStateFlow2.setValue(bool4);
        mutableStateFlow.setValue(bool4);
        distantRepairAssessmentBffViewModelImpl2.u.setValue(bool4);
        return Unit.f71739a;
    }
}

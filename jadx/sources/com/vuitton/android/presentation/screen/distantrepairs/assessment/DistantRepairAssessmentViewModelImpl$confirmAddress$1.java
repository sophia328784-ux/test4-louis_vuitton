package com.vuitton.android.presentation.screen.distantrepairs.assessment;

import android.app.Application;
import com.vuitton.android.domain.usecase.careservices.UpdateCareServiceUseCase;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailMapperKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
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
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl$confirmAddress$1", f = "DistantRepairAssessmentViewModelImpl.kt", l = {549, 557, 564}, m = "invokeSuspend", v = 2)
final class DistantRepairAssessmentViewModelImpl$confirmAddress$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public DistantRepairAssessmentViewModelImpl f56902b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Ref$ObjectRef f56903c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f56904e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Throwable f56905f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f56906h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentViewModelImpl f56907i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Ref$ObjectRef f56908j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ CareServiceDetailUiModel f56909k;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56910a;

        static {
            int[] iArr = new int[RepairStatus.values().length];
            try {
                iArr[RepairStatus.CONFIRM_ADDRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RepairStatus.AWAITING_PAYMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f56910a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairAssessmentViewModelImpl$confirmAddress$1(DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl, Ref$ObjectRef ref$ObjectRef, CareServiceDetailUiModel careServiceDetailUiModel, Continuation continuation) {
        super(2, continuation);
        this.f56907i = distantRepairAssessmentViewModelImpl;
        this.f56908j = ref$ObjectRef;
        this.f56909k = careServiceDetailUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DistantRepairAssessmentViewModelImpl$confirmAddress$1(this.f56907i, this.f56908j, this.f56909k, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DistantRepairAssessmentViewModelImpl$confirmAddress$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0111  */
    /* JADX WARN: Code duplicated, block: B:36:0x0114  */
    /* JADX WARN: Code duplicated, block: B:39:0x0119 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x011b  */
    /* JADX WARN: Code duplicated, block: B:41:0x011e  */
    /* JADX WARN: Code duplicated, block: B:44:0x0123  */
    /* JADX WARN: Code duplicated, block: B:48:0x0132  */
    /* JADX WARN: Code duplicated, block: B:51:0x0149  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws IOException {
        Ref$ObjectRef ref$ObjectRef;
        Object obj2;
        int i2;
        DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl;
        int i3;
        Throwable thA;
        DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl2;
        Throwable th;
        CareServiceDetail careServiceDetail;
        RepairStatus repairStatus;
        RepairStatus repairStatus2;
        DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl3 = this.f56907i;
        MutableStateFlow mutableStateFlow = distantRepairAssessmentViewModelImpl3.r;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = this.f56906h;
        if (i4 == 0) {
            ResultKt.b(obj);
            mutableStateFlow.setValue(Boolean.TRUE);
            Application application = distantRepairAssessmentViewModelImpl3.f13405a;
            application.getClass();
            CareServiceDetail careServiceDetailCc = distantRepairAssessmentViewModelImpl3.Cc(application, this.f56909k, (AddressUiModel) distantRepairAssessmentViewModelImpl3.y.getValue(), (AddressUiModel) distantRepairAssessmentViewModelImpl3.z.getValue());
            Ref$ObjectRef ref$ObjectRef2 = this.f56908j;
            ref$ObjectRef2.f71921b = careServiceDetailCc;
            if (careServiceDetailCc != null) {
                String str = careServiceDetailCc.f66794a;
                RepairStatus repairStatus3 = careServiceDetailCc.f66796c;
                int i5 = WhenMappings.f56910a[repairStatus3.ordinal()];
                if (i5 == 1) {
                    repairStatus3 = RepairStatus.SHIPPING_IN_PREPARATION;
                } else if (i5 == 2) {
                    repairStatus3 = RepairStatus.PAYMENT_INITIATED;
                }
                CareServiceUpdate careServiceUpdateA = CareServiceUpdate.a(CareServiceDetailKt.a(careServiceDetailCc), repairStatus3, null, null, 8388606);
                CareServiceIdUiModel.f64059c.getClass();
                distantRepairAssessmentViewModelImpl3.L8(str);
                UpdateCareServiceUseCase updateCareServiceUseCase = distantRepairAssessmentViewModelImpl3.f56889i;
                this.f56902b = distantRepairAssessmentViewModelImpl3;
                this.f56903c = ref$ObjectRef2;
                this.d = null;
                this.f56904e = null;
                this.g = 0;
                this.f56906h = 1;
                Object objA = updateCareServiceUseCase.a(str, careServiceUpdateA, this);
                if (objA != coroutineSingletons) {
                    ref$ObjectRef = ref$ObjectRef2;
                    obj2 = objA;
                    i2 = 0;
                }
                return coroutineSingletons;
            }
            mutableStateFlow.setValue(Boolean.FALSE);
            return Unit.f71739a;
        }
        if (i4 == 1) {
            int i6 = this.g;
            Ref$ObjectRef ref$ObjectRef3 = this.f56903c;
            DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl4 = this.f56902b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
            i2 = i6;
            distantRepairAssessmentViewModelImpl3 = distantRepairAssessmentViewModelImpl4;
            ref$ObjectRef = ref$ObjectRef3;
        } else {
            if (i4 == 2) {
                i3 = this.g;
                obj2 = this.f56904e;
                ref$ObjectRef = this.f56903c;
                distantRepairAssessmentViewModelImpl = this.f56902b;
                ResultKt.b(obj);
                careServiceDetail = (CareServiceDetail) ref$ObjectRef.f71921b;
                if (careServiceDetail != null) {
                    repairStatus = careServiceDetail.f66796c;
                } else {
                    repairStatus = null;
                }
                if (repairStatus != RepairStatus.PAYMENT_INITIATED) {
                    if (careServiceDetail != null) {
                        repairStatus2 = careServiceDetail.f66796c;
                    } else {
                        repairStatus2 = null;
                    }
                    if (repairStatus2 != RepairStatus.AWAITING_PAYMENT) {
                        distantRepairAssessmentViewModelImpl.r.setValue(Boolean.FALSE);
                    }
                }
                i2 = i3;
                distantRepairAssessmentViewModelImpl3 = distantRepairAssessmentViewModelImpl;
                thA = Result.a(obj2);
                if (thA != null) {
                    this.f56902b = distantRepairAssessmentViewModelImpl3;
                    this.f56903c = null;
                    this.d = obj2;
                    this.f56904e = null;
                    this.f56905f = thA;
                    this.g = i2;
                    this.f56906h = 3;
                    int i7 = DistantRepairAssessmentViewModelImpl.R;
                    if (distantRepairAssessmentViewModelImpl3.Bc(this) != coroutineSingletons) {
                        distantRepairAssessmentViewModelImpl2 = distantRepairAssessmentViewModelImpl3;
                        th = thA;
                    }
                    return coroutineSingletons;
                }
                Result.Companion companion = Result.INSTANCE;
                mutableStateFlow.setValue(Boolean.FALSE);
                return Unit.f71739a;
            }
            if (i4 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            th = this.f56905f;
            distantRepairAssessmentViewModelImpl2 = this.f56902b;
            ResultKt.b(obj);
        }
        distantRepairAssessmentViewModelImpl2.f56885c.c("DistantRepairAssessmentViewModelImpl", "Unable to confirm address", th);
        distantRepairAssessmentViewModelImpl2.r.setValue(Boolean.FALSE);
        Result.Companion companion2 = Result.INSTANCE;
        mutableStateFlow.setValue(Boolean.FALSE);
        return Unit.f71739a;
        Result.Companion companion3 = Result.INSTANCE;
        if (obj2 instanceof Result.Failure) {
            thA = Result.a(obj2);
            if (thA != null) {
                this.f56902b = distantRepairAssessmentViewModelImpl3;
                this.f56903c = null;
                this.d = obj2;
                this.f56904e = null;
                this.f56905f = thA;
                this.g = i2;
                this.f56906h = 3;
                int i8 = DistantRepairAssessmentViewModelImpl.R;
                if (distantRepairAssessmentViewModelImpl3.Bc(this) != coroutineSingletons) {
                    distantRepairAssessmentViewModelImpl2 = distantRepairAssessmentViewModelImpl3;
                    th = thA;
                    distantRepairAssessmentViewModelImpl2.f56885c.c("DistantRepairAssessmentViewModelImpl", "Unable to confirm address", th);
                    distantRepairAssessmentViewModelImpl2.r.setValue(Boolean.FALSE);
                }
            }
            Result.Companion companion4 = Result.INSTANCE;
            mutableStateFlow.setValue(Boolean.FALSE);
            return Unit.f71739a;
        }
        CareServiceDetail careServiceDetail2 = (CareServiceDetail) ref$ObjectRef.f71921b;
        if (careServiceDetail2 != null) {
            distantRepairAssessmentViewModelImpl3.w.setValue(CareServiceDetailMapperKt.c(careServiceDetail2, "", false));
        }
        Application application2 = distantRepairAssessmentViewModelImpl3.f13405a;
        application2.getClass();
        int i9 = DistantRepairAssessmentViewModelImpl.R;
        distantRepairAssessmentViewModelImpl3.Ec(application2);
        BufferedChannel bufferedChannel = distantRepairAssessmentViewModelImpl3.L;
        Result result = new Result(Boolean.TRUE);
        this.f56902b = distantRepairAssessmentViewModelImpl3;
        this.f56903c = ref$ObjectRef;
        this.d = null;
        this.f56904e = obj2;
        this.f56905f = null;
        this.g = i2;
        this.f56906h = 2;
        if (bufferedChannel.u(result, this) != coroutineSingletons) {
            distantRepairAssessmentViewModelImpl = distantRepairAssessmentViewModelImpl3;
            i3 = i2;
            careServiceDetail = (CareServiceDetail) ref$ObjectRef.f71921b;
            if (careServiceDetail != null) {
                repairStatus = careServiceDetail.f66796c;
            } else {
                repairStatus = null;
            }
            if (repairStatus != RepairStatus.PAYMENT_INITIATED) {
                if (careServiceDetail != null) {
                    repairStatus2 = careServiceDetail.f66796c;
                } else {
                    repairStatus2 = null;
                }
                if (repairStatus2 != RepairStatus.AWAITING_PAYMENT) {
                    distantRepairAssessmentViewModelImpl.r.setValue(Boolean.FALSE);
                }
            }
            i2 = i3;
            distantRepairAssessmentViewModelImpl3 = distantRepairAssessmentViewModelImpl;
            thA = Result.a(obj2);
            if (thA != null) {
                this.f56902b = distantRepairAssessmentViewModelImpl3;
                this.f56903c = null;
                this.d = obj2;
                this.f56904e = null;
                this.f56905f = thA;
                this.g = i2;
                this.f56906h = 3;
                int i10 = DistantRepairAssessmentViewModelImpl.R;
                if (distantRepairAssessmentViewModelImpl3.Bc(this) != coroutineSingletons) {
                    distantRepairAssessmentViewModelImpl2 = distantRepairAssessmentViewModelImpl3;
                    th = thA;
                    distantRepairAssessmentViewModelImpl2.f56885c.c("DistantRepairAssessmentViewModelImpl", "Unable to confirm address", th);
                    distantRepairAssessmentViewModelImpl2.r.setValue(Boolean.FALSE);
                }
            }
            Result.Companion companion5 = Result.INSTANCE;
            mutableStateFlow.setValue(Boolean.FALSE);
            return Unit.f71739a;
        }
        return coroutineSingletons;
    }
}

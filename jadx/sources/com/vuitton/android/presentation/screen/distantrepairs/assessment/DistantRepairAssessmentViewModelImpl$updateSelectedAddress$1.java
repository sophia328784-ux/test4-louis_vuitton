package com.vuitton.android.presentation.screen.distantrepairs.assessment;

import android.app.Application;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl$updateSelectedAddress$1", f = "DistantRepairAssessmentViewModelImpl.kt", l = {430}, m = "invokeSuspend", v = 2)
final class DistantRepairAssessmentViewModelImpl$updateSelectedAddress$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentViewModelImpl f56950c;
    public final /* synthetic */ CareServiceDetailUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AddressUiModel f56951e;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl$updateSelectedAddress$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl$updateSelectedAddress$1$1", f = "DistantRepairAssessmentViewModelImpl.kt", l = {438}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f56952b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ DistantRepairAssessmentViewModelImpl f56953c;
        public final /* synthetic */ AddressUiModel d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl, AddressUiModel addressUiModel, Continuation continuation) {
            super(1, continuation);
            this.f56953c = distantRepairAssessmentViewModelImpl;
            this.d = addressUiModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Continuation continuation) {
            return new AnonymousClass1(this.f56953c, this.d, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return ((AnonymousClass1) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f56952b;
            if (i2 == 0) {
                ResultKt.b(obj);
                DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl = this.f56953c;
                MutableStateFlow mutableStateFlow = distantRepairAssessmentViewModelImpl.y;
                AddressUiModel addressUiModel = this.d;
                mutableStateFlow.setValue(addressUiModel);
                distantRepairAssessmentViewModelImpl.z.setValue(addressUiModel);
                Application application = distantRepairAssessmentViewModelImpl.f13405a;
                application.getClass();
                distantRepairAssessmentViewModelImpl.Ec(application);
                BufferedChannel bufferedChannel = distantRepairAssessmentViewModelImpl.M;
                Result.Companion companion = Result.INSTANCE;
                Result result = new Result(Boolean.TRUE);
                this.f56952b = 1;
                if (bufferedChannel.u(result, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairAssessmentViewModelImpl$updateSelectedAddress$1(DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl, CareServiceDetailUiModel careServiceDetailUiModel, AddressUiModel addressUiModel, Continuation continuation) {
        super(2, continuation);
        this.f56950c = distantRepairAssessmentViewModelImpl;
        this.d = careServiceDetailUiModel;
        this.f56951e = addressUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DistantRepairAssessmentViewModelImpl$updateSelectedAddress$1(this.f56950c, this.d, this.f56951e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DistantRepairAssessmentViewModelImpl$updateSelectedAddress$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56949b;
        if (i2 == 0) {
            ResultKt.b(obj);
            DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl = this.f56950c;
            AddressUiModel addressUiModel = this.f56951e;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(distantRepairAssessmentViewModelImpl, addressUiModel, null);
            this.f56949b = 1;
            if (DistantRepairAssessmentViewModelImpl.Ac(distantRepairAssessmentViewModelImpl, this.d, addressUiModel, addressUiModel, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}

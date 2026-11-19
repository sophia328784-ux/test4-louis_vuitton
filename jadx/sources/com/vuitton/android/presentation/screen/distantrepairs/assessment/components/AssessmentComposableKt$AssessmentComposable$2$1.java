package com.vuitton.android.presentation.screen.distantrepairs.assessment.components;

import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel;
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
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentComposableKt$AssessmentComposable$2$1", f = "AssessmentComposable.kt", l = {62}, m = "invokeSuspend", v = 2)
final class AssessmentComposableKt$AssessmentComposable$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f57031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentViewModel f57032c;
    public final /* synthetic */ NavHostController d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AssessmentComposableKt$AssessmentComposable$2$1(DistantRepairAssessmentViewModel distantRepairAssessmentViewModel, NavHostController navHostController, Continuation continuation) {
        super(2, continuation);
        this.f57032c = distantRepairAssessmentViewModel;
        this.d = navHostController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AssessmentComposableKt$AssessmentComposable$2$1(this.f57032c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AssessmentComposableKt$AssessmentComposable$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f57031b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final DistantRepairAssessmentViewModel distantRepairAssessmentViewModel = this.f57032c;
            Flow flowR0 = distantRepairAssessmentViewModel.r0();
            final NavHostController navHostController = this.d;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentComposableKt$AssessmentComposable$2$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    if (!(((Result) obj2).f71708b instanceof Result.Failure)) {
                        distantRepairAssessmentViewModel.J0();
                        NavController.d(navHostController, AssessmentRoutes.Confirmation.INSTANCE, null, 6);
                    }
                    return Unit.f71739a;
                }
            };
            this.f57031b = 1;
            if (flowR0.f(flowCollector, this) == coroutineSingletons) {
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

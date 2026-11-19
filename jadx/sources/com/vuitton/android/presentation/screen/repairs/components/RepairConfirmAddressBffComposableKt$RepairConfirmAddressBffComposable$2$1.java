package com.vuitton.android.presentation.screen.repairs.components;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAction;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.components.RepairConfirmAddressBffComposableKt$RepairConfirmAddressBffComposable$2$1", f = "RepairConfirmAddressBffComposable.kt", l = {83}, m = "invokeSuspend", v = 2)
final class RepairConfirmAddressBffComposableKt$RepairConfirmAddressBffComposable$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentBffViewModel f63634c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f63635e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairConfirmAddressBffComposableKt$RepairConfirmAddressBffComposable$2$1(DistantRepairAssessmentBffViewModel distantRepairAssessmentBffViewModel, Function0 function0, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f63634c = distantRepairAssessmentBffViewModel;
        this.d = function0;
        this.f63635e = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RepairConfirmAddressBffComposableKt$RepairConfirmAddressBffComposable$2$1(this.f63634c, this.d, this.f63635e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepairConfirmAddressBffComposableKt$RepairConfirmAddressBffComposable$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63633b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final DistantRepairAssessmentBffViewModel distantRepairAssessmentBffViewModel = this.f63634c;
            Flow flowP0 = distantRepairAssessmentBffViewModel.P0();
            final Function0 function0 = this.d;
            final MutableState mutableState = this.f63635e;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.repairs.components.RepairConfirmAddressBffComposableKt$RepairConfirmAddressBffComposable$2$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    if (!(((Result) obj2).f71708b instanceof Result.Failure)) {
                        if (((CareServiceAction) mutableState.getF10755b()) == CareServiceAction.AwaitingPayment) {
                            distantRepairAssessmentBffViewModel.S(0);
                        } else {
                            function0.mo47invoke();
                        }
                    }
                    return Unit.f71739a;
                }
            };
            this.f63633b = 1;
            if (flowP0.f(flowCollector, this) == coroutineSingletons) {
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

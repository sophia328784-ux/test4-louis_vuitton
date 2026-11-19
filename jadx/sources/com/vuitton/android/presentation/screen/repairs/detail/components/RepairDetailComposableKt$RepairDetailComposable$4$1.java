package com.vuitton.android.presentation.screen.repairs.detail.components;

import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel;
import com.vuitton.android.presentation.screen.repairs.RepairViewModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceUiModel;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailComposableKt$RepairDetailComposable$4$1", f = "RepairDetailComposable.kt", l = {79}, m = "invokeSuspend", v = 2)
final class RepairDetailComposableKt$RepairDetailComposable$4$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentViewModel f63825c;
    public final /* synthetic */ CareServiceUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ RepairViewModel f63826e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairDetailComposableKt$RepairDetailComposable$4$1(DistantRepairAssessmentViewModel distantRepairAssessmentViewModel, CareServiceUiModel careServiceUiModel, RepairViewModel repairViewModel, Continuation continuation) {
        super(2, continuation);
        this.f63825c = distantRepairAssessmentViewModel;
        this.d = careServiceUiModel;
        this.f63826e = repairViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RepairDetailComposableKt$RepairDetailComposable$4$1(this.f63825c, this.d, this.f63826e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepairDetailComposableKt$RepairDetailComposable$4$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63824b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow flowV = this.f63825c.V();
            final CareServiceUiModel careServiceUiModel = this.d;
            final RepairViewModel repairViewModel = this.f63826e;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailComposableKt$RepairDetailComposable$4$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    CareServiceUiModel careServiceUiModel2;
                    if (!(((Result) obj2).f71708b instanceof Result.Failure) && (careServiceUiModel2 = careServiceUiModel) != null) {
                        repairViewModel.Z0(careServiceUiModel2.f63994b);
                    }
                    return Unit.f71739a;
                }
            };
            this.f63824b = 1;
            if (flowV.f(flowCollector, this) == coroutineSingletons) {
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

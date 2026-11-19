package com.vuitton.android.presentation.screen.repairs.detail.components;

import com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel;
import com.vuitton.android.presentation.screen.repairs.RepairBffViewModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceShortUiModel;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffComposableKt$RepairDetailBffComposable$2$1", f = "RepairDetailBffComposable.kt", l = {73}, m = "invokeSuspend", v = 2)
final class RepairDetailBffComposableKt$RepairDetailBffComposable$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentBffViewModel f63793c;
    public final /* synthetic */ CareServiceShortUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ RepairBffViewModel f63794e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairDetailBffComposableKt$RepairDetailBffComposable$2$1(DistantRepairAssessmentBffViewModel distantRepairAssessmentBffViewModel, CareServiceShortUiModel careServiceShortUiModel, RepairBffViewModel repairBffViewModel, Continuation continuation) {
        super(2, continuation);
        this.f63793c = distantRepairAssessmentBffViewModel;
        this.d = careServiceShortUiModel;
        this.f63794e = repairBffViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RepairDetailBffComposableKt$RepairDetailBffComposable$2$1(this.f63793c, this.d, this.f63794e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepairDetailBffComposableKt$RepairDetailBffComposable$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63792b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow flowV = this.f63793c.V();
            final CareServiceShortUiModel careServiceShortUiModel = this.d;
            final RepairBffViewModel repairBffViewModel = this.f63794e;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffComposableKt$RepairDetailBffComposable$2$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    CareServiceShortUiModel careServiceShortUiModel2;
                    if (!(((Result) obj2).f71708b instanceof Result.Failure) && (careServiceShortUiModel2 = careServiceShortUiModel) != null) {
                        repairBffViewModel.Z0(careServiceShortUiModel2.f64063b);
                    }
                    return Unit.f71739a;
                }
            };
            this.f63792b = 1;
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

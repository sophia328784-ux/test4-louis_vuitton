package com.vuitton.android.presentation.screen.repairs.components;

import androidx.compose.runtime.State;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.components.RepairConfirmAddressComposableKt$RepairConfirmAddressComposable$2$1", f = "RepairConfirmAddressComposable.kt", l = {EACTags.UNIFORM_RESOURCE_LOCATOR}, m = "invokeSuspend", v = 2)
final class RepairConfirmAddressComposableKt$RepairConfirmAddressComposable$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63650b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentViewModel f63651c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ State f63652e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairConfirmAddressComposableKt$RepairConfirmAddressComposable$2$1(DistantRepairAssessmentViewModel distantRepairAssessmentViewModel, Function0 function0, State state, Continuation continuation) {
        super(2, continuation);
        this.f63651c = distantRepairAssessmentViewModel;
        this.d = function0;
        this.f63652e = state;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RepairConfirmAddressComposableKt$RepairConfirmAddressComposable$2$1(this.f63651c, this.d, this.f63652e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepairConfirmAddressComposableKt$RepairConfirmAddressComposable$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63650b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final DistantRepairAssessmentViewModel distantRepairAssessmentViewModel = this.f63651c;
            Flow flowP0 = distantRepairAssessmentViewModel.P0();
            final Function0 function0 = this.d;
            final State state = this.f63652e;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.repairs.components.RepairConfirmAddressComposableKt$RepairConfirmAddressComposable$2$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    RepairStatusUiModel repairStatusUiModel;
                    if (!(((Result) obj2).f71708b instanceof Result.Failure)) {
                        CareServiceDetailUiModel careServiceDetailUiModel = ((RepairsViewState) state.getF10755b()).f64018h;
                        if (careServiceDetailUiModel == null || (repairStatusUiModel = careServiceDetailUiModel.d) == null || !ArraysKt.f(repairStatusUiModel, new RepairStatusUiModel[]{RepairStatusUiModel.AWAITING_PAYMENT, RepairStatusUiModel.PAYMENT_INITIATED})) {
                            function0.mo47invoke();
                        } else {
                            distantRepairAssessmentViewModel.S(0);
                        }
                    }
                    return Unit.f71739a;
                }
            };
            this.f63650b = 1;
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

package com.vuitton.android.presentation.screen.repairs.components;

import com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel;
import com.vuitton.android.presentation.screen.repairs.RepairBffViewModel;
import com.vuitton.foundation.model.domain.model.account.address.AddressId;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Pair;
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
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.components.RepairConfirmAddressBffComposableKt$RepairConfirmAddressBffComposable$1$1", f = "RepairConfirmAddressBffComposable.kt", l = {EACTags.DEPRECATED}, m = "invokeSuspend", v = 2)
final class RepairConfirmAddressBffComposableKt$RepairConfirmAddressBffComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RepairBffViewModel f63631c;
    public final /* synthetic */ DistantRepairAssessmentBffViewModel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairConfirmAddressBffComposableKt$RepairConfirmAddressBffComposable$1$1(RepairBffViewModel repairBffViewModel, DistantRepairAssessmentBffViewModel distantRepairAssessmentBffViewModel, Continuation continuation) {
        super(2, continuation);
        this.f63631c = repairBffViewModel;
        this.d = distantRepairAssessmentBffViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RepairConfirmAddressBffComposableKt$RepairConfirmAddressBffComposable$1$1(this.f63631c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepairConfirmAddressBffComposableKt$RepairConfirmAddressBffComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63630b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow flowU = this.f63631c.U();
            final DistantRepairAssessmentBffViewModel distantRepairAssessmentBffViewModel = this.d;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.repairs.components.RepairConfirmAddressBffComposableKt$RepairConfirmAddressBffComposable$1$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    Pair pair = (Pair) obj2;
                    String str = ((AddressId) pair.f71705b).f66250a;
                    distantRepairAssessmentBffViewModel.tb((String) pair.f71706c, str);
                    return Unit.f71739a;
                }
            };
            this.f63630b = 1;
            if (flowU.f(flowCollector, this) == coroutineSingletons) {
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

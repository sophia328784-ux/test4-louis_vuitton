package com.vuitton.android.presentation.screen.repairs.detail.components;

import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.repairs.RepairViewModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceUiModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailComposableKt$RepairDetailComposable$1$1", f = "RepairDetailComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class RepairDetailComposableKt$RepairDetailComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CareServiceUiModel f63818b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RepairViewModel f63819c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairDetailComposableKt$RepairDetailComposable$1$1(CareServiceUiModel careServiceUiModel, RepairViewModel repairViewModel, Continuation continuation) {
        super(2, continuation);
        this.f63818b = careServiceUiModel;
        this.f63819c = repairViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RepairDetailComposableKt$RepairDetailComposable$1$1(this.f63818b, this.f63819c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepairDetailComposableKt$RepairDetailComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        CareServiceUiModel careServiceUiModel = this.f63818b;
        RepairViewModel repairViewModel = this.f63819c;
        if (careServiceUiModel != null && careServiceUiModel.q) {
            repairViewModel.d(new DistantRepairTrackingUiModel.RepairDetailsOngoingScreen(careServiceUiModel.l, careServiceUiModel.f63996e.getTrackingLabel(), null));
        } else if (careServiceUiModel != null) {
            repairViewModel.d(new DistantRepairTrackingUiModel.RepairDetailsHistoryScreen(careServiceUiModel.l, careServiceUiModel.f63996e.getTrackingLabel(), null));
        }
        return Unit.f71739a;
    }
}

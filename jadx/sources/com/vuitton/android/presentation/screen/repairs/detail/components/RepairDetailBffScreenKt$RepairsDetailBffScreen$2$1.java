package com.vuitton.android.presentation.screen.repairs.detail.components;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairsBffViewState;
import com.vuitton.foundation.model.domain.model.distantrepairs.AvailabilitiesCaller;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffScreenKt$RepairsDetailBffScreen$2$1", f = "RepairDetailBffScreen.kt", l = {}, m = "invokeSuspend", v = 2)
final class RepairDetailBffScreenKt$RepairsDetailBffScreen$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function1 f63813b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RepairsBffViewState f63814c;
    public final /* synthetic */ MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function3 f63815e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DistantRepairContactMethod f63816f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairDetailBffScreenKt$RepairsDetailBffScreen$2$1(Function1 function1, RepairsBffViewState repairsBffViewState, MutableState mutableState, Function3 function3, DistantRepairContactMethod distantRepairContactMethod, Continuation continuation) {
        super(2, continuation);
        this.f63813b = function1;
        this.f63814c = repairsBffViewState;
        this.d = mutableState;
        this.f63815e = function3;
        this.f63816f = distantRepairContactMethod;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RepairDetailBffScreenKt$RepairsDetailBffScreen$2$1(this.f63813b, this.f63814c, this.d, this.f63815e, this.f63816f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepairDetailBffScreenKt$RepairsDetailBffScreen$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CareServiceDetailUiModel.Store store;
        String str;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        if (Intrinsics.c((BottomSheetScreen) this.d.getF10755b(), BottomSheetScreen.BottomSheetRescheduleCalendar.f63787a)) {
            this.f63813b.invoke(DistantRepairTrackingUiModel.RescheduleAppointmentCalendarScreen.f57458a);
            CareServiceDetailUiModel careServiceDetailUiModel = this.f63814c.f64088h;
            if (careServiceDetailUiModel != null && (store = careServiceDetailUiModel.g) != null && (str = store.f64053b) != null) {
                if (str.length() <= 0) {
                    str = null;
                }
                if (str != null) {
                    this.f63815e.A(AvailabilitiesCaller.DISTANT_REPAIRS, str, this.f63816f);
                }
            }
        }
        return Unit.f71739a;
    }
}

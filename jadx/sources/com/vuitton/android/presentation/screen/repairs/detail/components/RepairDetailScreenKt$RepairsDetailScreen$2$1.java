package com.vuitton.android.presentation.screen.repairs.detail.components;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailScreenKt$RepairsDetailScreen$2$1", f = "RepairDetailScreen.kt", l = {}, m = "invokeSuspend", v = 2)
final class RepairDetailScreenKt$RepairsDetailScreen$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function1 f63850b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RepairsViewState f63851c;
    public final /* synthetic */ MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function3 f63852e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DistantRepairContactMethod f63853f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairDetailScreenKt$RepairsDetailScreen$2$1(Function1 function1, RepairsViewState repairsViewState, MutableState mutableState, Function3 function3, DistantRepairContactMethod distantRepairContactMethod, Continuation continuation) {
        super(2, continuation);
        this.f63850b = function1;
        this.f63851c = repairsViewState;
        this.d = mutableState;
        this.f63852e = function3;
        this.f63853f = distantRepairContactMethod;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RepairDetailScreenKt$RepairsDetailScreen$2$1(this.f63850b, this.f63851c, this.d, this.f63852e, this.f63853f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepairDetailScreenKt$RepairsDetailScreen$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        if (Intrinsics.c((BottomSheetScreen) this.d.getF10755b(), BottomSheetScreen.BottomSheetRescheduleCalendar.f63787a)) {
            this.f63850b.invoke(DistantRepairTrackingUiModel.RescheduleAppointmentCalendarScreen.f57458a);
            CareServiceDetailUiModel careServiceDetailUiModel = this.f63851c.f64018h;
            if (careServiceDetailUiModel != null && (str = careServiceDetailUiModel.I) != null) {
                if (str.length() <= 0) {
                    str = null;
                }
                if (str != null) {
                    this.f63852e.A(AvailabilitiesCaller.DISTANT_REPAIRS, str, this.f63853f);
                }
            }
        }
        return Unit.f71739a;
    }
}

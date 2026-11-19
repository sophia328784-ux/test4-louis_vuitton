package com.vuitton.android.presentation.screen.distantrepairs.form.components;

import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.Step;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairCalendarViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
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
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormComposableKt$DistantRepairFormComposable$2$1", f = "DistantRepairFormComposable.kt", l = {Sink.ORIENTATION_90}, m = "invokeSuspend", v = 2)
final class DistantRepairFormComposableKt$DistantRepairFormComposable$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f57254b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DatePickerViewModel f57255c;
    public final /* synthetic */ DistantRepairFormViewModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f57256e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairFormComposableKt$DistantRepairFormComposable$2$1(DatePickerViewModel datePickerViewModel, DistantRepairFormViewModel distantRepairFormViewModel, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.f57255c = datePickerViewModel;
        this.d = distantRepairFormViewModel;
        this.f57256e = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DistantRepairFormComposableKt$DistantRepairFormComposable$2$1(this.f57255c, this.d, this.f57256e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DistantRepairFormComposableKt$DistantRepairFormComposable$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f57254b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final DatePickerViewModel datePickerViewModel = this.f57255c;
            Flow flowN6 = datePickerViewModel.N6();
            final DistantRepairFormViewModel distantRepairFormViewModel = this.d;
            final Function0 function0 = this.f57256e;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormComposableKt$DistantRepairFormComposable$2$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    Object obj3 = ((Result) obj2).f71708b;
                    boolean z = obj3 instanceof Result.Failure;
                    if (!z) {
                        if (z) {
                            obj3 = null;
                        }
                        String str = ((DistantRepairCalendarViewState) datePickerViewModel.getP().getValue()).f57375b.f57369c;
                        DistantRepairFormViewModel distantRepairFormViewModel2 = distantRepairFormViewModel;
                        distantRepairFormViewModel2.P(str, (TimeSlotUiModel) obj3);
                        function0.mo47invoke();
                        distantRepairFormViewModel2.s0(Step.TWO);
                    }
                    return Unit.f71739a;
                }
            };
            this.f57254b = 1;
            if (flowN6.f(flowCollector, this) == coroutineSingletons) {
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

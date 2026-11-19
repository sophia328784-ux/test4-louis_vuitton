package com.vuitton.android.designkit.ui.theme.atoms;

import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.designkit.ui.theme.atoms.LVDropdownKt$LVDropdown$6$1$1", f = "LVDropdown.kt", l = {168}, m = "invokeSuspend", v = 2)
final class LVDropdownKt$LVDropdown$6$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f48471b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableInteractionSource f48472c;
    public final /* synthetic */ DropdownState d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LVDropdownKt$LVDropdown$6$1$1(MutableInteractionSource mutableInteractionSource, DropdownState dropdownState, Continuation continuation) {
        super(2, continuation);
        this.f48472c = mutableInteractionSource;
        this.d = dropdownState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LVDropdownKt$LVDropdown$6$1$1(this.f48472c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LVDropdownKt$LVDropdown$6$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f48471b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SharedFlowImpl f4891a = this.f48472c.getF4891a();
            final DropdownState dropdownState = this.d;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.designkit.ui.theme.atoms.LVDropdownKt$LVDropdown$6$1$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    if (((Interaction) obj2) instanceof FocusInteraction.Focus) {
                        DropdownState dropdownState2 = dropdownState;
                        if (!dropdownState2.a() && dropdownState2.f48444b) {
                            ((SnapshotMutableStateImpl) dropdownState2.f48445c).setValue(Boolean.TRUE);
                        }
                    }
                    return Unit.f71739a;
                }
            };
            this.f48471b = 1;
            f4891a.getClass();
            if (SharedFlowImpl.o(f4891a, flowCollector, this) == coroutineSingletons) {
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

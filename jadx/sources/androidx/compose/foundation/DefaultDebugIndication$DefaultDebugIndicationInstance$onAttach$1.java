package androidx.compose.foundation;

import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.node.DrawModifierNodeKt;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$IntRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1", f = "Indication.kt", l = {228}, m = "invokeSuspend", v = 1)
final class DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4192b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DefaultDebugIndication.DefaultDebugIndicationInstance f4193c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1(DefaultDebugIndication.DefaultDebugIndicationInstance defaultDebugIndicationInstance, Continuation continuation) {
        super(2, continuation);
        this.f4193c = defaultDebugIndicationInstance;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1(this.f4193c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f4192b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final Ref$IntRef ref$IntRef = new Ref$IntRef();
            final Ref$IntRef ref$IntRef2 = new Ref$IntRef();
            final Ref$IntRef ref$IntRef3 = new Ref$IntRef();
            final DefaultDebugIndication.DefaultDebugIndicationInstance defaultDebugIndicationInstance = this.f4193c;
            SharedFlowImpl f4891a = defaultDebugIndicationInstance.p.getF4891a();
            FlowCollector flowCollector = new FlowCollector() { // from class: androidx.compose.foundation.DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    Interaction interaction = (Interaction) obj2;
                    boolean z = interaction instanceof PressInteraction.Press;
                    Ref$IntRef ref$IntRef4 = ref$IntRef3;
                    Ref$IntRef ref$IntRef5 = ref$IntRef2;
                    Ref$IntRef ref$IntRef6 = ref$IntRef;
                    boolean z2 = true;
                    if (z) {
                        ref$IntRef6.f71919b++;
                    } else if ((interaction instanceof PressInteraction.Release) || (interaction instanceof PressInteraction.Cancel)) {
                        ref$IntRef6.f71919b--;
                    } else if (interaction instanceof HoverInteraction.Enter) {
                        ref$IntRef5.f71919b++;
                    } else if (interaction instanceof HoverInteraction.Exit) {
                        ref$IntRef5.f71919b--;
                    } else if (interaction instanceof FocusInteraction.Focus) {
                        ref$IntRef4.f71919b++;
                    } else if (interaction instanceof FocusInteraction.Unfocus) {
                        ref$IntRef4.f71919b--;
                    }
                    boolean z3 = false;
                    boolean z4 = ref$IntRef6.f71919b > 0;
                    boolean z5 = ref$IntRef5.f71919b > 0;
                    boolean z6 = ref$IntRef4.f71919b > 0;
                    DefaultDebugIndication.DefaultDebugIndicationInstance defaultDebugIndicationInstance2 = defaultDebugIndicationInstance;
                    if (defaultDebugIndicationInstance2.q != z4) {
                        defaultDebugIndicationInstance2.q = z4;
                        z3 = true;
                    }
                    if (defaultDebugIndicationInstance2.r != z5) {
                        defaultDebugIndicationInstance2.r = z5;
                        z3 = true;
                    }
                    if (defaultDebugIndicationInstance2.s != z6) {
                        defaultDebugIndicationInstance2.s = z6;
                    } else {
                        z2 = z3;
                    }
                    if (z2) {
                        DrawModifierNodeKt.a(defaultDebugIndicationInstance2);
                    }
                    return Unit.f71739a;
                }
            };
            this.f4192b = 1;
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

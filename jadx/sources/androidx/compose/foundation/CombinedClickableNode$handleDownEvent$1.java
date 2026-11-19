package androidx.compose.foundation;

import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.CombinedClickableNode$handleDownEvent$1", f = "Clickable.kt", l = {1273}, m = "invokeSuspend", v = 1)
final class CombinedClickableNode$handleDownEvent$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4177b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CombinedClickableNode f4178c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombinedClickableNode$handleDownEvent$1(CombinedClickableNode combinedClickableNode, Continuation continuation) {
        super(2, continuation);
        this.f4178c = combinedClickableNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CombinedClickableNode$handleDownEvent$1(this.f4178c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CombinedClickableNode$handleDownEvent$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f4177b;
        CombinedClickableNode combinedClickableNode = this.f4178c;
        if (i2 == 0) {
            ResultKt.b(obj);
            long jB = ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.a(combinedClickableNode, CompositionLocalsKt.u)).b();
            this.f4177b = 1;
            if (DelayKt.b(jB, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        Function0 function0 = combinedClickableNode.N;
        if (function0 != null) {
            function0.mo47invoke();
        }
        if (combinedClickableNode.P) {
            HapticFeedback hapticFeedback = (HapticFeedback) CompositionLocalConsumerModifierNodeKt.a(combinedClickableNode, CompositionLocalsKt.l);
            HapticFeedbackType.f9193b.getClass();
            int i3 = PlatformHapticFeedbackType.f9196a;
            hapticFeedback.a(0);
        }
        combinedClickableNode.X = true;
        Job job = combinedClickableNode.V;
        if (job != null) {
            job.cancel(null);
        }
        combinedClickableNode.V = null;
        combinedClickableNode.T = null;
        return Unit.f71739a;
    }
}

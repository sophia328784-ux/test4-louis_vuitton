package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Velocity;
import defpackage.md;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b!\u0018\u00002\u00020\u0001BJ\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00121\u0010\u000b\u001a-\b\u0001\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0004\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;", "", "Landroidx/compose/foundation/gestures/ScrollingLogic;", "scrollingLogic", "Lkotlin/Function2;", "Landroidx/compose/ui/unit/Velocity;", "Lkotlin/ParameterName;", "name", "velocity", "Lkotlin/coroutines/Continuation;", "", "onScrollStopped", "Landroidx/compose/ui/unit/Density;", "density", "<init>", "(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/unit/Density;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class NonTouchScrollingLogic {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ScrollingLogic f4634a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function2 f4635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Density f4636c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final DifferentialVelocityTracker f4637e = new DifferentialVelocityTracker();

    public NonTouchScrollingLogic(ScrollingLogic scrollingLogic, Function2<? super Velocity, ? super Continuation<? super Unit>, ? extends Object> function2, Density density) {
        this.f4634a = scrollingLogic;
        this.f4635b = function2;
        this.f4636c = density;
    }

    public static void a(PointerEvent pointerEvent) {
        List list = pointerEvent.f9305a;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((PointerInputChange) list.get(i2)).a();
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(Function2 function2, ContinuationImpl continuationImpl) {
        NonTouchScrollingLogic$userScroll$1 nonTouchScrollingLogic$userScroll$1;
        if (continuationImpl instanceof NonTouchScrollingLogic$userScroll$1) {
            nonTouchScrollingLogic$userScroll$1 = (NonTouchScrollingLogic$userScroll$1) continuationImpl;
            int i2 = nonTouchScrollingLogic$userScroll$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                nonTouchScrollingLogic$userScroll$1.d = i2 - Integer.MIN_VALUE;
            } else {
                nonTouchScrollingLogic$userScroll$1 = new NonTouchScrollingLogic$userScroll$1(this, continuationImpl);
            }
        } else {
            nonTouchScrollingLogic$userScroll$1 = new NonTouchScrollingLogic$userScroll$1(this, continuationImpl);
        }
        Object obj = nonTouchScrollingLogic$userScroll$1.f4638b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = nonTouchScrollingLogic$userScroll$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            this.d = true;
            NonTouchScrollingLogic$userScroll$2 nonTouchScrollingLogic$userScroll$2 = new NonTouchScrollingLogic$userScroll$2(this, function2, null);
            nonTouchScrollingLogic$userScroll$1.d = 1;
            if (SupervisorKt.c(nonTouchScrollingLogic$userScroll$2, nonTouchScrollingLogic$userScroll$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        this.d = false;
        return Unit.f71739a;
    }
}

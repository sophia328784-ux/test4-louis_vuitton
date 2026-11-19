package androidx.compose.material3.internal;

import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.Modifier;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class AnchoredDraggableKt {
    public static final DraggableAnchors a(Function1 function1) {
        DraggableAnchorsConfig draggableAnchorsConfig = new DraggableAnchorsConfig();
        function1.invoke(draggableAnchorsConfig);
        return new MapDraggableAnchors(draggableAnchorsConfig.f7602a);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object b(Function0 function0, Function2 function2, ContinuationImpl continuationImpl) {
        AnchoredDraggableKt$restartable$1 anchoredDraggableKt$restartable$1;
        if (continuationImpl instanceof AnchoredDraggableKt$restartable$1) {
            anchoredDraggableKt$restartable$1 = (AnchoredDraggableKt$restartable$1) continuationImpl;
            int i2 = anchoredDraggableKt$restartable$1.f7503c;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                anchoredDraggableKt$restartable$1.f7503c = i2 - Integer.MIN_VALUE;
            } else {
                anchoredDraggableKt$restartable$1 = new AnchoredDraggableKt$restartable$1(continuationImpl);
            }
        } else {
            anchoredDraggableKt$restartable$1 = new AnchoredDraggableKt$restartable$1(continuationImpl);
        }
        Object obj = anchoredDraggableKt$restartable$1.f7502b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = anchoredDraggableKt$restartable$1.f7503c;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                AnchoredDraggableKt$restartable$2 anchoredDraggableKt$restartable$2 = new AnchoredDraggableKt$restartable$2(function0, function2, null);
                anchoredDraggableKt$restartable$1.f7503c = 1;
                if (CoroutineScopeKt.d(anchoredDraggableKt$restartable$2, anchoredDraggableKt$restartable$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
        } catch (AnchoredDragFinishedSignal unused) {
        }
        return Unit.f71739a;
    }

    public static Modifier c(Modifier modifier, AnchoredDraggableState anchoredDraggableState, Orientation orientation, boolean z) {
        return DraggableKt.a(modifier, anchoredDraggableState.f7520f, orientation, z, null, ((SnapshotMutableStateImpl) anchoredDraggableState.m).getF10755b() != null, new AnchoredDraggableKt$anchoredDraggable$1(anchoredDraggableState, null), false, 32);
    }

    public static final Modifier d(Modifier modifier, AnchoredDraggableState anchoredDraggableState, Orientation orientation, Function2 function2) {
        return modifier.o(new DraggableAnchorsElement(anchoredDraggableState, function2, orientation));
    }
}

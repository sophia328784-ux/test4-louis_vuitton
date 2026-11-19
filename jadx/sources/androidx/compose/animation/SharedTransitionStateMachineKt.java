package androidx.compose.animation;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.Size;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"animation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SharedTransitionStateMachineKt {
    public static final Rect a(SharedElement sharedElement, BoundsProvider boundsProvider) {
        if (boundsProvider == null) {
            return null;
        }
        List listB = sharedElement.b();
        int size = listB.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (Intrinsics.c(((SharedElementEntry) listB.get(i2)).m, boundsProvider)) {
                return boundsProvider.p1();
            }
        }
        return null;
    }

    public static final void b(TargetData targetData, long j2, long j3, long j4, boolean z) {
        MutableState mutableState = targetData.f3752c;
        MutableState mutableState2 = targetData.f3751b;
        MutableState mutableState3 = targetData.d;
        MutableState mutableState4 = targetData.f3750a;
        if (!Offset.c(((Offset) ((SnapshotMutableStateImpl) mutableState).getF10755b()).f8808a, j4) || !Size.a(((Size) ((SnapshotMutableStateImpl) mutableState4).getF10755b()).f8822a, j2) || z) {
            ((SnapshotMutableStateImpl) mutableState4).setValue(new Size(j2));
            ((SnapshotMutableStateImpl) targetData.f3752c).setValue(new Offset(j4));
            if (z) {
                ((SnapshotMutableStateImpl) mutableState2).setValue(new Offset(Offset.e(Offset.e(j3, j4), Offset.e(((Offset) ((SnapshotMutableStateImpl) mutableState3).getF10755b()).f8808a, ((Offset) ((SnapshotMutableStateImpl) mutableState2).getF10755b()).f8808a))));
            }
        }
        ((SnapshotMutableStateImpl) mutableState3).setValue(new Offset(Offset.e(j3, j4)));
    }

    public static final Rect c(TargetData targetData) {
        return RectKt.a(Offset.f(((Offset) ((SnapshotMutableStateImpl) targetData.f3751b).getF10755b()).f8808a, ((Offset) ((SnapshotMutableStateImpl) targetData.f3752c).getF10755b()).f8808a), ((Size) ((SnapshotMutableStateImpl) targetData.f3750a).getF10755b()).f8822a);
    }
}

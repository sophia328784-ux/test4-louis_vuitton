package defpackage;

import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.material3.internal.DraggableAnchors;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l5 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AnchoredDraggableState f75950c;

    public /* synthetic */ l5(AnchoredDraggableState anchoredDraggableState, int i2) {
        this.f75949b = i2;
        this.f75950c = anchoredDraggableState;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0064  */
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f75949b;
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        AnchoredDraggableState anchoredDraggableState = this.f75950c;
        switch (i2) {
            case 0:
                Object f10755b = ((SnapshotMutableStateImpl) anchoredDraggableState.m).getF10755b();
                if (f10755b != null) {
                    return f10755b;
                }
                float fA = ((SnapshotMutableFloatStateImpl) anchoredDraggableState.f7523j).a();
                boolean zIsNaN = Float.isNaN(fA);
                MutableState mutableState = anchoredDraggableState.g;
                return !zIsNaN ? anchoredDraggableState.c(fA, Call.Parameters.DEFAULT_CAMERA_ZOOM, ((SnapshotMutableStateImpl) mutableState).getF10755b()) : ((SnapshotMutableStateImpl) mutableState).getF10755b();
            case 1:
                Object f10755b2 = ((SnapshotMutableStateImpl) anchoredDraggableState.m).getF10755b();
                if (f10755b2 != null) {
                    return f10755b2;
                }
                float fA2 = ((SnapshotMutableFloatStateImpl) anchoredDraggableState.f7523j).a();
                boolean zIsNaN2 = Float.isNaN(fA2);
                MutableState mutableState2 = anchoredDraggableState.g;
                if (zIsNaN2) {
                    return ((SnapshotMutableStateImpl) mutableState2).getF10755b();
                }
                Object f10755b3 = ((SnapshotMutableStateImpl) mutableState2).getF10755b();
                DraggableAnchors draggableAnchorsE = anchoredDraggableState.e();
                float fC = draggableAnchorsE.c(f10755b3);
                if (fC != fA2 && !Float.isNaN(fC)) {
                    if (fC < fA2) {
                        Object objA = draggableAnchorsE.a(fA2, true);
                        if (objA != null) {
                            return objA;
                        }
                    } else {
                        Object objA2 = draggableAnchorsE.a(fA2, false);
                        if (objA2 != null) {
                            return objA2;
                        }
                    }
                }
                return f10755b3;
            case 2:
                int i3 = AnchoredDraggableState.p;
                float fC2 = anchoredDraggableState.e().c(((SnapshotMutableStateImpl) anchoredDraggableState.g).getF10755b());
                float fC3 = anchoredDraggableState.e().c(anchoredDraggableState.f7522i.getF10755b()) - fC2;
                float fAbs = Math.abs(fC3);
                if (Float.isNaN(fAbs) || fAbs <= 1.0E-6f) {
                    f2 = 1.0f;
                } else {
                    float fG = (anchoredDraggableState.g() - fC2) / fC3;
                    if (fG >= 1.0E-6f) {
                        if (fG > 0.999999f) {
                            f2 = 1.0f;
                        } else {
                            f2 = fG;
                        }
                    }
                }
                return Float.valueOf(f2);
            case 3:
                return anchoredDraggableState.e();
            default:
                return new Pair(anchoredDraggableState.e(), anchoredDraggableState.f7521h.getF10755b());
        }
    }
}

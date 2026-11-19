package defpackage;

import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import com.vuitton.android.presentation.compose.components.LVNotificationKt;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m5 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AnchoredDraggableState f76180c;

    public /* synthetic */ m5(AnchoredDraggableState anchoredDraggableState, int i2) {
        this.f76179b = i2;
        this.f76180c = anchoredDraggableState;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0081  */
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f76179b;
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        AnchoredDraggableState anchoredDraggableState = this.f76180c;
        switch (i2) {
            case 0:
                Object f10755b = ((SnapshotMutableStateImpl) anchoredDraggableState.m).getF10755b();
                if (f10755b != null) {
                    return f10755b;
                }
                float fA = ((SnapshotMutableFloatStateImpl) anchoredDraggableState.f4404j).a();
                MutableState mutableState = anchoredDraggableState.g;
                if (Float.isNaN(fA)) {
                    return ((SnapshotMutableStateImpl) mutableState).getF10755b();
                }
                SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) mutableState;
                float fC = anchoredDraggableState.b().c(snapshotMutableStateImpl.getF10755b());
                if (Float.isNaN(fC) || fA == fC) {
                    return snapshotMutableStateImpl.getF10755b();
                }
                Object objB = anchoredDraggableState.b().b(fA);
                return objB == null ? snapshotMutableStateImpl.getF10755b() : objB;
            case 1:
                int i3 = AnchoredDraggableState.p;
                float fC2 = anchoredDraggableState.b().c(((SnapshotMutableStateImpl) anchoredDraggableState.f4402h).getF10755b());
                float fC3 = anchoredDraggableState.b().c(anchoredDraggableState.f4403i.getF10755b()) - fC2;
                float fAbs = Math.abs(fC3);
                if (Float.isNaN(fAbs) || fAbs <= 1.0E-6f) {
                    f2 = 1.0f;
                } else {
                    float fE = (anchoredDraggableState.e() - fC2) / fC3;
                    if (fE >= 1.0E-6f) {
                        if (fE > 0.999999f) {
                            f2 = 1.0f;
                        } else {
                            f2 = fE;
                        }
                    }
                }
                return Float.valueOf(f2);
            case 2:
                return anchoredDraggableState.b();
            case 3:
                return new Pair(anchoredDraggableState.b(), anchoredDraggableState.f4403i.getF10755b());
            default:
                float f3 = LVNotificationKt.f50993a;
                float fA2 = ((SnapshotMutableFloatStateImpl) anchoredDraggableState.f4404j).a();
                return Boolean.valueOf((Float.isNaN(fA2) || fA2 == Call.Parameters.DEFAULT_CAMERA_ZOOM) ? false : true);
        }
    }
}

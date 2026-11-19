package defpackage;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.foundation.gestures.AnchoredDragScope;
import androidx.compose.foundation.gestures.AnchoredDraggableKt;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$FloatRef;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class wz0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80974b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f80975c;
    public final /* synthetic */ Ref$FloatRef d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f80976e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f80977f;

    public /* synthetic */ wz0(float f2, Ref$FloatRef ref$FloatRef, Object obj, Object obj2, int i2) {
        this.f80974b = i2;
        this.f80975c = f2;
        this.d = ref$FloatRef;
        this.f80976e = obj;
        this.f80977f = obj2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f80974b;
        float fE = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        Object obj2 = this.f80977f;
        Object obj3 = this.f80976e;
        Ref$FloatRef ref$FloatRef = this.d;
        float f2 = this.f80975c;
        switch (i2) {
            case 0:
                ScrollScope scrollScope = (ScrollScope) obj3;
                Function1 function1 = (Function1) obj2;
                AnimationScope animationScope = (AnimationScope) obj;
                float f3 = SnapFlingBehaviorKt.f4867a;
                float fAbs = Math.abs(((Number) ((SnapshotMutableStateImpl) animationScope.f3813e).getF10755b()).floatValue());
                float fAbs2 = Math.abs(f2);
                MutableState mutableState = animationScope.f3813e;
                if (fAbs >= fAbs2) {
                    float fD = SnapFlingBehaviorKt.d(((Number) ((SnapshotMutableStateImpl) mutableState).getF10755b()).floatValue(), f2);
                    SnapFlingBehaviorKt.c(animationScope, scrollScope, function1, fD - ref$FloatRef.f71918b);
                    animationScope.a();
                    ref$FloatRef.f71918b = fD;
                } else {
                    SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) mutableState;
                    SnapFlingBehaviorKt.c(animationScope, scrollScope, function1, ((Number) snapshotMutableStateImpl.getF10755b()).floatValue() - ref$FloatRef.f71918b);
                    ref$FloatRef.f71918b = ((Number) snapshotMutableStateImpl.getF10755b()).floatValue();
                }
                break;
            case 1:
                ScrollScope scrollScope2 = (ScrollScope) obj3;
                Function1 function2 = (Function1) obj2;
                AnimationScope animationScope2 = (AnimationScope) obj;
                float f4 = SnapFlingBehaviorKt.f4867a;
                float fD2 = SnapFlingBehaviorKt.d(((Number) ((SnapshotMutableStateImpl) animationScope2.f3813e).getF10755b()).floatValue(), f2);
                float f5 = fD2 - ref$FloatRef.f71918b;
                try {
                    fE = scrollScope2.e(f5);
                } catch (CancellationException unused) {
                    animationScope2.a();
                }
                function2.invoke(Float.valueOf(fE));
                if (Math.abs(f5 - fE) > 0.5f || fD2 != ((Number) ((SnapshotMutableStateImpl) animationScope2.f3813e).getF10755b()).floatValue()) {
                    animationScope2.a();
                }
                ref$FloatRef.f71918b += fE;
                break;
            default:
                AnchoredDragScope anchoredDragScope = (AnchoredDragScope) obj3;
                Ref$FloatRef ref$FloatRef2 = (Ref$FloatRef) obj2;
                AnimationScope animationScope3 = (AnimationScope) obj;
                SnapshotMutableStateImpl snapshotMutableStateImpl2 = (SnapshotMutableStateImpl) animationScope3.f3813e;
                if ((((Number) snapshotMutableStateImpl2.getF10755b()).floatValue() >= f2 || ref$FloatRef.f71918b <= f2) && (((Number) snapshotMutableStateImpl2.getF10755b()).floatValue() <= f2 || ref$FloatRef.f71918b >= f2)) {
                    anchoredDragScope.a(((Number) snapshotMutableStateImpl2.getF10755b()).floatValue(), ((Number) animationScope3.b()).floatValue());
                    ref$FloatRef2.f71918b = ((Number) animationScope3.b()).floatValue();
                    ref$FloatRef.f71918b = ((Number) snapshotMutableStateImpl2.getF10755b()).floatValue();
                } else {
                    float fFloatValue = ((Number) snapshotMutableStateImpl2.getF10755b()).floatValue();
                    p pVar = AnchoredDraggableKt.f4345a;
                    if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        f2 = 0.0f;
                    } else if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM ? fFloatValue >= f2 : fFloatValue <= f2) {
                        f2 = fFloatValue;
                    }
                    anchoredDragScope.a(f2, ((Number) animationScope3.b()).floatValue());
                    if (!Float.isNaN(((Number) animationScope3.b()).floatValue())) {
                        fE = ((Number) animationScope3.b()).floatValue();
                    }
                    ref$FloatRef2.f71918b = fE;
                    ref$FloatRef.f71918b = f2;
                    animationScope3.a();
                }
                break;
        }
        return Unit.f71739a;
    }
}

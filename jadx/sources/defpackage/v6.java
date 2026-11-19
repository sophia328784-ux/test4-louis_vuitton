package defpackage;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.TopAppBarState;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVMediumTopBarKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$FloatRef;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v6 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80509b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Ref$FloatRef f80510c;
    public final /* synthetic */ TopAppBarState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Ref$FloatRef f80511e;

    public /* synthetic */ v6(Ref$FloatRef ref$FloatRef, TopAppBarState topAppBarState, Ref$FloatRef ref$FloatRef2, int i2) {
        this.f80509b = i2;
        this.f80510c = ref$FloatRef;
        this.d = topAppBarState;
        this.f80511e = ref$FloatRef2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f80509b;
        Ref$FloatRef ref$FloatRef = this.f80511e;
        TopAppBarState topAppBarState = this.d;
        Ref$FloatRef ref$FloatRef2 = this.f80510c;
        AnimationScope animationScope = (AnimationScope) obj;
        switch (i2) {
            case 0:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AppBarKt.f6561a;
                float fFloatValue = ((Number) ((SnapshotMutableStateImpl) animationScope.f3813e).getF10755b()).floatValue() - ref$FloatRef2.f71918b;
                float fB = topAppBarState.b();
                topAppBarState.c(fB + fFloatValue);
                float fAbs = Math.abs(fB - topAppBarState.b());
                ref$FloatRef2.f71918b = ((Number) ((SnapshotMutableStateImpl) animationScope.f3813e).getF10755b()).floatValue();
                ref$FloatRef.f71918b = ((Number) animationScope.b()).floatValue();
                if (Math.abs(fFloatValue - fAbs) > 0.5f) {
                    animationScope.a();
                }
                break;
            default:
                CubicBezierEasing cubicBezierEasing = LVMediumTopBarKt.f48747a;
                animationScope.getClass();
                SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) animationScope.f3813e;
                float fFloatValue2 = ((Number) snapshotMutableStateImpl.getF10755b()).floatValue() - ref$FloatRef2.f71918b;
                float fB2 = topAppBarState.b();
                topAppBarState.c(fB2 + fFloatValue2);
                float fAbs2 = Math.abs(fB2 - topAppBarState.b());
                ref$FloatRef2.f71918b = ((Number) snapshotMutableStateImpl.getF10755b()).floatValue();
                ref$FloatRef.f71918b = ((Number) animationScope.b()).floatValue();
                if (Math.abs(fFloatValue2 - fAbs2) > 0.5f) {
                    animationScope.a();
                }
                break;
        }
        return Unit.f71739a;
    }
}

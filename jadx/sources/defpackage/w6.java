package defpackage;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.TopAppBarState;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.unit.IntSize;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVMediumTopBarKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class w6 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80772b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TopAppBarState f80773c;

    public /* synthetic */ w6(TopAppBarState topAppBarState, int i2) {
        this.f80772b = i2;
        this.f80773c = topAppBarState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f80772b;
        TopAppBarState topAppBarState = this.f80773c;
        switch (i2) {
            case 0:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AppBarKt.f6561a;
                topAppBarState.c(((Number) ((SnapshotMutableStateImpl) ((AnimationScope) obj).f3813e).getF10755b()).floatValue());
                break;
            case 1:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = AppBarKt.f6561a;
                topAppBarState.f7439a = -(((int) (((IntSize) obj).f11021a & BodyPartID.bodyIdMax)) - topAppBarState.b());
                break;
            default:
                AnimationScope animationScope = (AnimationScope) obj;
                CubicBezierEasing cubicBezierEasing = LVMediumTopBarKt.f48747a;
                animationScope.getClass();
                topAppBarState.c(((Number) ((SnapshotMutableStateImpl) animationScope.f3813e).getF10755b()).floatValue());
                break;
        }
        return Unit.f71739a;
    }
}

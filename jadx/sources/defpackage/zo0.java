package defpackage;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import com.vuitton.android.designkit.ui.theme.atoms.LVPageNumberIndicatorKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVCapsulePageControlKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class zo0 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81684b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PagerState f81685c;

    public /* synthetic */ zo0(PagerState pagerState, int i2) {
        this.f81684b = i2;
        this.f81685c = pagerState;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        AnimatedVisibilityScope animatedVisibilityScope = (AnimatedVisibilityScope) obj;
        switch (this.f81684b) {
            case 0:
                ((Integer) obj3).getClass();
                animatedVisibilityScope.getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                LVCapsulePageControlKt.a(null, this.f81685c, null, false, (Composer) obj2, 0, 13);
                break;
            default:
                ((Integer) obj3).intValue();
                animatedVisibilityScope.getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                LVPageNumberIndicatorKt.a(null, this.f81685c, null, (Composer) obj2, 0, 5);
                break;
        }
        return Unit.f71739a;
    }
}

package defpackage;

import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVMediumTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.TopBarActionScopeInstance;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class j60 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71311b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function4 f71312c;
    public final /* synthetic */ LVColorScheme d;

    public /* synthetic */ j60(Function4 function4, LVColorScheme lVColorScheme, int i2) {
        this.f71311b = i2;
        this.f71312c = function4;
        this.d = lVColorScheme;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f71311b;
        TopBarActionScopeInstance topBarActionScopeInstance = TopBarActionScopeInstance.f48763a;
        LVColorScheme lVColorScheme = this.d;
        Function4 function4 = this.f71312c;
        RowScope rowScope = (RowScope) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        switch (i2) {
            case 0:
                CubicBezierEasing cubicBezierEasing = LVMediumTopBarKt.f48747a;
                rowScope.getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    function4.g(topBarActionScopeInstance, lVColorScheme, composer, 6);
                } else {
                    composer.D();
                }
                break;
            default:
                rowScope.getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    function4.g(topBarActionScopeInstance, lVColorScheme, composer, 6);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}

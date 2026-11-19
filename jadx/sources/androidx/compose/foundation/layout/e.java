package androidx.compose.foundation.layout;

import android.os.Build;
import android.view.View;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements Function3 {
    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        NestedScrollConnection nestedScrollConnection;
        Modifier modifierE = (Modifier) obj;
        Composer composer = (Composer) obj2;
        ((Integer) obj3).getClass();
        float f2 = WindowInsetsConnection_androidKt.f5070a;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "imeNestedScroll$lambda$1");
        }
        composer.L(-369978792);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        WindowInsetsHolder.y.getClass();
        AndroidWindowInsets androidWindowInsets = WindowInsetsHolder.Companion.c(composer).f5076c;
        WindowInsetsSides.f5130a.getClass();
        int i2 = WindowInsetsSides.f5136i;
        composer.L(-1011341039);
        if (Build.VERSION.SDK_INT < 30) {
            composer.F();
            nestedScrollConnection = DoNothingNestedScrollConnection.f4956b;
        } else {
            SideCalculator.f5041a.getClass();
            SideCalculator sideCalculator = SideCalculator.Companion.d;
            SideCalculator$Companion$LeftSideCalculator$1 sideCalculator$Companion$LeftSideCalculator$1 = SideCalculator.Companion.f5043b;
            if (i2 == WindowInsetsSides.f5137j) {
                sideCalculator = sideCalculator$Companion$LeftSideCalculator$1;
            } else if (i2 == WindowInsetsSides.f5135h) {
                sideCalculator = SideCalculator.Companion.f5044c;
            } else if (i2 != WindowInsetsSides.f5138k) {
                sideCalculator = SideCalculator.Companion.f5045e;
            }
            View view = (View) composer.k(AndroidCompositionLocals_androidKt.f9939f);
            Density density = (Density) composer.k(CompositionLocalsKt.f10031h);
            boolean zK = composer.K(androidWindowInsets) | composer.K(view) | composer.K(sideCalculator) | composer.K(density);
            Object objX = composer.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = new WindowInsetsNestedScrollConnection(androidWindowInsets, view, sideCalculator, density);
                composer.q(objX);
            }
            WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection = (WindowInsetsNestedScrollConnection) objX;
            boolean zY = composer.y(windowInsetsNestedScrollConnection);
            Object objX2 = composer.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new f(windowInsetsNestedScrollConnection, 0);
                composer.q(objX2);
            }
            EffectsKt.c(windowInsetsNestedScrollConnection, (Function1) objX2, composer);
            composer.F();
            nestedScrollConnection = windowInsetsNestedScrollConnection;
        }
        Modifier modifierA = NestedScrollModifierKt.a(modifierE, nestedScrollConnection, null);
        composer.F();
        return modifierA;
    }
}

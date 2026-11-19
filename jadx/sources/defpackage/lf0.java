package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavHostControllerKt;
import androidx.navigation.compose.NavHostKt;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginFragment;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginRoute;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class lf0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76023b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeLoginRoute f76024c;
    public final /* synthetic */ NativeLoginFragment d;

    public /* synthetic */ lf0(NativeLoginRoute nativeLoginRoute, NativeLoginFragment nativeLoginFragment, int i2) {
        this.f76023b = i2;
        this.f76024c = nativeLoginRoute;
        this.d = nativeLoginFragment;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76023b;
        NativeLoginFragment nativeLoginFragment = this.d;
        int i3 = 1;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                NativeLoginFragment.Companion companion = NativeLoginFragment.A;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(1720617284, new lf0(this.f76024c, nativeLoginFragment, i3), composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            default:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                NativeLoginFragment.Companion companion2 = NativeLoginFragment.A;
                if (composer2.p(1 & iIntValue2, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    NavHostController navHostControllerA = NavHostControllerKt.a(new Navigator[0], composer2);
                    boolean zY = composer2.y(navHostControllerA) | composer2.y(nativeLoginFragment);
                    Object objX = composer2.x();
                    if (zY || objX == Composer.Companion.f7939a) {
                        objX = new k60(navHostControllerA, nativeLoginFragment, 23);
                        composer2.q(objX);
                    }
                    NavHostKt.b(navHostControllerA, this.f76024c, null, null, null, null, null, null, null, (Function1) objX, composer2, 0, 2044);
                } else {
                    composer2.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}

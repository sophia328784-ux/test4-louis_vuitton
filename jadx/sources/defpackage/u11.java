package defpackage;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.presentation.loading.LoadingMode;
import com.vuitton.android.presentation.loading.LvLoadingKt;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeWelcomeComposableKt;
import com.vuitton.android.presentation.screen.wishlist.components.WishlistBottomSheetScreen;
import com.vuitton.android.presentation.screen.wishlist.components.WishlistBottomSheetScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class u11 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80207b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f80208c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ u11(MutableState mutableState, Function0 function0) {
        this.f80208c = mutableState;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f80207b;
        MutableState mutableState = this.f80208c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj2;
                ((Integer) obj3).getClass();
                float f2 = StoreModeWelcomeComposableKt.f64839a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                LvLoadingKt.b(new DTFunctionNameModifier("StoreModeWelcomeScreen$lambda$17$1").o(SizeKt.f5052c), ((Boolean) mutableState.getF10755b()).booleanValue(), LoadingMode.DarkMode, false, 0L, this.d, composer, 390, 24);
                break;
            default:
                Composer composer2 = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    WishlistBottomSheetScreen wishlistBottomSheetScreen = (WishlistBottomSheetScreen) mutableState.getF10755b();
                    if (wishlistBottomSheetScreen == null) {
                        composer2.L(1866649324);
                        composer2.F();
                    } else {
                        composer2.L(1866649325);
                        Object objX = composer2.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = new r61(3);
                            composer2.q(objX);
                        }
                        WishlistBottomSheetScreenKt.b(wishlistBottomSheetScreen, (Function0) objX, this.d, composer2, 48);
                        composer2.F();
                    }
                } else {
                    composer2.D();
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ u11(Function0 function0, MutableState mutableState) {
        this.d = function0;
        this.f80208c = mutableState;
    }
}

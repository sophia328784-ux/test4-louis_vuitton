package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.LVSlideShowKt;
import com.vuitton.android.presentation.compose.components.PagerParallaxFactor;
import com.vuitton.android.presentation.screen.cart.NativeCartViewModel;
import com.vuitton.android.presentation.screen.cart.components.NativeCartFilledScreenKt;
import com.vuitton.android.presentation.screen.cart.models.NativeCartViewState;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class q70 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79030b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f79031c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f79032e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f79033f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f79034h;

    public /* synthetic */ q70(PagerState pagerState, Modifier modifier, PagerParallaxFactor pagerParallaxFactor, boolean z, boolean z2, ComposableLambdaImpl composableLambdaImpl, int i2) {
        this.f79032e = pagerState;
        this.f79033f = modifier;
        this.g = pagerParallaxFactor;
        this.f79031c = z;
        this.d = z2;
        this.f79034h = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f79030b;
        Object obj3 = this.f79034h;
        Object obj4 = this.g;
        Object obj5 = this.f79033f;
        Object obj6 = this.f79032e;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                LVSlideShowKt.b((PagerState) obj6, (Modifier) obj5, (PagerParallaxFactor) obj4, this.f79031c, this.d, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            default:
                Function3 function3 = (Function3) obj6;
                MutableState mutableState = (MutableState) obj5;
                AppsFlyerUiTracker appsFlyerUiTracker = (AppsFlyerUiTracker) obj4;
                NativeCartViewModel nativeCartViewModel = (NativeCartViewModel) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    if (this.f79031c) {
                        composer.L(190111980);
                        composer.F();
                    } else {
                        Modifier modifierB = ModifierExtKt.b(BackgroundKt.b(pq0.j(188825201, composer, "NativeCartComposable$lambda$31"), LVAppDesignKitTheme.c(composer).f48361b.u, RectangleShapeKt.f8913a), !this.d, new n50(17), composer, 0);
                        NativeCartViewState nativeCartViewState = (NativeCartViewState) mutableState.getF10755b();
                        boolean zK = composer.K(mutableState) | composer.y(appsFlyerUiTracker) | composer.y(nativeCartViewModel);
                        Object objX = composer.x();
                        if (zK || objX == Composer.Companion.f7939a) {
                            objX = new pp(nativeCartViewModel, mutableState, appsFlyerUiTracker, 24);
                            composer.q(objX);
                        }
                        NativeCartFilledScreenKt.d(modifierB, nativeCartViewState, function3, (Function0) objX, composer, 0);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ q70(boolean z, boolean z2, Function3 function3, MutableState mutableState, AppsFlyerUiTracker appsFlyerUiTracker, NativeCartViewModel nativeCartViewModel) {
        this.f79031c = z;
        this.d = z2;
        this.f79032e = function3;
        this.f79033f = mutableState;
        this.g = appsFlyerUiTracker;
        this.f79034h = nativeCartViewModel;
    }
}

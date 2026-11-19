package defpackage;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.IntrinsicKt;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.grid.LazyGridItemScope;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemScope;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.spotlight.components.BottomBarCanvasSpotlightKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightBottomStepperKt;
import com.vuitton.android.presentation.screen.wishlist.components.WishlistShareComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class sm implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function2 f79828c;

    public /* synthetic */ sm(int i2, Function2 function2) {
        this.f79827b = i2;
        this.f79828c = function2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f79827b;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        Function2 function2 = this.f79828c;
        switch (i2) {
            case 0:
                ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                function2.invoke((Composer) obj2, 0);
                return Unit.f71739a;
            case 1:
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((LazyStaggeredGridItemScope) obj).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    function2.invoke(composer, 0);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 2:
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((LazyGridItemScope) obj).getClass();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    function2.invoke(composer2, 0);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 3:
                Composer composer3 = (Composer) obj2;
                ((Integer) obj3).getClass();
                float f2 = SpotlightBottomStepperKt.f64585a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                Modifier modifierA = IntrinsicKt.a(new DTFunctionNameModifier("BottomContainer$lambda$2"), IntrinsicSize.Max);
                Color.f8866b.getClass();
                Modifier modifierB = BackgroundKt.b(modifierA, Color.f8870h, rectangleShapeKt$RectangleShape$1);
                Alignment.f8582a.getClass();
                BiasAlignment biasAlignment = Alignment.Companion.f8584b;
                MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
                int iHashCode = Long.hashCode(composer3.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                Modifier modifierC = ComposedModifierKt.c(composer3, modifierB);
                ComposeUiNode.b0.getClass();
                Function0 function0 = ComposeUiNode.Companion.f9641b;
                if (composer3.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer3.B();
                if (composer3.getS()) {
                    composer3.C(function0);
                } else {
                    composer3.o();
                }
                Function2 function3 = ComposeUiNode.Companion.f9644f;
                Updater.c(composer3, measurePolicyD, function3);
                Function2 function4 = ComposeUiNode.Companion.f9643e;
                Updater.c(composer3, persistentCompositionLocalMapN, function4);
                Integer numValueOf = Integer.valueOf(iHashCode);
                Function2 function5 = ComposeUiNode.Companion.g;
                Updater.c(composer3, numValueOf, function5);
                Function1 function1 = ComposeUiNode.Companion.f9645h;
                Updater.b(composer3, function1);
                Function2 function6 = ComposeUiNode.Companion.d;
                Updater.c(composer3, modifierC, function6);
                BottomBarCanvasSpotlightKt.a(null, SpotlightBottomStepperKt.f64585a, SpotlightBottomStepperKt.f64586b, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer3, 432);
                Modifier modifierG = BoxScopeInstance.f4938a.g(tr.d("BottomContainer$lambda$2", 1.0f), Alignment.Companion.f8587f);
                MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
                int iHashCode2 = Long.hashCode(composer3.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer3.n();
                Modifier modifierC2 = ComposedModifierKt.c(composer3, modifierG);
                if (composer3.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer3.B();
                if (composer3.getS()) {
                    composer3.C(function0);
                } else {
                    composer3.o();
                }
                Updater.c(composer3, measurePolicyD2, function3);
                Updater.c(composer3, persistentCompositionLocalMapN2, function4);
                cj.s(iHashCode2, composer3, function5, composer3, function1);
                Updater.c(composer3, modifierC2, function6);
                function2.invoke(composer3, 0);
                composer3.r();
                composer3.r();
                return Unit.f71739a;
            default:
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer4 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue3 & 6) == 0) {
                    iIntValue3 |= composer4.K(paddingValues) ? 4 : 2;
                }
                if (composer4.p(1 & iIntValue3, (iIntValue3 & 19) != 18)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    FocusManager focusManager = (FocusManager) composer4.k(CompositionLocalsKt.f10032i);
                    Modifier modifierB2 = BackgroundKt.b(o60.e("WishlistShareComposable$lambda$4", paddingValues).o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer4).f48361b.f48374a, rectangleShapeKt$RectangleShape$1);
                    boolean zY = composer4.y(focusManager);
                    Object objX = composer4.x();
                    if (zY || objX == Composer.Companion.f7939a) {
                        objX = new r11(focusManager, 2);
                        composer4.q(objX);
                    }
                    Modifier modifierC3 = ModifierExtKt.c(modifierB2, false, null, null, (Function0) objX, 27);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD3 = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode3 = Long.hashCode(composer4.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer4.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer4, modifierC3);
                    ComposeUiNode.b0.getClass();
                    Function0 function7 = ComposeUiNode.Companion.f9641b;
                    if (composer4.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer4.B();
                    if (composer4.getS()) {
                        composer4.C(function7);
                    } else {
                        composer4.o();
                    }
                    Updater.c(composer4, measurePolicyD3, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer4, persistentCompositionLocalMapN3, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer4, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                    Updater.b(composer4, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer4, modifierC4, ComposeUiNode.Companion.d);
                    WishlistShareComposableKt.a(function2, composer4, 0);
                    composer4.r();
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
        }
    }
}

package defpackage;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Constraints;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.screen.wishlist.components.ComposableSingletons$WishlistLoadingScreenKt;
import com.vuitton.android.presentation.screen.wishlist.components.ComposableSingletons$WishlistScreenKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qo implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79123b;

    public /* synthetic */ qo(int i2) {
        this.f79123b = i2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        switch (this.f79123b) {
            case 0:
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ComposableSingletons$WishlistLoadingScreenKt composableSingletons$WishlistLoadingScreenKt = ComposableSingletons$WishlistLoadingScreenKt.f65681a;
                paddingValues.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer.K(paddingValues) ? 4 : 2;
                }
                if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierO = o60.e("lambda_1201095944$lambda$0", paddingValues).o(SizeKt.f5052c);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                    Modifier modifierC = ComposedModifierKt.c(composer, modifierO);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function0);
                    } else {
                        composer.o();
                    }
                    Updater.c(composer, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
                    ProgressViewKt.a(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("lambda_1201095944$lambda$0"), Alignment.Companion.f8587f), 0L, false, composer, 0, 6);
                    composer.r();
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ComposableSingletons$WishlistScreenKt composableSingletons$WishlistScreenKt = ComposableSingletons$WishlistScreenKt.f65688a;
                ((LazyItemScope) obj).getClass();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    SpacerKt.a(composer2, SizeKt.f(new DTFunctionNameModifier("lambda_1673844629$lambda$0"), LVAppDesignKitTheme.l(composer2).f48415c));
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            default:
                MeasureScope measureScope = (MeasureScope) obj;
                Measurable measurable = (Measurable) obj2;
                measureScope.getClass();
                measurable.getClass();
                Placeable placeableT = measurable.T(((Constraints) obj3).f10999a);
                return measureScope.V0(placeableT.f9548b, 0, MapsKt.c(), new a2(placeableT, 12));
        }
    }
}

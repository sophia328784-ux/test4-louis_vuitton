package defpackage;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVNotificationIconKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.screen.feed.components.card.FeedNotifyIconButtonsKt;
import com.vuitton.android.presentation.screen.storemode.components.plp.PSPStoreModeSearchHeaderKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class fy implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69228b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LVColorScheme f69229c;
    public final /* synthetic */ boolean d;

    public /* synthetic */ fy(LVColorScheme lVColorScheme, boolean z) {
        this.f69229c = lVColorScheme;
        this.d = z;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2;
        long j2;
        long j3;
        int i3 = this.f69228b;
        boolean z = this.d;
        LVColorScheme lVColorScheme = this.f69229c;
        switch (i3) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("FeedEventBellIconButton$lambda$0"), LVAppDesignKitTheme.d(composer).o);
                    if (z) {
                        composer.L(-280248795);
                        i2 = LVAppDesignKitTheme.g(composer).R;
                        composer.F();
                    } else {
                        composer.L(-280167637);
                        i2 = LVAppDesignKitTheme.g(composer).Q;
                        composer.F();
                    }
                    Painter painterA = PainterResources_androidKt.a(i2, composer, 0);
                    int i4 = FeedNotifyIconButtonsKt.WhenMappings.f57873a[lVColorScheme.ordinal()];
                    if (i4 == 1) {
                        composer.L(822252639);
                        j2 = LVAppDesignKitTheme.c(composer).f48361b.f48382k;
                        composer.F();
                    } else {
                        if (i4 != 2) {
                            throw o60.v(composer, 822249862);
                        }
                        composer.L(822255397);
                        j2 = LVAppDesignKitTheme.c(composer).f48361b.m;
                        composer.F();
                    }
                    IconKt.a(painterA, StringResources_androidKt.c(composer, R.string.feed_cta_notify), modifierO, j2, composer, 8, 0);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            default:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PSPStoreModeSearchHeader$lambda$0$1");
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                    Modifier modifierC = ComposedModifierKt.c(composer2, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function0);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                    Painter painterA2 = PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).p, composer2, 0);
                    String strC = StringResources_androidKt.c(composer2, R.string.alt_show_filters);
                    int i5 = PSPStoreModeSearchHeaderKt.WhenMappings.f64919a[lVColorScheme.ordinal()];
                    if (i5 == 1) {
                        composer2.L(1915947573);
                        j3 = LVAppDesignKitTheme.c(composer2).f48361b.m;
                        composer2.F();
                    } else {
                        if (i5 != 2) {
                            throw o60.v(composer2, 1915944358);
                        }
                        composer2.L(1915951055);
                        j3 = LVAppDesignKitTheme.c(composer2).f48361b.f48382k;
                        composer2.F();
                    }
                    IconKt.a(painterA2, strC, null, j3, composer2, 8, 4);
                    if (z) {
                        LVNotificationIconKt.a(BoxScopeInstance.f4938a.g(pq0.j(-734934848, composer2, "PSPStoreModeSearchHeader$lambda$0$1"), Alignment.Companion.d), LVAppDesignKitTheme.d(composer2).f48388h, 0L, composer2, 0, 4);
                        composer2.F();
                    } else {
                        composer2.L(-734687871);
                        composer2.F();
                    }
                    composer2.r();
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ fy(boolean z, LVColorScheme lVColorScheme) {
        this.d = z;
        this.f69229c = lVColorScheme;
    }
}

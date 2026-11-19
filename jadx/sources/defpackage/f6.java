package defpackage;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.storemode.components.catalog.StoreModeLevel1ScreenKt;
import com.vuitton.android.presentation.screen.storemode.filters.components.ResetFilterTagListKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class f6 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69052b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f69053c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ f6(boolean z, Function0 function0) {
        this.f69052b = 0;
        this.d = function0;
        this.f69053c = z;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f69052b;
        final Function0 function0 = this.d;
        final boolean z = this.f69053c;
        switch (i2) {
            case 0:
                Modifier modifierE = (Modifier) obj;
                Composer composer = (Composer) obj2;
                ((Integer) obj3).getClass();
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "drawSelectionHandle$lambda$0");
                }
                composer.L(-196777734);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                final long j2 = ((TextSelectionColors) composer.k(TextSelectionColorsKt.f6503a)).f6501a;
                boolean zE = composer.e(j2) | composer.K(function0) | composer.b(z);
                Object objX = composer.x();
                if (zE || objX == Composer.Companion.f7939a) {
                    objX = new Function1() { // from class: y5
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj4) {
                            CacheDrawScope cacheDrawScope = (CacheDrawScope) obj4;
                            return cacheDrawScope.e(new s0(function0, z, AndroidSelectionHandles_androidKt.d(cacheDrawScope, Float.intBitsToFloat((int) (cacheDrawScope.f8706b.b() >> 32)) / 2.0f), ColorFilter.Companion.a(ColorFilter.f8873b, j2), 2));
                        }
                    };
                    composer.q(objX);
                }
                Modifier modifierC = DrawModifierKt.c(modifierE, (Function1) objX);
                composer.F();
                return modifierC;
            case 1:
                Composer composer2 = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    ResetFilterTagListKt.a(null, z, function0, composer2, 6);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            default:
                Composer composer3 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                float f2 = StoreModeLevel1ScreenKt.f64871a;
                ((LazyItemScope) obj).getClass();
                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    if (z) {
                        composer3.L(1482634847);
                        LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer3, R.string.tabbar_catalog), null, null, this.d, null, WindowInsetsExtKt.a(), null, null, composer3, 0, 0, 3767);
                        composer3.F();
                    } else {
                        Modifier modifierI = PaddingKt.i(PaddingKt.m(pq0.h(1.0f, 1482893232, composer3, "StoreModeLevel1Content$lambda$0$0$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer3).f48416e);
                        Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
                        Alignment.f8582a.getClass();
                        RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.l, composer3, 54);
                        int iHashCode = Long.hashCode(composer3.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                        Modifier modifierC2 = ComposedModifierKt.c(composer3, modifierI);
                        ComposeUiNode.b0.getClass();
                        Function0 function1 = ComposeUiNode.Companion.f9641b;
                        if (composer3.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer3.B();
                        if (composer3.getS()) {
                            composer3.C(function1);
                        } else {
                            composer3.o();
                        }
                        Updater.c(composer3, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer3, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer3, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(composer3, ComposeUiNode.Companion.f9645h);
                        Updater.c(composer3, modifierC2, ComposeUiNode.Companion.d);
                        TextKt.c(StringResources_androidKt.c(composer3, R.string.tabbar_catalog), null, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer3).f48425e, composer3, 0, 0, 131070);
                        composer3.r();
                        composer3.F();
                    }
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ f6(boolean z, Function0 function0, int i2) {
        this.f69052b = i2;
        this.f69053c = z;
        this.d = function0;
    }
}

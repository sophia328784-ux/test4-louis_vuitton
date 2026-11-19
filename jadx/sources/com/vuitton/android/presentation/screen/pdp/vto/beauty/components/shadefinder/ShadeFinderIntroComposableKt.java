package com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVShadeFinderLocalProviderKt;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderIntroComposableKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTracker;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTrackerKt;
import defpackage.av0;
import defpackage.es0;
import defpackage.ni0;
import defpackage.x2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ShadeFinderIntroComposableKt {
    public static final void a(final int i2, final int i3, Composer composer, final int i4) {
        GapComposer gapComposerH = composer.h(-1809007689);
        int i5 = (gapComposerH.d(i2) ? 4 : 2) | i4 | (gapComposerH.d(i3) ? 32 : 16);
        if (gapComposerH.p(i5 & 1, (i5 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierK = PaddingKt.k(new DTFunctionNameModifier("InstructionRow"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).d, 1);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new av0(13);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierK, true, (Function1) objX);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            float f2 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            float f3 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            float f4 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            float f5 = LVAppDesignKitTheme.l(gapComposerH).d;
            Modifier.Companion companion = Modifier.Companion.f8607b;
            IconKt.a(PainterResources_androidKt.a(i3, gapComposerH, (i5 >> 3) & 14), null, SizeKt.o(PaddingKt.l(companion, f2, f3, f5, f4), LVAppDesignKitTheme.d(gapComposerH).o), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, gapComposerH, 56, 0);
            TextKt.c(StringResources_androidKt.c(gapComposerH, i2), PaddingKt.m(companion, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(i2, i3, i4) { // from class: sv0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ int f79884b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ int f79885c;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    ShadeFinderIntroComposableKt.a(this.f79884b, this.f79885c, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(final Function0 function0, final Function0 function1, Composer composer, int i2) {
        GapComposer gapComposerC = defpackage.a.c(function0, function1, composer, -1537569277);
        int i3 = (gapComposerC.y(function0) ? 4 : 2) | i2 | (gapComposerC.y(function1) ? 32 : 16);
        if (gapComposerC.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVShadeFinderLocalProviderKt.a(ComposableLambdaKt.b(1929147747, new Function2() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.a
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        ShadeFinderTracker shadeFinderTracker = (ShadeFinderTracker) composer2.k(ShadeFinderTrackerKt.f62295a);
                        Unit unit = Unit.f71739a;
                        boolean zY = composer2.y(shadeFinderTracker);
                        Object objX = composer2.x();
                        if (zY || objX == Composer.Companion.f7939a) {
                            objX = new ShadeFinderIntroComposableKt$ShadeFinderIntroComposable$1$1$1(shadeFinderTracker, null);
                            composer2.q(objX);
                        }
                        EffectsKt.e(composer2, unit, (Function2) objX);
                        ScaffoldKt.a(null, ComposableLambdaKt.b(259271711, new es0(shadeFinderTracker, function0, 6), composer2), null, null, null, 0, LVAppDesignKitTheme.c(composer2).f48361b.u, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(1133012724, new ni0(shadeFinderTracker, function1, 21), composer2), composer2, 805306416, 189);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerC), gapComposerC, 6);
        } else {
            gapComposerC.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerC.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new x2(function0, function1, i2, 16);
        }
    }
}

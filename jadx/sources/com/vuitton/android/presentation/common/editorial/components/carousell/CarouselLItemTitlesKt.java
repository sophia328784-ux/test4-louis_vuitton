package com.vuitton.android.presentation.common.editorial.components.carousell;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.StringKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import defpackage.a;
import defpackage.d21;
import defpackage.ij;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CarouselLItemTitlesKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f50727a;

        static {
            int[] iArr = new int[LVColorScheme.values().length];
            try {
                iArr[LVColorScheme.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVColorScheme.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f50727a = iArr;
        }
    }

    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.String, kotlin.jvm.functions.Function1] */
    public static final void a(int i2, Composer composer, Modifier modifier, LVColorScheme lVColorScheme, String str, String str2) {
        int i3;
        GapComposer gapComposer;
        long j2;
        boolean z;
        ?? r0;
        long j3;
        boolean z2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "CarouselLItemTitles");
        }
        Modifier modifier2 = modifierE;
        lVColorScheme.getClass();
        GapComposer gapComposerH = composer.h(880653218);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.d(lVColorScheme.ordinal()) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(modifier2, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            if (str2 == null) {
                gapComposerH.L(1213680570);
                gapComposerH.Z(false);
                gapComposer = gapComposerH;
                r0 = 0;
                z = false;
            } else {
                gapComposerH.L(1213680571);
                Locale.f10870b.getClass();
                String strA = StringKt.a(str2, Locale.Companion.a());
                Modifier modifierA = ModifierExtKt.a(new DTFunctionNameModifier("CarouselLItemTitles"), null, null, 7);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).p;
                int i4 = WhenMappings.f50727a[lVColorScheme.ordinal()];
                if (i4 == 1) {
                    gapComposerH.L(-29650824);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                    gapComposerH.Z(false);
                } else {
                    if (i4 != 2) {
                        throw d21.u(gapComposerH, -29653717, false);
                    }
                    gapComposerH.L(-29647938);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                    gapComposerH.Z(false);
                }
                TextOverflow.f10989a.getClass();
                z = false;
                r0 = 0;
                TextKt.c(strA, modifierA, j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposerH, 0, 24960, 110584);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
            }
            if (str == null) {
                gapComposer.L(1214266098);
                gapComposer.Z(z);
                z2 = true;
            } else {
                Modifier modifierA2 = ModifierExtKt.a(PaddingKt.m(n00.i(gapComposer, 1214266099, "CarouselLItemTitles"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), r0, r0, 7);
                TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposer).f48429j;
                int i5 = WhenMappings.f50727a[lVColorScheme.ordinal()];
                if (i5 == 1) {
                    gapComposer.L(1287175073);
                    j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k;
                    gapComposer.Z(z);
                } else {
                    if (i5 != 2) {
                        throw d21.u(gapComposer, 1287172180, z);
                    }
                    gapComposer.L(1287177959);
                    j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.m;
                    gapComposer.Z(z);
                }
                TextOverflow.f10989a.getClass();
                GapComposer gapComposer2 = gapComposer;
                z2 = true;
                TextKt.c(str, modifierA2, j3, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 2, 0, null, textStyle2, gapComposer2, 0, 24960, 110584);
                gapComposer = gapComposer2;
                gapComposer.Z(z);
            }
            gapComposer.Z(z2);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ij(modifier2, str, str2, lVColorScheme, i2);
        }
    }
}

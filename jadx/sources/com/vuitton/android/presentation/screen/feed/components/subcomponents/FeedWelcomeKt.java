package com.vuitton.android.presentation.screen.feed.components.subcomponents;

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
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.n00;
import defpackage.sw;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FeedWelcomeKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57903a;

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
            f57903a = iArr;
        }
    }

    public static final void a(Modifier modifier, String str, String str2, LVColorScheme lVColorScheme, Composer composer, int i2, int i3) {
        int i4;
        GapComposer gapComposer;
        LVColorScheme lVColorScheme2;
        long j2;
        long j3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "FeedWelcome");
        }
        modifierE.getClass();
        str2.getClass();
        GapComposer gapComposerH = composer.h(206680614);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(str2) ? 256 : 128;
        }
        int i5 = i3 & 8;
        if (i5 != 0) {
            i4 |= 3072;
        } else if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 2048 : 1024;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            LVColorScheme lVColorScheme3 = i5 != 0 ? LVColorScheme.DEFAULT : lVColorScheme;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierE2 = ModifierExtKt.e(modifierE, "feedForYou_welcome_view");
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE2);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            String strB = null;
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
            Modifier modifierF = n00.f(gapComposerH, modifierC, ComposeUiNode.Companion.d, "FeedWelcome", "feedForYou_welcomeDate_text");
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
            int[] iArr = WhenMappings.f57903a;
            int i6 = iArr[lVColorScheme3.ordinal()];
            if (i6 == 1) {
                gapComposerH.L(-350961591);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                gapComposerH.Z(false);
            } else {
                if (i6 != 2) {
                    throw d21.u(gapComposerH, -350964183, false);
                }
                gapComposerH.L(-350958865);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.n;
                gapComposerH.Z(false);
            }
            TextKt.c(str2, modifierF, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, (i4 >> 6) & 14, 0, 131064);
            Modifier modifierE3 = ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeedWelcome"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48413a, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "feedForYou_welcomeGreeting_text");
            if (str == null) {
                gapComposerH.L(2005448603);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(2005448604);
                strB = StringResources_androidKt.b(R.string.feed_welcome_connected, new Object[]{str}, gapComposerH);
                gapComposerH.Z(false);
            }
            if (strB == null) {
                strB = cj.f(gapComposerH, -350946633, R.string.feed_welcome_notconnected, gapComposerH, false);
            } else {
                gapComposerH.L(-350950353);
                gapComposerH.Z(false);
            }
            TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).f48425e;
            int i7 = iArr[lVColorScheme3.ordinal()];
            if (i7 == 1) {
                gapComposerH.L(-350939350);
                j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                gapComposerH.Z(false);
            } else {
                if (i7 != 2) {
                    throw d21.u(gapComposerH, -350941941, false);
                }
                gapComposerH.L(-350936592);
                j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                gapComposerH.Z(false);
            }
            TextOverflow.f10989a.getClass();
            TextKt.c(strB, modifierE3, j3, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle2, gapComposerH, 0, 24960, 110584);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
            lVColorScheme2 = lVColorScheme3;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            lVColorScheme2 = lVColorScheme;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new sw(modifierE, str, str2, lVColorScheme2, i2, i3, 1);
        }
    }
}

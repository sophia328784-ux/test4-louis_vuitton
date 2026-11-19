package com.vuitton.android.presentation.common.editorial.components.carousell;

import androidx.compose.foundation.layout.Arrangement;
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
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.StringKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import defpackage.a;
import defpackage.d21;
import defpackage.ij;
import defpackage.jh;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CarouselLGlobalTitlesKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f50726a;

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
            f50726a = iArr;
        }
    }

    public static final void a(int i2, Composer composer, Modifier modifier, LVColorScheme lVColorScheme, String str, String str2) {
        int i3;
        GapComposer gapComposer;
        long j2;
        boolean z;
        boolean z2;
        long j3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "CarouselLGlobalTitles");
        }
        lVColorScheme.getClass();
        GapComposer gapComposerH = composer.h(45007938);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.d(lVColorScheme.ordinal()) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(str2) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
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
                gapComposerH.L(695475222);
                gapComposerH.Z(false);
                gapComposer = gapComposerH;
                z = true;
                z2 = false;
            } else {
                gapComposerH.L(695475223);
                Locale.f10870b.getClass();
                String strA = StringKt.a(str2, Locale.Companion.a());
                Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("CarouselLGlobalTitles"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7);
                Object objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = new jh(6);
                    gapComposerH.q(objX);
                }
                Modifier modifierB = SemanticsModifierKt.b(modifierM, false, (Function1) objX);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).p;
                int i4 = WhenMappings.f50726a[lVColorScheme.ordinal()];
                if (i4 == 1) {
                    gapComposerH.L(-1985609768);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                    gapComposerH.Z(false);
                } else {
                    if (i4 != 2) {
                        throw d21.u(gapComposerH, -1985612661, false);
                    }
                    gapComposerH.L(-1985606882);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                    gapComposerH.Z(false);
                }
                TextAlign.f10959b.getClass();
                int i5 = TextAlign.f10961e;
                TextOverflow.f10989a.getClass();
                z = true;
                z2 = false;
                TextKt.c(strA, modifierB, j2, 0L, null, 0L, null, new TextAlign(i5), 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposerH, 0, 24960, 109560);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
            }
            if (str == null) {
                gapComposer.L(696183665);
                gapComposer.Z(z2);
            } else {
                gapComposer.L(696183666);
                TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposer).f48425e;
                int i6 = WhenMappings.f50726a[lVColorScheme.ordinal()];
                if (i6 == z) {
                    gapComposer.L(855887393);
                    j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k;
                    gapComposer.Z(z2);
                } else {
                    if (i6 != 2) {
                        throw d21.u(gapComposer, 855884500, z2);
                    }
                    gapComposer.L(855890279);
                    j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.m;
                    gapComposer.Z(z2);
                }
                TextAlign.f10959b.getClass();
                int i7 = TextAlign.f10961e;
                TextOverflow.f10989a.getClass();
                GapComposer gapComposer2 = gapComposer;
                TextKt.c(str, null, j3, 0L, null, 0L, null, new TextAlign(i7), 0L, TextOverflow.f10991c, false, 2, 0, null, textStyle2, gapComposer2, 0, 24960, 109562);
                gapComposer = gapComposer2;
                gapComposer.Z(z2);
            }
            gapComposer.Z(z);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ij(modifierE, lVColorScheme, str, str2, i2);
        }
    }
}

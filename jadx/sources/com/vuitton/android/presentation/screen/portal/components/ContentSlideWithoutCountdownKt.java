package com.vuitton.android.presentation.screen.portal.components;

import androidx.compose.animation.core.EasingKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Center$1;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.screen.portal.components.ContentSlideWithoutCountdownKt;
import com.vuitton.android.presentation.screen.portal.models.PortalCtaUiModel;
import com.vuitton.android.presentation.screen.portal.models.PortalDataUiModel;
import defpackage.bq;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ContentSlideWithoutCountdownKt {
    public static final void a(final ColumnScope columnScope, final PagerState pagerState, final int i2, final int i3, final int i4, final float f2, final PortalDataUiModel portalDataUiModel, final Function1 function1, Composer composer, final int i5) {
        int i6;
        PagerState pagerState2;
        String str;
        PortalCtaUiModel portalCtaUiModel;
        boolean z;
        float f3;
        boolean z2;
        columnScope.getClass();
        portalDataUiModel.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1248640622);
        if ((i5 & 6) == 0) {
            i6 = (gapComposerH.K(columnScope) ? 4 : 2) | i5;
        } else {
            i6 = i5;
        }
        if ((i5 & 48) == 0) {
            pagerState2 = pagerState;
            i6 |= gapComposerH.K(pagerState2) ? 32 : 16;
        } else {
            pagerState2 = pagerState;
        }
        if ((i5 & KyberEngine.KyberPolyBytes) == 0) {
            i6 |= gapComposerH.d(i2) ? 256 : 128;
        }
        if ((i5 & 3072) == 0) {
            i6 |= gapComposerH.d(i3) ? 2048 : 1024;
        }
        if ((i5 & 24576) == 0) {
            i6 |= gapComposerH.d(i4) ? 16384 : 8192;
        }
        if ((196608 & i5) == 0) {
            i6 |= gapComposerH.c(f2) ? 131072 : 65536;
        }
        if ((1572864 & i5) == 0) {
            i6 |= gapComposerH.y(portalDataUiModel) ? 1048576 : 524288;
        }
        if ((12582912 & i5) == 0) {
            i6 |= gapComposerH.y(function1) ? 8388608 : 4194304;
        }
        if (gapComposerH.p(i6 & 1, (4793491 & i6) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            float f4 = -EasingKt.f3862a.a((pagerState2.k() - i2) + f2);
            float fAbs = 1.0f - Math.abs(f2);
            String str2 = portalDataUiModel.f63308b;
            PortalCtaUiModel portalCtaUiModel2 = portalDataUiModel.f63310e;
            if (str2 == null) {
                gapComposerH.L(-458457559);
                gapComposerH.Z(false);
                z = false;
                str = "ContentSlideWithoutCountdown";
                portalCtaUiModel = portalCtaUiModel2;
            } else {
                gapComposerH.L(-458457558);
                TextAlign.f10959b.getClass();
                int i7 = TextAlign.f10961e;
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48429j;
                long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                Dp.Companion companion = Dp.f11004c;
                str = "ContentSlideWithoutCountdown";
                portalCtaUiModel = portalCtaUiModel2;
                z = false;
                TextKt.c(str2, PaddingKt.m(OffsetKt.c(SizeKt.d(AlphaKt.a(columnScope.a(new DTFunctionNameModifier("ContentSlideWithoutCountdown"), 1.0f, false), fAbs), 1.0f), f4 * 150.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48414b, 7), j2, 0L, null, 0L, null, new TextAlign(i7), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130040);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            }
            String str3 = portalDataUiModel.f63307a;
            if (str3 == null) {
                gapComposerH.L(-457924235);
                gapComposerH.Z(z);
                z2 = z;
                f3 = f4;
            } else {
                gapComposerH.L(-457924234);
                TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).d;
                TextAlign.f10959b.getClass();
                int i8 = TextAlign.f10961e;
                long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                f3 = f4;
                Dp.Companion companion2 = Dp.f11004c;
                GapComposer gapComposer = gapComposerH;
                TextKt.c(str3, PaddingKt.m(OffsetKt.c(SizeKt.d(AlphaKt.a(new DTFunctionNameModifier(str), fAbs), 1.0f), i4 * f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7), j3, 0L, null, 0L, null, new TextAlign(i8), 0L, 0, false, 0, 0, null, textStyle2, gapComposer, 0, 0, 130040);
                gapComposerH = gapComposer;
                z2 = false;
                gapComposerH.Z(false);
            }
            String str4 = portalDataUiModel.f63309c;
            if (str4 == null) {
                gapComposerH.L(-457424236);
                gapComposerH.Z(z2);
            } else {
                gapComposerH.L(-457424235);
                TextOverflow.f10989a.getClass();
                int i9 = TextOverflow.f10991c;
                TextAlign.f10959b.getClass();
                int i10 = TextAlign.f10961e;
                TextStyle textStyle3 = LVAppDesignKitTheme.n(gapComposerH).f48429j;
                long j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                Dp.Companion companion3 = Dp.f11004c;
                GapComposer gapComposer2 = gapComposerH;
                TextKt.c(str4, PaddingKt.m(OffsetKt.c(SizeKt.d(AlphaKt.a(columnScope.a(new DTFunctionNameModifier(str), 1.0f, false), fAbs), 1.0f), f3 * 150.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7), j4, 0L, null, 0L, null, new TextAlign(i10), 0L, i9, false, 0, 0, null, textStyle3, gapComposer2, 0, KyberEngine.KyberPolyBytes, 125944);
                gapComposerH = gapComposer2;
                gapComposerH.Z(false);
            }
            if (portalCtaUiModel != null) {
                gapComposerH.L(-456829500);
                Dp.Companion companion4 = Dp.f11004c;
                Modifier modifierC = OffsetKt.c(SizeKt.d(AlphaKt.a(new DTFunctionNameModifier(str), fAbs), 1.0f), f3 * i3, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                Arrangement$Center$1 arrangement$Center$1 = Arrangement.f4921e;
                Alignment.f8582a.getClass();
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Center$1, Alignment.Companion.f8591k, gapComposerH, 6);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierC);
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
                Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48451h;
                String upperCase = portalCtaUiModel.f63305a.toUpperCase(Locale.ROOT);
                upperCase.getClass();
                boolean zY = gapComposerH.y(portalCtaUiModel) | ((i6 & 29360128) == 8388608);
                Object objX = gapComposerH.x();
                if (zY || objX == Composer.Companion.f7939a) {
                    objX = new bq(function1, portalCtaUiModel, 1);
                    gapComposerH.q(objX);
                }
                LVButtonKt.b(0, 505, gapComposerH, null, configurationButton, null, null, upperCase, (Function0) objX, false, false, false);
                gapComposerH.Z(true);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-456352844);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: dq
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    ContentSlideWithoutCountdownKt.a(columnScope, pagerState, i2, i3, i4, f2, portalDataUiModel, function1, (Composer) obj, RecomposeScopeImplKt.a(i5 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }
}

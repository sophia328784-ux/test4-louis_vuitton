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
import com.vuitton.android.presentation.compose.components.LVLiveCountdownKt;
import com.vuitton.android.presentation.screen.portal.components.ContentSlideWithCountdownKt;
import com.vuitton.android.presentation.screen.portal.models.PortalCtaUiModel;
import com.vuitton.android.presentation.screen.portal.models.PortalTeaserUiModel;
import defpackage.bq;
import java.time.Instant;
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
public abstract class ContentSlideWithCountdownKt {
    public static final void a(final ColumnScope columnScope, final PagerState pagerState, final int i2, final int i3, final int i4, final float f2, final PortalTeaserUiModel portalTeaserUiModel, final Function1 function1, final Function0 function0, Composer composer, final int i5) {
        int i6;
        PagerState pagerState2;
        float f3;
        boolean z;
        String str;
        columnScope.getClass();
        function1.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(427704988);
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
            i6 |= gapComposerH.y(portalTeaserUiModel) ? 1048576 : 524288;
        }
        if ((12582912 & i5) == 0) {
            i6 |= gapComposerH.y(function1) ? 8388608 : 4194304;
        }
        if ((100663296 & i5) == 0) {
            i6 |= gapComposerH.y(function0) ? 67108864 : 33554432;
        }
        if (gapComposerH.p(i6 & 1, (38347923 & i6) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            float f4 = -EasingKt.f3862a.a((pagerState2.k() - i2) + f2);
            float fAbs = 1.0f - Math.abs(f2);
            String str2 = portalTeaserUiModel != null ? portalTeaserUiModel.d : null;
            int i7 = i6;
            if (str2 == null) {
                gapComposerH.L(-1408102547);
                z = false;
                gapComposerH.Z(false);
                f3 = 1.0f;
            } else {
                gapComposerH.L(-1408102546);
                TextAlign.f10959b.getClass();
                int i8 = TextAlign.f10961e;
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48429j;
                long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                Dp.Companion companion = Dp.f11004c;
                f3 = 1.0f;
                TextKt.c(str2, PaddingKt.k(PaddingKt.m(OffsetKt.c(SizeKt.d(AlphaKt.a(columnScope.a(new DTFunctionNameModifier("ContentSlideWithCountdown"), 1.0f, false), fAbs), 1.0f), f4 * 150.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48414b, 7), LVAppDesignKitTheme.l(gapComposerH).f48419i, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), j2, 0L, null, 0L, null, new TextAlign(i8), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130040);
                z = false;
                gapComposerH.Z(false);
            }
            if (portalTeaserUiModel != null) {
                gapComposerH = gapComposerH;
                str = portalTeaserUiModel.f63314c;
            } else {
                gapComposerH = gapComposerH;
                str = null;
            }
            if (str == null) {
                gapComposerH.L(-1407488313);
                gapComposerH.Z(z);
            } else {
                gapComposerH.L(-1407488312);
                Dp.Companion companion2 = Dp.f11004c;
                Modifier modifierK = PaddingKt.k(OffsetKt.c(SizeKt.d(AlphaKt.a(new DTFunctionNameModifier("ContentSlideWithCountdown"), fAbs), f3), f4 * i4, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.l(gapComposerH).f48419i, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).d;
                TextOverflow.f10989a.getClass();
                int i9 = TextOverflow.f10991c;
                TextAlign.f10959b.getClass();
                GapComposer gapComposer = gapComposerH;
                TextKt.c(str, modifierK, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, i9, false, 2, 0, null, textStyle2, gapComposer, 0, 24960, 109560);
                gapComposerH = gapComposer;
                z = false;
                gapComposerH.Z(false);
            }
            Instant instant = portalTeaserUiModel != null ? portalTeaserUiModel.f63312a : null;
            if (instant == null) {
                gapComposerH.L(-1406921633);
                gapComposerH.Z(z);
            } else {
                gapComposerH.L(-1406921632);
                Dp.Companion companion3 = Dp.f11004c;
                GapComposer gapComposer2 = gapComposerH;
                LVLiveCountdownKt.a(PaddingKt.k(OffsetKt.c(AlphaKt.a(new DTFunctionNameModifier("ContentSlideWithCountdown"), fAbs), i3 * f4, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 0L, instant, function0, gapComposer2, (i7 >> 15) & 7168, 2);
                gapComposerH = gapComposer2;
                z = false;
                gapComposerH.Z(false);
            }
            String str3 = portalTeaserUiModel != null ? portalTeaserUiModel.f63315e : null;
            if (str3 == null) {
                gapComposerH.L(-1406530568);
                gapComposerH.Z(z);
            } else {
                gapComposerH.L(-1406530567);
                TextOverflow.f10989a.getClass();
                int i10 = TextOverflow.f10991c;
                TextAlign.f10959b.getClass();
                int i11 = TextAlign.f10961e;
                TextStyle textStyle3 = LVAppDesignKitTheme.n(gapComposerH).f48429j;
                long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                Dp.Companion companion4 = Dp.f11004c;
                GapComposer gapComposer3 = gapComposerH;
                TextKt.c(str3, PaddingKt.k(PaddingKt.m(OffsetKt.c(SizeKt.d(AlphaKt.a(columnScope.a(new DTFunctionNameModifier("ContentSlideWithCountdown"), f3, false), fAbs), f3), f4 * 150.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7), LVAppDesignKitTheme.l(gapComposerH).f48419i, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), j3, 0L, null, 0L, null, new TextAlign(i11), 0L, i10, false, 0, 0, null, textStyle3, gapComposer3, 0, KyberEngine.KyberPolyBytes, 125944);
                gapComposerH = gapComposer3;
                gapComposerH.Z(false);
            }
            if ((portalTeaserUiModel != null ? portalTeaserUiModel.f63316f : null) != null) {
                gapComposerH.L(-1405854426);
                PortalCtaUiModel portalCtaUiModel = portalTeaserUiModel.f63316f;
                Dp.Companion companion5 = Dp.f11004c;
                Modifier modifierK2 = PaddingKt.k(OffsetKt.c(SizeKt.d(AlphaKt.a(new DTFunctionNameModifier("ContentSlideWithCountdown"), fAbs), 1.0f), f4 * i3, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.l(gapComposerH).f48419i, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                Arrangement$Center$1 arrangement$Center$1 = Arrangement.f4921e;
                Alignment.f8582a.getClass();
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Center$1, Alignment.Companion.f8591k, gapComposerH, 6);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK2);
                ComposeUiNode.b0.getClass();
                Function0 function2 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function2);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48451h;
                String upperCase = portalCtaUiModel.f63305a.toUpperCase(Locale.ROOT);
                upperCase.getClass();
                boolean zY = ((i7 & 29360128) == 8388608) | gapComposerH.y(portalCtaUiModel);
                Object objX = gapComposerH.x();
                if (zY || objX == Composer.Companion.f7939a) {
                    objX = new bq(function1, portalCtaUiModel, 0);
                    gapComposerH.q(objX);
                }
                LVButtonKt.b(0, 505, gapComposerH, null, configurationButton, null, null, upperCase, (Function0) objX, false, false, false);
                gapComposerH.Z(true);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1405300890);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: cq
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    ContentSlideWithCountdownKt.a(columnScope, pagerState, i2, i3, i4, f2, portalTeaserUiModel, function1, function0, (Composer) obj, RecomposeScopeImplKt.a(i5 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }
}

package com.vuitton.android.presentation.screen.certificates.components.transfer;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.a;
import defpackage.kn0;
import defpackage.ma;
import defpackage.oi0;
import defpackage.t01;
import defpackage.ua;
import defpackage.va;
import defpackage.ys0;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.internal.Constants;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TransferCertificateConfirmationComposableKt {
    public static final void a(int i2, Composer composer, String str) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-574909845);
        int i3 = (gapComposerH.K(str) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_step3_confirmation_subtitle), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131066);
            gapComposer = gapComposerH;
            if (str == null) {
                gapComposer.L(1190690892);
                gapComposer.Z(false);
            } else {
                gapComposer.L(1190690893);
                String str2 = String.format(StringResources_androidKt.c(gapComposer, R.string.certificate_transfer_step3_confirmation_futur_owner), Arrays.copyOf(new Object[]{str}, 1));
                AnnotatedString.Builder builder = new AnnotatedString.Builder(0, 1, null);
                int iV = StringsKt.v(str2, str, 0, false, 6);
                builder.e(str2.substring(0, iV));
                FontWeight.f10727c.getClass();
                int iH = builder.h(new SpanStyle(0L, 0L, FontWeight.f10733k, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, Constants.CallType.SIX_DIGITS, (DefaultConstructorMarker) null));
                try {
                    builder.e(str2.substring(iV, str.length() + iV));
                    builder.f(iH);
                    builder.e(str2.substring(str.length() + iV));
                    TextKt.d(builder.i(), PaddingKt.k(new DTFunctionNameModifier("ConfirmationInfoComponent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48417f, 1), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, LVAppDesignKitTheme.n(gapComposer).f48427h, gapComposer, 0, 0, 262136);
                    gapComposer = gapComposer;
                    gapComposer.Z(false);
                } catch (Throwable th) {
                    builder.f(iH);
                    throw th;
                }
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ma(str, i2, 7);
        }
    }

    public static final void b(int i2, int i3, Composer composer, Modifier modifier, String str) {
        int i4;
        GapComposer gapComposer;
        String str2;
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "FieldTexts");
        }
        Modifier modifier3 = modifierE;
        GapComposer gapComposerH = composer.h(-1391150605);
        if ((i3 & 6) == 0) {
            i4 = (gapComposerH.K(modifier3) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.d(i2) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(str) ? 256 : 128;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (str == null) {
                gapComposerH.L(-1628116805);
                gapComposerH.Z(false);
                gapComposer = gapComposerH;
                str2 = str;
                modifier2 = modifier3;
            } else {
                gapComposerH.L(-1628116804);
                int i5 = i4;
                TextKt.c(StringResources_androidKt.c(gapComposerH, i2), modifier3, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, (i5 << 3) & 112, 0, 131064);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).o;
                FontWeight.f10727c.getClass();
                modifier2 = modifier3;
                str2 = str;
                TextKt.c(str2, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, FontWeight.f10733k, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, ((i5 >> 6) & 14) | 1572864, 0, 131002);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
            }
        } else {
            gapComposer = gapComposerH;
            str2 = str;
            modifier2 = modifier3;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new t01(modifier2, i2, str2, i3);
        }
    }

    public static final void c(String str, String str2, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-1162639336);
        int i3 = (gapComposerH.K(str) ? 4 : 2) | i2 | (gapComposerH.K(str2) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            b(R.string.certificate_transfer_step3_confirmation_futur_owner_field, (i3 << 6) & 896, gapComposerH, PaddingKt.m(new DTFunctionNameModifier("FieldsComponent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), str);
            b(R.string.certificate_transfer_step3_confirmation_keyword_field, (i3 << 3) & 896, gapComposerH, PaddingKt.m(new DTFunctionNameModifier("FieldsComponent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), str2);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new va(str, str2, i2, 8);
        }
    }

    public static final void d(String str, String str2, Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposerC = a.c(function0, function1, composer, -1814629414);
        int i3 = i2 | (gapComposerC.K(str) ? 4 : 2) | (gapComposerC.K(str2) ? 32 : 16) | (gapComposerC.y(function0) ? 256 : 128) | (gapComposerC.y(function1) ? 2048 : 1024);
        if (gapComposerC.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            boolean z = (i3 & 7168) == 2048;
            Object objX = gapComposerC.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new TransferCertificateConfirmationComposableKt$TransferCertificateConfirmationComposable$1$1(function1, null);
                gapComposerC.q(objX);
            }
            EffectsKt.e(gapComposerC, unit, (Function2) objX);
            e(null, str, str2, function0, gapComposerC, (i3 << 3) & 8176);
        } else {
            gapComposerC.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerC.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ys0(str, str2, function0, function1, i2, 9);
        }
    }

    public static final void e(Modifier modifier, String str, String str2, Function0 function0, Composer composer, int i2) {
        GapComposer gapComposer;
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "TransferCertificateConfirmationScreen");
        }
        function0.getClass();
        GapComposer gapComposerH = composer.h(1355338730);
        int i3 = i2 | 6;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            int i4 = i3;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("TransferCertificateConfirmationScreen");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            ScaffoldKt.a(dTFunctionNameModifier, ComposableLambdaKt.b(-1448510042, new kn0(function0, 28), gapComposerH), null, null, null, 0, 0L, 0L, null, ComposableLambdaKt.b(506665147, new ua(str, str2, 1), gapComposerH), gapComposer, (i4 & 14) | 805306416, 508);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oi0(modifier2, str, str2, function0, i2, 14);
        }
    }
}

package com.vuitton.android.presentation.screen.booking.personalinfo.infoform.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
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
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
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
import com.vuitton.foundation.model.domain.model.booking.BookingExternalContent;
import defpackage.c3;
import defpackage.l0;
import defpackage.l1;
import defpackage.rf;
import defpackage.v1;
import defpackage.w;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.internal.Constants;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingLegalSectionKt {
    public static final void a(BookingExternalContent bookingExternalContent, Function1 function1, Function0 function0, Function1 function2, Modifier modifier, Composer composer, int i2) {
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "BookingLegalSection");
        }
        function1.getClass();
        function0.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(611208180);
        int i3 = (gapComposerH.y(bookingExternalContent) ? 4 : 2) | i2 | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | 24576;
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            modifier = new DTFunctionNameModifier("BookingLegalSection");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = SizeKt.d(modifier, 1.0f);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            c(bookingExternalContent, function1, function0, gapComposerH, i3 & 1022);
            b(function2, gapComposerH, (i3 >> 9) & 14);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        Modifier modifier2 = modifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w(bookingExternalContent, function1, function0, function2, modifier2, i2);
        }
    }

    public static final void b(Function1 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-575016429);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(function1) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.booking_form_personal_data_email);
            String strB = StringResources_androidKt.b(R.string.booking_form_personal_data_message, new Object[]{strC}, gapComposerH);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
            gapComposerH.L(1460004513);
            AnnotatedString.Builder builder = new AnnotatedString.Builder(0, 1, null);
            builder.e(strB);
            boolean zK = gapComposerH.K(strC) | ((i3 & 14) == 4);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new l1(2, strC, function1);
                gapComposerH.q(objX);
            }
            d(builder, strB, strC, "personal_data_email_link", j2, (Function0) objX);
            AnnotatedString annotatedStringI = builder.i();
            gapComposerH.Z(false);
            gapComposer = gapComposerH;
            TextKt.d(annotatedStringI, null, j2, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposer, 0, 0, 262138);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rf(function1, i2);
        }
    }

    public static final void c(BookingExternalContent bookingExternalContent, Function1 function1, Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(2056239861);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(bookingExternalContent) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.booking_form_booking_policy_link);
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.booking_form_privacy_policy_link);
            String strB = StringResources_androidKt.b(R.string.booking_form_terms_agreement_message, new Object[]{strC, strC2}, gapComposerH);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            gapComposerH.L(361568724);
            AnnotatedString.Builder builder = new AnnotatedString.Builder(0, 1, null);
            builder.e(strB);
            boolean zY = gapComposerH.y(bookingExternalContent) | ((i3 & 112) == 32);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new l0(function1, bookingExternalContent, 29);
                gapComposerH.q(objX);
            }
            d(builder, strB, strC, "booking_policy_link", j2, (Function0) objX);
            d(builder, strB, strC2, "privacy_policy_link", j2, function0);
            AnnotatedString annotatedStringI = builder.i();
            gapComposerH.Z(false);
            gapComposer = gapComposerH;
            TextKt.d(annotatedStringI, null, j2, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposer, 0, 0, 262138);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(bookingExternalContent, function1, function0, i2, 5);
        }
    }

    public static final void d(AnnotatedString.Builder builder, String str, String str2, String str3, long j2, Function0 function0) {
        int iV = StringsKt.v(str, str2, 0, false, 6);
        int i2 = iV >= 0 ? iV : 0;
        int length = str2.length() + i2;
        TextDecoration.f10965b.getClass();
        builder.c(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61439, (DefaultConstructorMarker) null), i2, length);
        builder.a(new LinkAnnotation.Clickable(str3, new TextLinkStyles(new SpanStyle(j2, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, Constants.CallType.HOST, (DefaultConstructorMarker) null), null, null, null, 14, null), new c3(function0, 1)), i2, length);
    }
}

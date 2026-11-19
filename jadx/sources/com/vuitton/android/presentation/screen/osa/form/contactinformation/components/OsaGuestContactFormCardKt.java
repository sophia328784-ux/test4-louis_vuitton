package com.vuitton.android.presentation.screen.osa.form.contactinformation.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.ClickableTextKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
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
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.presentation.screen.dynamicform.components.DynamicFormComposableKt;
import com.vuitton.android.presentation.screen.dynamicform.components.DynamicFormToolBox;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.models.OsaContactFormViewState;
import defpackage.cj;
import defpackage.fj0;
import defpackage.n00;
import defpackage.n9;
import defpackage.o60;
import defpackage.uv;
import java.util.Locale;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OsaGuestContactFormCardKt {
    public static final void a(OsaContactFormViewState osaContactFormViewState, Function2 function2, Function0 function0, Function0 function1, Composer composer, int i2) {
        Boolean bool;
        OsaContactFormViewState osaContactFormViewState2 = osaContactFormViewState;
        osaContactFormViewState2.getClass();
        function2.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(621212431);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.y(osaContactFormViewState2) ? 4 : 2) | (gapComposerH.y(function2) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierA = ClipKt.a(PaddingKt.k(new DTFunctionNameModifier("OsaGuestContactFormCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            Modifier modifierB = BackgroundKt.b(modifierA, j2, rectangleShapeKt$RectangleShape$1);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Function2 function4 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function4);
            Function2 function5 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function6 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function6);
            Function1 function7 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function7);
            Function2 function8 = ComposeUiNode.Companion.d;
            Modifier modifierB2 = BackgroundKt.b(n00.e(gapComposerH, modifierC, function8, "OsaGuestContactFormCard", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, rectangleShapeKt$RectangleShape$1);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
            cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
            Updater.c(gapComposerH, modifierC2, function8);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.osa_creation_account_checking);
            Modifier modifierI = PaddingKt.i(new DTFunctionNameModifier("OsaGuestContactFormCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new fj0(8);
                gapComposerH.q(objX);
            }
            int i4 = i3;
            TextKt.c(strC, SemanticsModifierKt.b(modifierI, false, (Function1) objX), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131064);
            Modifier modifierI2 = PaddingKt.i(o60.f(gapComposerH, true, "OsaGuestContactFormCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e), horizontal, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierI2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA2, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function5);
            cj.t(iHashCode3, gapComposerH, function6, gapComposerH, function7);
            Updater.c(gapComposerH, modifierC3, function8);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.osa_contact_information_text), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131066);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("OsaGuestContactFormCard");
            Dp.Companion companion = Dp.f11004c;
            osaContactFormViewState2 = osaContactFormViewState;
            DynamicFormComposableKt.a(DynamicFormToolBox.a(dTFunctionNameModifier, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, gapComposerH, 27654, 3), null, osaContactFormViewState2.u, false, Call.Parameters.DEFAULT_CAMERA_ZOOM, function2, null, null, null, null, true, false, false, null, null, null, null, null, false, gapComposerH, (i4 << 12) & ImageMetadata.JPEG_GPS_COORDINATES, 100663302, 261082);
            Boolean bool2 = osaContactFormViewState2.f60738c;
            Boolean bool3 = Boolean.TRUE;
            if (Intrinsics.c(bool2, bool3)) {
                gapComposerH.L(-1102191759);
                gapComposerH.L(2042657115);
                AnnotatedString.Builder builder = new AnnotatedString.Builder(0, 1, null);
                String strC2 = StringResources_androidKt.c(gapComposerH, R.string.osa_creation_form_privacypolicy);
                String strC3 = StringResources_androidKt.c(gapComposerH, R.string.osa_creation_form_privacypolicy_link);
                Locale locale = Locale.ROOT;
                String lowerCase = strC2.toLowerCase(locale);
                lowerCase.getClass();
                String lowerCase2 = strC3.toLowerCase(locale);
                lowerCase2.getClass();
                int iV = StringsKt.v(lowerCase, lowerCase2, 0, false, 6);
                int length = strC3.length() + iV;
                builder.e(strC2);
                if (iV >= 0 && length <= strC2.length()) {
                    TextDecoration.f10965b.getClass();
                    builder.c(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61439, (DefaultConstructorMarker) null), iV, length);
                    builder.b(iV, length, "link", "privacyPolicy");
                }
                AnnotatedString annotatedStringI = builder.i();
                gapComposerH.Z(false);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
                boolean zK = gapComposerH.K(annotatedStringI) | ((i4 & 7168) == 2048);
                Object objX2 = gapComposerH.x();
                if (zK || objX2 == composer$Companion$Empty$1) {
                    objX2 = new n9(annotatedStringI, function1, 2);
                    gapComposerH.q(objX2);
                }
                i4 = i4;
                bool = bool3;
                ClickableTextKt.a(annotatedStringI, null, textStyle, false, 0, 0, null, (Function1) objX2, gapComposerH, 0, 122);
                gapComposerH.Z(false);
            } else {
                bool = bool3;
                gapComposerH.L(-1100479257);
                gapComposerH.Z(false);
            }
            LVButtonKt.b((i4 << 21) & 1879048192, 376, gapComposerH, ModifierExtKt.e(SizeKt.d(new DTFunctionNameModifier("OsaGuestContactFormCard"), 1.0f), "osa_appointmentConfirm_button"), LVAppDesignKitTheme.b(gapComposerH).f48446a, null, null, StringResources_androidKt.c(gapComposerH, R.string.osa_appointment_confirm_cta), function0, false, Intrinsics.c(osaContactFormViewState2.f60743j, bool) ? osaContactFormViewState2.v.i() : osaContactFormViewState2.u.i(), false);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv((Object) osaContactFormViewState2, (Object) function2, function0, (Function) function1, i2, 20);
        }
    }
}

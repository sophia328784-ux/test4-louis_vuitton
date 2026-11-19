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
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.screen.account.profile.AccountStatusUiModel;
import com.vuitton.android.presentation.screen.account.profile.AccountStatusValueUiModel;
import com.vuitton.android.presentation.screen.dynamicform.components.DynamicFormComposableKt;
import com.vuitton.android.presentation.screen.dynamicform.components.DynamicFormToolBox;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.models.OsaContactFormViewState;
import defpackage.cj;
import defpackage.fj0;
import defpackage.n00;
import defpackage.o60;
import defpackage.tf0;
import defpackage.uv;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.internal.Constants;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OsaGuestAccountCheckingCardKt {
    public static final void a(OsaContactFormViewState osaContactFormViewState, Function2 function2, Function1 function1, Function0 function0, Composer composer, int i2) {
        OsaContactFormViewState osaContactFormViewState2 = osaContactFormViewState;
        Function1 function3 = function1;
        osaContactFormViewState2.getClass();
        function2.getClass();
        function3.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-580800720);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.y(osaContactFormViewState2) ? 4 : 2) | (gapComposerH.y(function2) ? 32 : 16) | (gapComposerH.y(function3) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierA = ClipKt.a(PaddingKt.m(new DTFunctionNameModifier("OsaGuestAccountCheckingCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.j(gapComposerH).f48410b);
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
            Function0 function4 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Function2 function5 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function5);
            Function2 function6 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function7 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function7);
            Function1 function8 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function8);
            Function2 function9 = ComposeUiNode.Companion.d;
            Modifier modifierB2 = BackgroundKt.b(n00.e(gapComposerH, modifierC, function9, "OsaGuestAccountCheckingCard", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, rectangleShapeKt$RectangleShape$1);
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
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function5);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
            cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function8);
            Updater.c(gapComposerH, modifierC2, function9);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.osa_creation_account_checking);
            Modifier modifierI = PaddingKt.i(new DTFunctionNameModifier("OsaGuestAccountCheckingCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new fj0(7);
                gapComposerH.q(objX);
            }
            TextKt.c(strC, SemanticsModifierKt.b(modifierI, false, (Function1) objX), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131064);
            Modifier modifierI2 = PaddingKt.i(o60.f(gapComposerH, true, "OsaGuestAccountCheckingCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e);
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
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA2, function5);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function6);
            cj.t(iHashCode3, gapComposerH, function7, gapComposerH, function8);
            Updater.c(gapComposerH, modifierC3, function9);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.osa_creation_form_step_2_subtitle), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131066);
            osaContactFormViewState2 = osaContactFormViewState;
            gapComposerH = gapComposerH;
            AccountStatusUiModel accountStatusUiModel = osaContactFormViewState2.q;
            FormUiModel formUiModel = osaContactFormViewState2.t;
            if (((accountStatusUiModel != null ? accountStatusUiModel.f52670a : null) == null || accountStatusUiModel.f52670a == AccountStatusValueUiModel.ACTIVATED) && !Intrinsics.c(osaContactFormViewState2.f60743j, Boolean.TRUE)) {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, -1884815876, "OsaGuestAccountCheckingCard");
                Dp.Companion companion = Dp.f11004c;
                DynamicFormComposableKt.a(DynamicFormToolBox.a(dTFunctionNameModifierI, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, gapComposerH, 27654, 3), null, osaContactFormViewState2.t, false, Call.Parameters.DEFAULT_CAMERA_ZOOM, function2, null, null, null, null, false, false, false, null, null, null, null, null, false, gapComposerH, (i3 << 12) & ImageMetadata.JPEG_GPS_COORDINATES, 0, 524250);
                ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48446a;
                Modifier modifierE = ModifierExtKt.e(SizeKt.d(new DTFunctionNameModifier("OsaGuestAccountCheckingCard"), 1.0f), "osa_accountChecking_button");
                String strC2 = StringResources_androidKt.c(gapComposerH, R.string.osa_appointment_confirm_cta);
                boolean zI = formUiModel.i();
                boolean z = (i3 & 896) == 256;
                Object objX2 = gapComposerH.x();
                if (z || objX2 == composer$Companion$Empty$1) {
                    function3 = function1;
                    objX2 = new tf0(function3, 4);
                    gapComposerH.q(objX2);
                } else {
                    function3 = function1;
                }
                LVButtonKt.b(0, 376, gapComposerH, modifierE, configurationButton, null, null, strC2, (Function0) objX2, false, zI, false);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1885732019);
                String strC3 = StringResources_androidKt.c(gapComposerH, R.string.osa_creation_form_emailaddress);
                SpanStyle spanStyleA = SpanStyle.a(LVAppDesignKitTheme.n(gapComposerH).f48427h.f10568a, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, Constants.CallType.HOST);
                FormSectionTypeUiModel formSectionTypeUiModel = FormSectionTypeUiModel.EMAIL;
                FormUiModel.Companion companion2 = FormUiModel.f57485b;
                b(strC3, spanStyleA, formUiModel.e(formSectionTypeUiModel, true), SpanStyle.a(LVAppDesignKitTheme.n(gapComposerH).f48427h.f10568a, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, Constants.CallType.HOST), gapComposerH, 0);
                if (Intrinsics.c(osaContactFormViewState2.f60738c, Boolean.TRUE)) {
                    gapComposerH.L(-1885089544);
                    LVLinkKt.a(null, StringResources_androidKt.c(gapComposerH, R.string.osa_creation_form_emailaddress_modify), false, null, false, function0, gapComposerH, (i3 << 6) & ImageMetadata.JPEG_GPS_COORDINATES, 29);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-1884860826);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(false);
                function3 = function1;
            }
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv((Object) osaContactFormViewState2, (Object) function2, (Object) function3, function0, i2, 19);
        }
    }

    public static final void b(String str, SpanStyle spanStyle, String str2, SpanStyle spanStyle2, Composer composer, int i2) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(1827028160);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.K(spanStyle) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128) | (gapComposerH.K(spanStyle2) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            AnnotatedString.Builder builder = new AnnotatedString.Builder(0, 1, null);
            int iH = builder.h(spanStyle);
            try {
                builder.e(str);
                builder.f(iH);
                builder.e("\n");
                int iH2 = builder.h(spanStyle2);
                try {
                    builder.e(str2);
                    builder.f(iH2);
                    gapComposer = gapComposerH;
                    TextKt.d(builder.i(), null, 0L, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, null, gapComposer, 0, 0, 524286);
                } catch (Throwable th) {
                    builder.f(iH2);
                    throw th;
                }
            } catch (Throwable th2) {
                builder.f(iH);
                throw th2;
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv(str, spanStyle, str2, spanStyle2, i2, 18);
        }
    }
}

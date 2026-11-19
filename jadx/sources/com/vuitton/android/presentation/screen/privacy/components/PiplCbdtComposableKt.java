package com.vuitton.android.presentation.screen.privacy.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
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
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Html_androidKt;
import androidx.compose.ui.text.LinkInteractionListener;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import defpackage.cj;
import defpackage.gi0;
import defpackage.rm;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PiplCbdtComposableKt {
    public static final void a(Function0 function0, Function0 function1, Function1 function2, Composer composer, int i2) {
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-1404174562);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.y(function0) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = tr.d("PiplCbdtComposable", 1.0f);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            Modifier modifierB = WindowInsetsPadding_androidKt.b(WindowInsetsPadding_androidKt.d(PaddingKt.k(BackgroundKt.b(modifierD, j2, rectangleShapeKt$RectangleShape$1), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2)));
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 48);
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
            Updater.c(gapComposerH, modifierC, function8);
            Modifier modifierA = ColumnScopeInstance.f4944a.a(new DTFunctionNameModifier("PiplCbdtComposable"), 1.0f, true);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA);
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
            Updater.c(gapComposerH, measurePolicyD, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
            cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
            Updater.c(gapComposerH, modifierC2, function8);
            Modifier modifierG = BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("PiplCbdtComposable"), Alignment.Companion.f8587f);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 48);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierG);
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
            IconKt.a(PainterResources_androidKt.a(R.drawable.ic_privacy_policy, gapComposerH, 0), null, PaddingKt.m(new DTFunctionNameModifier("PiplCbdtComposable"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 0L, gapComposerH, 56, 8);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.cn_privacy_policy_app_opening_title), PaddingKt.m(new DTFunctionNameModifier("PiplCbdtComposable"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48425e, gapComposerH, 0, 0, 131064);
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("PiplCbdtComposable"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            int i4 = AnnotatedString.f10418f;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.cn_privacy_app_opening_subtitle);
            TextDecoration.f10965b.getClass();
            TextLinkStyles textLinkStyles = new TextLinkStyles(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61439, (DefaultConstructorMarker) null), null, null, null, 14, null);
            boolean z = (i3 & 896) == 256;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new rm(function2, 6);
                gapComposerH.q(objX);
            }
            AnnotatedString annotatedStringA = Html_androidKt.a(strC, textLinkStyles, (LinkInteractionListener) objX);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48427h;
            long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextAlign.f10959b.getClass();
            TextKt.d(annotatedStringA, modifierM, j3, 0L, 0L, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, null, textStyle, gapComposerH, 0, 0, 261112);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            Modifier modifierJ = PaddingKt.j(BackgroundKt.b(SizeKt.v(SizeKt.d(new DTFunctionNameModifier("PiplCbdtComposable"), 1.0f), null, 3), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, rectangleShapeKt$RectangleShape$1), LVAppDesignKitTheme.l(gapComposerH).d, LVAppDesignKitTheme.l(gapComposerH).f48415c);
            ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode4 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierJ);
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
            Updater.c(gapComposerH, columnMeasurePolicyA3, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU4, function5);
            cj.t(iHashCode4, gapComposerH, function6, gapComposerH, function7);
            Updater.c(gapComposerH, modifierC4, function8);
            LVButtonKt.b((i3 << 27) & 1879048192, 504, gapComposerH, PaddingKt.m(SizeKt.v(SizeKt.d(new DTFunctionNameModifier("PiplCbdtComposable"), 1.0f), null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).d, 7), LVAppDesignKitTheme.b(gapComposerH).f48446a, null, null, StringResources_androidKt.c(gapComposerH, R.string.cta_agree), function0, false, false, false);
            LVButtonKt.b((i3 << 24) & 1879048192, 504, gapComposerH, PaddingKt.m(SizeKt.v(SizeKt.d(new DTFunctionNameModifier("PiplCbdtComposable"), 1.0f), null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7), LVAppDesignKitTheme.b(gapComposerH).f48449e, null, null, StringResources_androidKt.c(gapComposerH, R.string.quit_app), function1, false, false, false);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new gi0(i2, 18, function0, function1, function2);
        }
    }
}

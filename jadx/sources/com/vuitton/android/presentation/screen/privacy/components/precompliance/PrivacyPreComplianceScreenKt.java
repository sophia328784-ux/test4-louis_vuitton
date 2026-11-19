package com.vuitton.android.presentation.screen.privacy.components.precompliance;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.text.ClickableTextKt;
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
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Html_androidKt;
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
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.foundation.model.domain.model.privacy.PrivacyType;
import defpackage.aj0;
import defpackage.cj;
import defpackage.d21;
import defpackage.n00;
import defpackage.n9;
import defpackage.nm;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PrivacyPreComplianceScreenKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f63397a;

        static {
            int[] iArr = new int[PrivacyType.values().length];
            try {
                iArr[PrivacyType.CCPA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PrivacyType.GDPR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PrivacyType.PIPL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PrivacyType.NONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f63397a = iArr;
        }
    }

    public static final void a(PaddingValues paddingValues, PrivacyType privacyType, boolean z, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Composer composer, int i2) {
        int i3;
        Function0 function4;
        String str;
        Function2 function5;
        boolean z2;
        boolean z3;
        function3 = function3;
        paddingValues.getClass();
        privacyType.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-984315032);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(paddingValues) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.d(privacyType.ordinal()) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function2) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function3) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = WindowInsetsPadding_androidKt.b(PaddingKt.h(new DTFunctionNameModifier("PrivacyPreComplianceScreen").o(SizeKt.f5052c), paddingValues));
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            Modifier modifierB2 = BackgroundKt.b(modifierB, j2, rectangleShapeKt$RectangleShape$1);
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$SpaceBetween$1, horizontal, gapComposerH, 6);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB2);
            ComposeUiNode.b0.getClass();
            Function0 function6 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function6);
            } else {
                gapComposerH.o();
            }
            Function2 function7 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function7);
            Function2 function8 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function8);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function9 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function9);
            Function1 function10 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function10);
            Function2 function11 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function11);
            int i4 = i3;
            int i5 = i4 >> 3;
            Modifier modifierK = PaddingKt.k(ModifierExtKt.b(BackgroundKt.b(new DTFunctionNameModifier("PrivacyPreComplianceScreen"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, rectangleShapeKt$RectangleShape$1), z, new aj0(25), gapComposerH, i5 & 112), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
            Modifier modifierA = columnScopeInstance.a(modifierK, 1.0f, true);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function6);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA2, function7);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function8);
            cj.t(iHashCode2, gapComposerH, function9, gapComposerH, function10);
            Updater.c(gapComposerH, modifierC2, function11);
            int[] iArr = WhenMappings.f63397a;
            int i6 = iArr[privacyType.ordinal()];
            if (i6 == 1) {
                function4 = function6;
                str = "PrivacyPreComplianceScreen";
                function5 = function7;
                Modifier modifierO = SizeKt.o(PaddingKt.m(PaddingKt.k(n00.i(gapComposerH, 1981341744, str), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.d(gapComposerH).w);
                BiasAlignment.Horizontal horizontal2 = Alignment.Companion.o;
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).f48398i, gapComposerH, 0), null, com.vuitton.android.designkit.ui.common.ModifierExtKt.e(columnScopeInstance.b(modifierO, horizontal2), "cbdt_lvLogo_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH, 56, 0);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.mylv_myprofile_settingsbrick_title), com.vuitton.android.designkit.ui.common.ModifierExtKt.e(PaddingKt.m(columnScopeInstance.b(new DTFunctionNameModifier(str), horizontal2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7), "cbdt_title_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48425e, gapComposerH, 0, 0, 131068);
                gapComposerH = gapComposerH;
                z2 = false;
                gapComposerH.Z(false);
            } else if (i6 != 2) {
                z2 = false;
                cj.x(n00.i(gapComposerH, 1983791860, "PrivacyPreComplianceScreen"), LVAppDesignKitTheme.d(gapComposerH).F, gapComposerH, false);
                function4 = function6;
                str = "PrivacyPreComplianceScreen";
                function5 = function7;
            } else {
                Modifier modifierO2 = SizeKt.o(PaddingKt.m(n00.i(gapComposerH, 1982613860, "PrivacyPreComplianceScreen"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.d(gapComposerH).w);
                BiasAlignment.Horizontal horizontal3 = Alignment.Companion.o;
                str = "PrivacyPreComplianceScreen";
                function5 = function7;
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).f48398i, gapComposerH, 0), null, com.vuitton.android.designkit.ui.common.ModifierExtKt.e(columnScopeInstance.b(modifierO2, horizontal3), "cbdt_lvLogo_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH, 56, 0);
                String strC = StringResources_androidKt.c(gapComposerH, R.string.gdpr_overview_title);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48425e;
                TextAlign.f10959b.getClass();
                TextKt.c(strC, com.vuitton.android.designkit.ui.common.ModifierExtKt.e(PaddingKt.m(columnScopeInstance.b(new DTFunctionNameModifier(str), horizontal3), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "cbdt_title_text"), 0L, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130044);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
                z2 = false;
                function4 = function6;
            }
            Modifier modifierD = ScrollKt.d(new DTFunctionNameModifier(str), ScrollKt.b(gapComposerH), z2, 14);
            ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(Arrangement.d, r17, gapComposerH, 6);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierD);
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
            Function2 function12 = function5;
            Updater.c(gapComposerH, columnMeasurePolicyA3, function12);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function8);
            cj.t(iHashCode3, gapComposerH, function9, gapComposerH, function10);
            Updater.c(gapComposerH, modifierC3, function11);
            int i7 = iArr[privacyType.ordinal()];
            if (i7 != 1) {
                if (i7 != 2) {
                    if (i7 == 3) {
                        gapComposerH.L(389782593);
                        int i8 = AnnotatedString.f10418f;
                        String strC2 = StringResources_androidKt.c(gapComposerH, R.string.cn_third_party_legal_easy_form_text);
                        TextDecoration.f10965b.getClass();
                        AnnotatedString annotatedStringB = Html_androidKt.b(strC2, new TextLinkStyles(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61439, (DefaultConstructorMarker) null), null, null, null, 14, null), 4);
                        TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).f48427h;
                        long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                        TextAlign.f10959b.getClass();
                        GapComposer gapComposer = gapComposerH;
                        TextKt.d(annotatedStringB, null, j3, 0L, 0L, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, null, textStyle2, gapComposer, 0, 0, 261114);
                        gapComposerH = gapComposer;
                        gapComposerH.Z(false);
                    } else {
                        if (i7 != 4) {
                            throw d21.u(gapComposerH, 1120846418, false);
                        }
                        gapComposerH.L(390546805);
                        gapComposerH.Z(false);
                    }
                    z3 = true;
                } else {
                    gapComposerH.L(389240248);
                    GapComposer gapComposer2 = gapComposerH;
                    TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.gdpr_welcome_description), com.vuitton.android.designkit.ui.common.ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier(str), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "cbdt_description_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposer2, 0, 0, 131068);
                    gapComposerH = gapComposer2;
                    gapComposerH.Z(false);
                }
                z3 = true;
            } else {
                gapComposerH.L(386513271);
                gapComposerH.L(1120847375);
                AnnotatedString.Builder builder = new AnnotatedString.Builder(0, 1, null);
                String strC3 = StringResources_androidKt.c(gapComposerH, R.string.ccpa_body_text);
                String strC4 = StringResources_androidKt.c(gapComposerH, R.string.ccpa_body_text_link);
                int iV = StringsKt.v(strC3, strC4, 0, false, 6);
                int length = strC4.length() + iV;
                builder.e(strC3);
                if (iV >= 0 && length <= strC3.length() && iV < length) {
                    TextDecoration.f10965b.getClass();
                    builder.c(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61439, (DefaultConstructorMarker) null), iV, length);
                    builder.b(iV, length, "link", "privacyPolicy");
                }
                AnnotatedString annotatedStringI = builder.i();
                DTFunctionNameModifier dTFunctionNameModifierF = o60.f(gapComposerH, false, str);
                ColumnMeasurePolicy columnMeasurePolicyA4 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                int iHashCode4 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
                Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifierF);
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
                Updater.c(gapComposerH, columnMeasurePolicyA4, function12);
                Updater.c(gapComposerH, persistentCompositionLocalMapU4, function8);
                cj.t(iHashCode4, gapComposerH, function9, gapComposerH, function10);
                GapComposer gapComposer3 = gapComposerH;
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.ccpa_subtitle), com.vuitton.android.designkit.ui.common.ModifierExtKt.e(PaddingKt.m(tr.e(gapComposerH, modifierC4, function11, str), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), "cbdt_subtitle_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposer3, 0, 0, 131068);
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier(str);
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.f8591k, gapComposer3, 0);
                int iHashCode5 = Long.hashCode(gapComposer3.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU5 = gapComposer3.U();
                Modifier modifierC5 = ComposedModifierKt.c(gapComposer3, dTFunctionNameModifier);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer3.B();
                if (gapComposer3.S) {
                    gapComposer3.C(function4);
                } else {
                    gapComposer3.o();
                }
                Updater.c(gapComposer3, rowMeasurePolicyA, function12);
                Updater.c(gapComposer3, persistentCompositionLocalMapU5, function8);
                cj.t(iHashCode5, gapComposer3, function9, gapComposer3, function10);
                Updater.c(gapComposer3, modifierC5, function11);
                TextStyle textStyle3 = LVAppDesignKitTheme.n(gapComposer3).f48427h;
                Modifier modifierE = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier(str), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer3).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "cbdtSettings_description_text");
                boolean zK = gapComposer3.K(annotatedStringI) | ((i4 & 3670016) == 1048576);
                Object objX = gapComposer3.x();
                if (zK || objX == Composer.Companion.f7939a) {
                    function3 = function3;
                    objX = new n9(annotatedStringI, function3, 3);
                    gapComposer3.q(objX);
                } else {
                    function3 = function3;
                }
                ClickableTextKt.a(annotatedStringI, modifierE, textStyle3, false, 0, 0, null, (Function1) objX, gapComposer3, 0, 120);
                gapComposerH = gapComposer3;
                z3 = true;
                pq0.x(gapComposerH, true, true, false);
            }
            gapComposerH.Z(z3);
            gapComposerH.Z(z3);
            int i9 = i4 >> 6;
            GapComposer gapComposer4 = gapComposerH;
            PrivacyPreComplianceFooterKt.a(privacyType, function0, function1, function2, gapComposer4, (i5 & 14) | (i9 & 112) | (i9 & 896) | (i9 & 7168));
            gapComposerH = gapComposer4;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new nm(paddingValues, privacyType, z, function0, function1, function2, function3, i2);
        }
    }
}

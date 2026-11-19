package com.vuitton.android.presentation.screen.pdp.components.subcomponents;

import androidx.compose.animation.AnimationModifierKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Html_androidKt;
import androidx.compose.ui.text.LinkInteractionListener;
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
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import defpackage.c30;
import defpackage.cj;
import defpackage.gi0;
import defpackage.n00;
import defpackage.o60;
import defpackage.rm;
import defpackage.u00;
import defpackage.yk0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "productDescriptionCollapsed", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpDescriptionKt {
    public static final void a(Modifier modifier, String str, Function1 function1, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "PdpDescription");
        }
        Modifier modifier2 = modifierE;
        function1.getClass();
        GapComposer gapComposerH = composer.h(-932224502);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (str == null) {
                gapComposerH.L(-641368258);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-641368257);
                Object objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = SnapshotStateKt.g(Boolean.TRUE);
                    gapComposerH.q(objX);
                }
                MutableState mutableState = (MutableState) objX;
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier2);
                ComposeUiNode.b0.getClass();
                Function0 function0 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Function2 function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, columnMeasurePolicyA, function2);
                Function2 function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf = Integer.valueOf(iHashCode);
                Function2 function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function4);
                Function1 function5 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function5);
                Function2 function6 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function6);
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PdpDescription");
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                Modifier modifierE2 = ModifierExtKt.e(AnimationModifierKt.b(n00.e(gapComposerH, modifierC2, function6, "PdpDescription", 1.0f), null, 3), "pdp_description_text");
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new yk0(17);
                    gapComposerH.q(objX2);
                }
                Modifier modifierA = GraphicsLayerModifierKt.a(modifierE2, (Function1) objX2);
                Object objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new c30(24, mutableState);
                    gapComposerH.q(objX3);
                }
                Modifier modifierC3 = DrawModifierKt.c(modifierA, (Function1) objX3);
                int i4 = AnnotatedString.f10418f;
                TextDecoration.f10965b.getClass();
                TextLinkStyles textLinkStyles = new TextLinkStyles(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61439, (DefaultConstructorMarker) null), null, null, null, 14, null);
                boolean z = (i3 & 896) == 256;
                Object objX4 = gapComposerH.x();
                if (z || objX4 == composer$Companion$Empty$1) {
                    objX4 = new rm(function1, 5);
                    gapComposerH.q(objX4);
                }
                TextKt.d(Html_androidKt.a(str, textLinkStyles, (LinkInteractionListener) objX4), modifierC3, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, 0L, null, 0L, 0, false, ((Boolean) mutableState.getF10755b()).booleanValue() ? 5 : Integer.MAX_VALUE, 0, null, null, LVAppDesignKitTheme.n(gapComposerH).g, gapComposerH, 0, 0, 245752);
                gapComposerH = gapComposerH;
                gapComposerH.Z(true);
                String strC = StringResources_androidKt.c(gapComposerH, ((Boolean) mutableState.getF10755b()).booleanValue() ? R.string.ccpa_read_more : R.string.ccpa_read_less);
                Modifier modifierE3 = ModifierExtKt.e(PaddingKt.m(ColumnScopeInstance.f4944a.b(new DTFunctionNameModifier("PdpDescription"), horizontal), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "pdp_readMore_button");
                Object objX5 = gapComposerH.x();
                if (objX5 == composer$Companion$Empty$1) {
                    objX5 = new u00(19, mutableState);
                    gapComposerH.q(objX5);
                }
                LVLinkKt.a(modifierE3, strC, false, null, true, (Function0) objX5, gapComposerH, 221184, 12);
                cj.x(o60.f(gapComposerH, true, "PdpDescription"), LVAppDesignKitTheme.l(gapComposerH).f48417f, gapComposerH, false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new gi0(i2, 9, modifier2, str, function1);
        }
    }
}

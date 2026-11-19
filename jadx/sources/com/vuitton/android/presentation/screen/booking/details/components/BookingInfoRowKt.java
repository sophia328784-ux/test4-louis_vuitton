package com.vuitton.android.presentation.screen.booking.details.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.material3.TextKt;
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
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.a;
import defpackage.h1;
import defpackage.n00;
import defpackage.qf;
import defpackage.re;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.internal.Constants;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingInfoRowKt {
    public static final void a(Modifier modifier, String str, String str2, boolean z, Function0 function0, Composer composer, int i2) {
        Modifier modifierB;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "BookingInfoRow");
        }
        str.getClass();
        str2.getClass();
        GapComposer gapComposerH = composer.h(-939339485);
        int i3 = i2 | 6 | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            dTFunctionNameModifier = new DTFunctionNameModifier("BookingInfoRow");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z) {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, 2144559845, "BookingInfoRow");
                boolean z2 = (57344 & i3) == 16384;
                Object objX = gapComposerH.x();
                if (z2 || objX == composer$Companion$Empty$1) {
                    objX = new h1(function0, 18);
                    gapComposerH.q(objX);
                }
                Modifier modifierC = ModifierExtKt.c(dTFunctionNameModifierI, false, null, null, (Function0) objX, 31);
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new re(9);
                    gapComposerH.q(objX2);
                }
                modifierB = SemanticsModifierKt.b(modifierC, true, (Function1) objX2);
                gapComposerH.Z(false);
            } else {
                DTFunctionNameModifier dTFunctionNameModifierI2 = n00.i(gapComposerH, 2144747209, "BookingInfoRow");
                Object objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new re(10);
                    gapComposerH.q(objX3);
                }
                modifierB = SemanticsModifierKt.b(dTFunctionNameModifierI2, true, (Function1) objX3);
                gapComposerH.Z(false);
            }
            Modifier modifierO = dTFunctionNameModifier.o(modifierB);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierO);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            TextDecoration textDecoration = null;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
            gapComposerH.L(1154398652);
            AnnotatedString.Builder builder = new AnnotatedString.Builder(0, 1, null);
            int iH = builder.h(new SpanStyle(LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, Constants.CallType.HOST, (DefaultConstructorMarker) null));
            try {
                builder.e(str);
                builder.e(" ");
                builder.f(iH);
                long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                if (z) {
                    TextDecoration.f10965b.getClass();
                    textDecoration = TextDecoration.d;
                }
                int iH2 = builder.h(new SpanStyle(j2, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61438, (DefaultConstructorMarker) null));
                try {
                    builder.e(str2);
                    builder.f(iH2);
                    AnnotatedString annotatedStringI = builder.i();
                    gapComposerH.Z(false);
                    TextKt.d(annotatedStringI, null, 0L, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 262142);
                    gapComposerH.Z(true);
                } catch (Throwable th) {
                    builder.f(iH2);
                    throw th;
                }
            } catch (Throwable th2) {
                builder.f(iH);
                throw th2;
            }
        } else {
            gapComposerH.D();
        }
        Modifier modifier2 = dTFunctionNameModifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qf(modifier2, str, str2, z, function0, i2, 0);
        }
    }
}

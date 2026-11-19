package com.vuitton.android.presentation.screen.dynamicform.components.fields;

import android.content.Context;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
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
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVCheckboxKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldBooleanUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.dt;
import defpackage.p1;
import defpackage.xz;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FormFieldBooleanKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57482a;

        static {
            int[] iArr = new int[LVColorScheme.values().length];
            try {
                iArr[LVColorScheme.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVColorScheme.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f57482a = iArr;
        }
    }

    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5, types: [java.lang.String, java.lang.Throwable] */
    public static final void a(Modifier modifier, FormFieldUiModel formFieldUiModel, FormFieldBooleanUiModel formFieldBooleanUiModel, boolean z, Function1 function1, LVColorScheme lVColorScheme, Composer composer, int i2) {
        Modifier modifier2;
        AnnotatedString annotatedString;
        AnnotatedString annotatedStringE;
        boolean z2;
        DTFunctionNameModifier dTFunctionNameModifier;
        AnnotatedString annotatedString2;
        ?? r11;
        float f2;
        long j2;
        Modifier modifierE = modifier;
        FormFieldUiModel formFieldUiModel2 = formFieldUiModel;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "FormFieldBoolean");
        }
        formFieldUiModel2.getClass();
        formFieldBooleanUiModel.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1916049501);
        int i3 = i2 | 6;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(formFieldUiModel2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(formFieldBooleanUiModel) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 131072 : 65536;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("FormFieldBoolean");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            AnnotatedString annotatedString3 = formFieldUiModel2.g;
            boolean z3 = (annotatedString3 == null || !annotatedString3.d(annotatedString3.f10420c.length()) || formFieldUiModel2.f57498h == null) ? false : true;
            if (annotatedString3 != null) {
                gapComposerH.L(916021146);
                gapComposerH.Z(false);
                annotatedStringE = formFieldUiModel2.e(annotatedString3);
                z2 = false;
            } else {
                gapComposerH.L(916102769);
                Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
                context.getClass();
                try {
                    annotatedString = new AnnotatedString(StringResourceUiModelKt.a(formFieldUiModel2.f57497f, context), null, 2, null);
                } catch (Exception unused) {
                    annotatedString = new AnnotatedString("", null, 2, null);
                }
                annotatedStringE = formFieldUiModel2.e(annotatedString);
                z2 = false;
                gapComposerH.Z(false);
            }
            AnnotatedString annotatedString4 = annotatedStringE;
            Modifier modifierD = SizeKt.d(dTFunctionNameModifier2, 1.0f);
            boolean z4 = ((i4 & 57344) == 16384 ? true : z2) | ((i4 & 896) == 256);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z4 || objX == composer$Companion$Empty$1) {
                objX = new dt(function1, formFieldBooleanUiModel, 17);
                gapComposerH.q(objX);
            }
            Modifier modifierC = ModifierExtKt.c(modifierD, z, null, null, (Function0) objX, 30);
            boolean zB = ((i4 & 7168) == 2048) | gapComposerH.b(z3) | gapComposerH.K(annotatedString3) | gapComposerH.K(annotatedString4) | gapComposerH.y(formFieldUiModel2);
            Object objX2 = gapComposerH.x();
            if (zB || objX2 == composer$Companion$Empty$1) {
                dTFunctionNameModifier = dTFunctionNameModifier2;
                annotatedString2 = annotatedString4;
                r11 = 0;
                f2 = 1.0f;
                xz xzVar = new xz(z, z3, annotatedString3, annotatedString2, formFieldUiModel2);
                formFieldUiModel2 = formFieldUiModel2;
                gapComposerH.q(xzVar);
                objX2 = xzVar;
            } else {
                dTFunctionNameModifier = dTFunctionNameModifier2;
                annotatedString2 = annotatedString4;
                r11 = 0;
                f2 = 1.0f;
            }
            Modifier modifierA = com.vuitton.android.presentation.extensions.ModifierExtKt.a(modifierC, r11, (Function1) objX2, 3);
            String str = formFieldUiModel2.f57501k;
            if (str == null) {
                str = "";
            }
            Modifier modifierE2 = ModifierExtKt.e(modifierA, str);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 6);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierE2);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw r11;
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
            LVCheckboxKt.a(null, z, formFieldBooleanUiModel.f57505a, lVColorScheme, false, function1, gapComposerH, ((i4 >> 6) & 7280) | ((i4 << 3) & ImageMetadata.JPEG_GPS_COORDINATES), 17);
            Modifier modifierB = cj.b("FormFieldBoolean", RowScopeInstance.f5040a, f2, true);
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierK = PaddingKt.k(modifierB, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14.0f, 1);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
            int i5 = WhenMappings.f57482a[lVColorScheme.ordinal()];
            if (i5 == 1) {
                gapComposerH.L(291419527);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                gapComposerH.Z(false);
            } else {
                if (i5 != 2) {
                    throw d21.u(gapComposerH, 291416750, false);
                }
                gapComposerH.L(291422285);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                gapComposerH.Z(false);
            }
            TextKt.d(annotatedString2, modifierK, j2, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, textStyle, gapComposerH, 0, 0, 262136);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p1(modifier2, formFieldUiModel2, formFieldBooleanUiModel, z, function1, lVColorScheme, i2);
        }
    }
}

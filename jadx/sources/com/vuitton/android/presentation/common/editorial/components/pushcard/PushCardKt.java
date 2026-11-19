package com.vuitton.android.presentation.common.editorial.components.pushcard;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.material3.IconKt;
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
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import defpackage.a;
import defpackage.bo0;
import defpackage.cj;
import defpackage.kc;
import defpackage.n00;
import defpackage.o60;
import defpackage.sq0;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PushCardKt {
    public static final void a(Modifier modifier, String str, String str2, boolean z, Integer num, AssetImageUiModel assetImageUiModel, PushCardType pushCardType, Function0 function0, Composer composer, int i2) {
        int i3;
        boolean z2;
        Function2 function2;
        int i4;
        Function0 function1;
        long j2;
        Function2 function3;
        long j3;
        int i5;
        int i6;
        String str3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "PushCard");
        }
        str.getClass();
        pushCardType.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(1023871211);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str2) ? 256 : 128;
        }
        int i7 = i3 | 3072;
        if ((i2 & 24576) == 0) {
            i7 |= gapComposerH.K(num) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i7 |= gapComposerH.K(assetImageUiModel) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i7 |= gapComposerH.d(pushCardType.ordinal()) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i7 |= gapComposerH.y(function0) ? 8388608 : 4194304;
        }
        if (gapComposerH.p(i7 & 1, (4793491 & i7) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) objX;
            RoundedCornerShape roundedCornerShape = LVAppDesignKitTheme.j(gapComposerH).f48411c;
            int i8 = i7 & 7168;
            int i9 = i7 & 29360128;
            boolean z3 = (i8 == 2048) | (i9 == 8388608);
            Object objX2 = gapComposerH.x();
            if (z3 || objX2 == composer$Companion$Empty$1) {
                objX2 = new bo0(function0, 4);
                gapComposerH.q(objX2);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierE, true, (Function1) objX2);
            boolean z4 = (i8 == 2048) | (i9 == 8388608);
            Object objX3 = gapComposerH.x();
            if (z4 || objX3 == composer$Companion$Empty$1) {
                objX3 = new sq0(function0, 0);
                gapComposerH.q(objX3);
            }
            Modifier modifierD = ModifierExtKt.d(modifierB, mutableInteractionSource, (Function0) objX3, gapComposerH, 48);
            Modifier modifierA = ModifierExtKt.a(n00.i(gapComposerH, -709547292, "PushCard"), function0, gapComposerH, ((i7 >> 18) & 112) | 6);
            gapComposerH.Z(false);
            Modifier modifierI = PaddingKt.i(BackgroundKt.b(ClipKt.a(modifierD.o(modifierA), roundedCornerShape), ((Color) pushCardType.getContainerColor().invoke(gapComposerH, 0)).f8872a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function5);
            Function2 function6 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function7 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function7);
            Function1 function8 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function8);
            Function2 function9 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function9);
            Pair pair = new Pair(pushCardType.getContentColor().invoke(gapComposerH, 0), pushCardType.getDescriptionColor().invoke(gapComposerH, 0));
            long j4 = ((Color) pair.f71705b).f8872a;
            long j5 = ((Color) pair.f71706c).f8872a;
            Modifier modifierE2 = ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("PushCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(gapComposerH).o), "pushCard_image");
            if (assetImageUiModel != null) {
                gapComposerH.L(-2077664049);
                function1 = function4;
                String str4 = assetImageUiModel.f51778b;
                str4.getClass();
                ContentScale.f9447a.getClass();
                function2 = function5;
                i4 = i7;
                j2 = j5;
                function3 = function9;
                ImageLoaderKt.b(modifierE2, str4, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
                gapComposerH = gapComposerH;
                i5 = 0;
                gapComposerH.Z(false);
                j3 = j4;
            } else {
                function2 = function5;
                i4 = i7;
                function1 = function4;
                j2 = j5;
                function3 = function9;
                if (num != null) {
                    gapComposerH.L(17119998);
                    j3 = j4;
                    IconKt.a(PainterResources_androidKt.a(num.intValue(), gapComposerH, (i4 >> 12) & 14), null, modifierE2, j3, gapComposerH, 56, 0);
                    i5 = 0;
                    gapComposerH.Z(false);
                } else {
                    j3 = j4;
                    i5 = 0;
                    gapComposerH.L(17311547);
                    gapComposerH.Z(false);
                }
            }
            long j6 = j3;
            Modifier modifierB2 = cj.b("PushCard", RowScopeInstance.f5040a, 1.0f, true);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b), Alignment.Companion.n, gapComposerH, i5);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
            cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function8);
            Modifier modifierF = n00.f(gapComposerH, modifierC2, function3, "PushCard", "pushCard_title_text");
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48429j;
            TextOverflow.f10989a.getClass();
            int i10 = TextOverflow.f10991c;
            GapComposer gapComposer = gapComposerH;
            boolean z5 = true;
            TextKt.c(str, modifierF, j6, 0L, null, 0L, null, null, 0L, i10, false, 1, 0, null, textStyle, gapComposer, (i4 >> 3) & 14, 24960, 110584);
            gapComposerH = gapComposer;
            if (str2 == null) {
                gapComposerH.L(1128046192);
                i6 = 0;
                gapComposerH.Z(false);
                str3 = "PushCard";
            } else {
                TextKt.c(str2, n00.d(gapComposerH, 1128046193, "PushCard", "pushCard_description_text"), j2, 0L, null, 0L, null, null, 0L, i10, false, 2, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, (i4 >> 6) & 14, 24960, 110584);
                gapComposerH = gapComposerH;
                i6 = 0;
                gapComposerH.Z(false);
                str3 = "PushCard";
                z5 = true;
            }
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).I, gapComposerH, i6), null, SizeKt.o(PaddingKt.m(o60.f(gapComposerH, z5, str3), LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposerH).m), j6, gapComposerH, 56, 0);
            gapComposerH.Z(z5);
            z2 = z5;
        } else {
            gapComposerH.D();
            z2 = z;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kc(modifierE, str, str2, z2, num, assetImageUiModel, pushCardType, function0, i2);
        }
    }
}

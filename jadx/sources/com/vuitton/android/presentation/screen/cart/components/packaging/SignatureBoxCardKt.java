package com.vuitton.android.presentation.screen.cart.components.packaging;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
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
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import defpackage.a;
import defpackage.cj;
import defpackage.kj0;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SignatureBoxCardKt {
    public static final void a(Modifier modifier, String str, String str2, String str3, Boolean bool, Composer composer, int i2) {
        boolean z;
        String strF;
        String strF2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "SignatureBoxCard");
        }
        GapComposer gapComposerH = composer.h(-1637178746);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128) | (gapComposerH.K(str3) ? 2048 : 1024) | (gapComposerH.K(bool) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            RoundedCornerShape roundedCornerShape = LVAppDesignKitTheme.j(gapComposerH).f48411c;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.q;
            Modifier modifierI = PaddingKt.i(BackgroundKt.b(BorderKt.a(ClipKt.a(ModifierExtKt.e(LVAppDesignKitTheme.d(gapComposerH).m, LVAppDesignKitTheme.d(gapComposerH).m, LVAppDesignKitTheme.d(gapComposerH).m, 2, j2, n00.g("SignatureBoxCard", "cartSignatureBox_card_view")), roundedCornerShape).o(modifierE), LVAppDesignKitTheme.d(gapComposerH).f48385c, j2, roundedCornerShape), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
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
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            Arrangement.SpacedAligned spacedAlignedF2 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("SignatureBoxCard");
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF2, Alignment.Companion.f8591k, gapComposerH, 0);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function5);
            Modifier modifierB = cj.b("SignatureBoxCard", RowScopeInstance.f5040a, 1.0f, true);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b), horizontal, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
            cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function1);
            Modifier modifierF = n00.f(gapComposerH, modifierC3, function5, "SignatureBoxCard", "cartSignatureBox_title_text");
            if (str == null) {
                z = false;
                strF = cj.f(gapComposerH, 807919244, R.string.cart_packaging_card_title, gapComposerH, false);
            } else {
                z = false;
                gapComposerH.L(807918965);
                gapComposerH.Z(false);
                strF = str;
            }
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
            long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextOverflow.f10989a.getClass();
            int i4 = TextOverflow.f10991c;
            String str4 = strF;
            boolean z2 = z;
            TextKt.c(str4, modifierF, j3, 0L, null, 0L, null, null, 0L, i4, false, 1, 0, null, textStyle, gapComposerH, 0, 24960, 110584);
            Modifier modifierG = n00.g("SignatureBoxCard", "cartSignatureBox_description_text");
            if (str2 == null) {
                strF2 = cj.f(gapComposerH, 807934450, R.string.cart_packaging_card_description, gapComposerH, z2);
            } else {
                gapComposerH.L(807933985);
                gapComposerH.Z(z2);
                strF2 = str2;
            }
            TextKt.c(strF2, modifierG, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, i4, false, 3, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 24960, 110584);
            gapComposerH.Z(true);
            if (bool.equals(Boolean.TRUE)) {
                LVLinkKt.a(n00.d(gapComposerH, 1184743880, "SignatureBoxCard", "cartSignatureBox_link_text"), StringResources_androidKt.c(gapComposerH, R.string.cart_packaging_card_link), false, null, false, null, gapComposerH, 0, 60);
                gapComposerH.Z(z2);
            } else {
                gapComposerH.L(1184972598);
                gapComposerH.Z(z2);
            }
            gapComposerH.Z(true);
            ImageLoaderKt.b(AspectRatioKt.a(SizeKt.d(ClipKt.a(com.vuitton.android.designkit.ui.common.ModifierExtKt.e(new DTFunctionNameModifier("SignatureBoxCard"), "cartSignatureBox_card_image"), roundedCornerShape), 1.0f), 1.7777778f, z2), str3 == null ? Integer.valueOf(R.drawable.signature_box) : str3, null, null, null, R.drawable.signature_box, false, null, null, null, gapComposerH, 3072, 2004);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kj0(modifierE, str, str2, str3, bool, i2, 21);
        }
    }
}

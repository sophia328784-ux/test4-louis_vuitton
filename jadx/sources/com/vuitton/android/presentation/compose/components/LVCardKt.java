package com.vuitton.android.presentation.compose.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
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
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVCheckboxKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.cart.models.AutomationTagsCart$Button$WhenMappings;
import com.vuitton.android.presentation.screen.cart.models.AutomationTagsCart$CardType;
import com.vuitton.android.presentation.screen.cart.models.AutomationTagsCart$Image;
import com.vuitton.android.presentation.screen.cart.models.AutomationTagsCart$Text;
import defpackage.cj;
import defpackage.n00;
import defpackage.o60;
import defpackage.qe;
import defpackage.rq;
import defpackage.tr;
import defpackage.v40;
import defpackage.x4;
import defpackage.y2;
import defpackage.zh;
import defpackage.zu;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVCardKt {
    /* JADX WARN: Code duplicated, block: B:100:0x0369  */
    /* JADX WARN: Code duplicated, block: B:102:0x036d  */
    /* JADX WARN: Code duplicated, block: B:104:0x0371  */
    /* JADX WARN: Code duplicated, block: B:107:0x037f  */
    /* JADX WARN: Code duplicated, block: B:109:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x0073  */
    /* JADX WARN: Code duplicated, block: B:43:0x007b  */
    /* JADX WARN: Code duplicated, block: B:44:0x007e  */
    /* JADX WARN: Code duplicated, block: B:46:0x0082  */
    /* JADX WARN: Code duplicated, block: B:49:0x0089  */
    /* JADX WARN: Code duplicated, block: B:51:0x0093  */
    /* JADX WARN: Code duplicated, block: B:52:0x0096  */
    /* JADX WARN: Code duplicated, block: B:56:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:57:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:60:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:63:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:66:0x014f  */
    /* JADX WARN: Code duplicated, block: B:68:0x0156  */
    /* JADX WARN: Code duplicated, block: B:69:0x015a  */
    /* JADX WARN: Code duplicated, block: B:72:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:73:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:76:0x0218  */
    /* JADX WARN: Code duplicated, block: B:78:0x021f  */
    /* JADX WARN: Code duplicated, block: B:79:0x0223  */
    /* JADX WARN: Code duplicated, block: B:82:0x0288  */
    /* JADX WARN: Code duplicated, block: B:84:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:87:0x0308  */
    /* JADX WARN: Code duplicated, block: B:89:0x030b  */
    /* JADX WARN: Code duplicated, block: B:91:0x030e  */
    /* JADX WARN: Code duplicated, block: B:93:0x0311  */
    /* JADX WARN: Code duplicated, block: B:94:0x0314  */
    /* JADX WARN: Code duplicated, block: B:96:0x0318  */
    /* JADX WARN: Code duplicated, block: B:97:0x031b  */
    /* JADX WARN: Code duplicated, block: B:98:0x031e  */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v20 */
    public static final void a(Modifier modifier, String str, String str2, String str3, int i2, AutomationTagsCart$CardType automationTagsCart$CardType, boolean z, Composer composer, int i3, int i4) {
        int i5;
        String str4;
        int i6;
        int i7;
        boolean z2;
        boolean z3;
        String str5;
        RecomposeScopeImpl recomposeScopeImplB0;
        String str6;
        Modifier modifierA;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Function2 function2;
        Function2 function3;
        Function2 function4;
        Function1 function1;
        Function2 function5;
        Object objValueOf;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        int i8;
        String str7;
        ?? r8;
        int i9;
        String str8;
        int i10;
        int i11;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVCard");
        }
        str.getClass();
        automationTagsCart$CardType.getClass();
        GapComposer gapComposerH = composer.h(944835634);
        Applier applier = gapComposerH.f7976a;
        if ((i3 & 6) == 0) {
            i5 = (gapComposerH.K(modifierE) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.K(str2) ? 256 : 128;
        }
        int i12 = i4 & 8;
        if (i12 == 0) {
            if ((i3 & 3072) == 0) {
                str4 = str3;
                i5 |= gapComposerH.K(str4) ? 2048 : 1024;
            }
            if ((i3 & 24576) == 0) {
                i6 = i2;
                if (gapComposerH.d(i6)) {
                    i11 = 16384;
                } else {
                    i11 = 8192;
                }
                i5 |= i11;
            } else {
                i6 = i2;
            }
            if ((196608 & i3) == 0) {
                if (gapComposerH.d(automationTagsCart$CardType.ordinal())) {
                    i10 = 131072;
                } else {
                    i10 = 65536;
                }
                i5 |= i10;
            }
            i7 = i5 | 1572864;
            if ((i7 & 599187) != 599186) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (gapComposerH.p(i7 & 1, z2)) {
                if (i12 != 0) {
                    str6 = null;
                } else {
                    str6 = str4;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                modifierA = AlphaKt.a(new DTFunctionNameModifier("LVCard"), 0.5f);
                Modifier modifierI = PaddingKt.i(BackgroundKt.b(ClipKt.a(ModifierExtKt.e(LVAppDesignKitTheme.d(gapComposerH).f48386e, LVAppDesignKitTheme.d(gapComposerH).m, LVAppDesignKitTheme.d(gapComposerH).f48386e, 2, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48376c, new DTFunctionNameModifier("LVCard")), LVAppDesignKitTheme.j(gapComposerH).f48411c).o(modifierE), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
                Alignment.f8582a.getClass();
                rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.l, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function4);
                function1 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function1);
                function5 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function5);
                Modifier modifierE2 = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(new DTFunctionNameModifier("LVCard"), AutomationTagsCart$Image.a(automationTagsCart$CardType));
                Dp.Companion companion = Dp.f11004c;
                Modifier modifierB = ModifierExtKt.b(ClipKt.a(SizeKt.o(modifierE2, 80.0f), LVAppDesignKitTheme.j(gapComposerH).f48410b), false, new qe(modifierA, 4), gapComposerH, 0);
                if (str6 == null) {
                    objValueOf = Integer.valueOf(i6);
                } else {
                    objValueOf = str6;
                }
                ImageLoaderKt.b(modifierB, objValueOf, null, null, null, i2, false, null, null, null, gapComposerH, ((i7 << 3) & ImageMetadata.JPEG_GPS_COORDINATES) | 3072, 2004);
                Modifier modifierB2 = ModifierExtKt.b(cj.b("LVCard", RowScopeInstance.f5040a, 1.0f, true), false, new qe(modifierA, 5), gapComposerH, 0);
                columnMeasurePolicyA = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b), Alignment.Companion.n, gapComposerH, 0);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB2);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
                Modifier modifierE3 = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(tr.e(gapComposerH, modifierC2, function5, "LVCard"), AutomationTagsCart$Text.a(automationTagsCart$CardType, AutomationTagsCart$Text.TextType.TITLE));
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
                long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                TextOverflow.f10989a.getClass();
                i8 = TextOverflow.f10991c;
                TextKt.c(str, modifierE3, j2, 0L, null, 0L, null, null, 0L, i8, false, 1, 0, null, textStyle, gapComposerH, (i7 >> 3) & 14, 24960, 110584);
                gapComposerH = gapComposerH;
                if (str2 != null) {
                    str7 = "LVCard";
                    TextKt.c(str2, com.vuitton.android.designkit.ui.common.ModifierExtKt.e(n00.i(gapComposerH, -978092258, "LVCard"), AutomationTagsCart$Text.a(automationTagsCart$CardType, AutomationTagsCart$Text.TextType.DESCRIPTION)), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, i8, false, 3, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, (i7 >> 6) & 14, 24960, 110584);
                    gapComposerH = gapComposerH;
                    r8 = 0;
                    gapComposerH.Z(false);
                } else {
                    str7 = "LVCard";
                    r8 = 0;
                    gapComposerH.L(-977655530);
                    gapComposerH.Z(false);
                }
                DTFunctionNameModifier dTFunctionNameModifierF = o60.f(gapComposerH, true, str7);
                i9 = AutomationTagsCart$Button$WhenMappings.f55132a[automationTagsCart$CardType.ordinal()];
                if (i9 != 1) {
                    str8 = "artOfGiftingPackaging";
                } else if (i9 != 2) {
                    str8 = "artOfGiftingGiftMessage";
                } else if (i9 != 3) {
                    str8 = "artOfGiftingShoppingBag";
                } else {
                    if (i9 == 4) {
                        v40.g();
                        return;
                    }
                    str8 = "sampleChoose";
                }
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).I, gapComposerH, r8), null, ModifierExtKt.b(SizeKt.o(com.vuitton.android.designkit.ui.common.ModifierExtKt.e(dTFunctionNameModifierF, "cart_" + str8 + "_button"), LVAppDesignKitTheme.d(gapComposerH).m), r8, new qe(modifierA, 6), gapComposerH, r8), 0L, gapComposerH, 56, 8);
                gapComposerH.Z(true);
                z3 = true;
                str5 = str6;
            } else {
                gapComposerH.D();
                z3 = z;
                str5 = str4;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new zu(modifierE, str, str2, str5, i2, automationTagsCart$CardType, z3, i3, i4);
            }
        }
        i5 |= 3072;
        str4 = str3;
        if ((i3 & 24576) == 0) {
            i6 = i2;
            if (gapComposerH.d(i6)) {
                i11 = 16384;
            } else {
                i11 = 8192;
            }
            i5 |= i11;
        } else {
            i6 = i2;
        }
        if ((196608 & i3) == 0) {
            if (gapComposerH.d(automationTagsCart$CardType.ordinal())) {
                i10 = 131072;
            } else {
                i10 = 65536;
            }
            i5 |= i10;
        }
        i7 = i5 | 1572864;
        if ((i7 & 599187) != 599186) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposerH.p(i7 & 1, z2)) {
            if (i12 != 0) {
                str6 = null;
            } else {
                str6 = str4;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            modifierA = AlphaKt.a(new DTFunctionNameModifier("LVCard"), 0.5f);
            Modifier modifierI2 = PaddingKt.i(BackgroundKt.b(ClipKt.a(ModifierExtKt.e(LVAppDesignKitTheme.d(gapComposerH).f48386e, LVAppDesignKitTheme.d(gapComposerH).m, LVAppDesignKitTheme.d(gapComposerH).f48386e, 2, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48376c, new DTFunctionNameModifier("LVCard")), LVAppDesignKitTheme.j(gapComposerH).f48411c).o(modifierE), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Arrangement$Start$1 arrangement$Start$2 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF2 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            rowMeasurePolicyA = RowKt.a(spacedAlignedF2, Alignment.Companion.l, gapComposerH, 48);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierI2);
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf2 = Integer.valueOf(iHashCode);
            function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf2, function4);
            function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            Modifier modifierE4 = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(new DTFunctionNameModifier("LVCard"), AutomationTagsCart$Image.a(automationTagsCart$CardType));
            Dp.Companion companion2 = Dp.f11004c;
            Modifier modifierB3 = ModifierExtKt.b(ClipKt.a(SizeKt.o(modifierE4, 80.0f), LVAppDesignKitTheme.j(gapComposerH).f48410b), false, new qe(modifierA, 4), gapComposerH, 0);
            if (str6 == null) {
                objValueOf = Integer.valueOf(i6);
            } else {
                objValueOf = str6;
            }
            ImageLoaderKt.b(modifierB3, objValueOf, null, null, null, i2, false, null, null, null, gapComposerH, ((i7 << 3) & ImageMetadata.JPEG_GPS_COORDINATES) | 3072, 2004);
            Modifier modifierB4 = ModifierExtKt.b(cj.b("LVCard", RowScopeInstance.f5040a, 1.0f, true), false, new qe(modifierA, 5), gapComposerH, 0);
            columnMeasurePolicyA = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b), Alignment.Companion.n, gapComposerH, 0);
            iHashCode2 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB4);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Modifier modifierE5 = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(tr.e(gapComposerH, modifierC2, function5, "LVCard"), AutomationTagsCart$Text.a(automationTagsCart$CardType, AutomationTagsCart$Text.TextType.TITLE));
            TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).l;
            long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextOverflow.f10989a.getClass();
            i8 = TextOverflow.f10991c;
            TextKt.c(str, modifierE5, j3, 0L, null, 0L, null, null, 0L, i8, false, 1, 0, null, textStyle2, gapComposerH, (i7 >> 3) & 14, 24960, 110584);
            gapComposerH = gapComposerH;
            if (str2 != null) {
                str7 = "LVCard";
                TextKt.c(str2, com.vuitton.android.designkit.ui.common.ModifierExtKt.e(n00.i(gapComposerH, -978092258, "LVCard"), AutomationTagsCart$Text.a(automationTagsCart$CardType, AutomationTagsCart$Text.TextType.DESCRIPTION)), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, i8, false, 3, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, (i7 >> 6) & 14, 24960, 110584);
                gapComposerH = gapComposerH;
                r8 = 0;
                gapComposerH.Z(false);
            } else {
                str7 = "LVCard";
                r8 = 0;
                gapComposerH.L(-977655530);
                gapComposerH.Z(false);
            }
            DTFunctionNameModifier dTFunctionNameModifierF2 = o60.f(gapComposerH, true, str7);
            i9 = AutomationTagsCart$Button$WhenMappings.f55132a[automationTagsCart$CardType.ordinal()];
            if (i9 != 1) {
                str8 = "artOfGiftingPackaging";
            } else if (i9 != 2) {
                str8 = "artOfGiftingGiftMessage";
            } else if (i9 != 3) {
                str8 = "artOfGiftingShoppingBag";
            } else {
                if (i9 == 4) {
                    v40.g();
                    return;
                }
                str8 = "sampleChoose";
            }
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).I, gapComposerH, r8), null, ModifierExtKt.b(SizeKt.o(com.vuitton.android.designkit.ui.common.ModifierExtKt.e(dTFunctionNameModifierF2, "cart_" + str8 + "_button"), LVAppDesignKitTheme.d(gapComposerH).m), r8, new qe(modifierA, 6), gapComposerH, r8), 0L, gapComposerH, 56, 8);
            gapComposerH.Z(true);
            z3 = true;
            str5 = str6;
        } else {
            gapComposerH.D();
            z3 = z;
            str5 = str4;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zu(modifierE, str, str2, str5, i2, automationTagsCart$CardType, z3, i3, i4);
        }
    }

    public static final void b(Modifier modifier, String str, String str2, String str3, boolean z, boolean z2, AutomationTagsCart$CardType automationTagsCart$CardType, Function0 function0, Composer composer, int i2) {
        Function0 function1;
        GapComposer gapComposer;
        boolean z3;
        boolean z4;
        String str4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVCardCheck");
        }
        str.getClass();
        automationTagsCart$CardType.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-201540078);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128) | (gapComposerH.K(str3) ? 2048 : 1024) | (gapComposerH.d(2131231320) ? 16384 : 8192) | ImageMetadata.EDGE_MODE | (gapComposerH.b(z2) ? 1048576 : 524288) | (gapComposerH.y(function0) ? 67108864 : 33554432);
        if (gapComposerH.p(i3 & 1, (i3 & 38347923) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = ModifierExtKt.b(BackgroundKt.b(ClickableKt.d(ClipKt.a(ModifierExtKt.e(LVAppDesignKitTheme.d(gapComposerH).f48386e, LVAppDesignKitTheme.d(gapComposerH).m, LVAppDesignKitTheme.d(gapComposerH).f48386e, 2, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48376c, new DTFunctionNameModifier("LVCardCheck")), LVAppDesignKitTheme.j(gapComposerH).f48411c).o(modifierE), false, null, null, function0, 15), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), false, new rq(29), gapComposerH, 0);
            boolean z5 = (i3 & 3670016) == 1048576;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z5 || objX == composer$Companion$Empty$1) {
                objX = new x4(z2, 3);
                gapComposerH.q(objX);
            }
            Modifier modifierB2 = SemanticsModifierKt.b(modifierB, true, (Function1) objX);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB2);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Function2 function3 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function7);
            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
            Modifier modifierM = PaddingKt.m(PaddingKt.k(cj.b("LVCardCheck", rowScopeInstance, 1.0f, true), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(spacedAlignedF, vertical, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA2, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
            Modifier modifierE2 = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(tr.e(gapComposerH, modifierC2, function7, "LVCardCheck"), AutomationTagsCart$Image.a(automationTagsCart$CardType));
            Dp.Companion companion = Dp.f11004c;
            ImageLoaderKt.b(ClipKt.a(SizeKt.o(modifierE2, 80.0f), LVAppDesignKitTheme.j(gapComposerH).f48410b), str3 == null ? 2131231320 : str3, null, null, null, 2131231320, false, null, null, null, gapComposerH, ((i3 << 3) & ImageMetadata.JPEG_GPS_COORDINATES) | 3072, 2004);
            Modifier modifierB3 = rowScopeInstance.b(new DTFunctionNameModifier("LVCardCheck"), vertical);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b), Alignment.Companion.n, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierB3);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function4);
            cj.t(iHashCode3, gapComposerH, function5, gapComposerH, function6);
            Modifier modifierE3 = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(tr.e(gapComposerH, modifierC3, function7, "LVCardCheck"), AutomationTagsCart$Text.a(automationTagsCart$CardType, AutomationTagsCart$Text.TextType.TITLE));
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextOverflow.f10989a.getClass();
            int i4 = TextOverflow.f10991c;
            TextKt.c(str, modifierE3, j2, 0L, null, 0L, null, null, 0L, i4, false, 1, 0, null, textStyle, gapComposerH, (i3 >> 3) & 14, 24960, 110584);
            gapComposer = gapComposerH;
            if (str2 != null) {
                str4 = "LVCardCheck";
                TextKt.c(str2, com.vuitton.android.designkit.ui.common.ModifierExtKt.e(n00.i(gapComposer, 1115110563, "LVCardCheck"), AutomationTagsCart$Text.a(automationTagsCart$CardType, AutomationTagsCart$Text.TextType.DESCRIPTION)), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, i4, false, 3, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, (i3 >> 6) & 14, 24960, 110584);
                gapComposer = gapComposer;
                z4 = false;
                gapComposer.Z(false);
            } else {
                z4 = false;
                str4 = "LVCardCheck";
                gapComposer.L(1115631022);
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
            gapComposer.Z(true);
            Modifier modifierA = com.vuitton.android.presentation.extensions.ModifierExtKt.a(new DTFunctionNameModifier(str4), "cart_artOfGiftingShoppingBagCheckbox_button", null, 6);
            boolean z6 = (i3 & 234881024) == 67108864 ? true : z4;
            Object objX2 = gapComposer.x();
            if (z6 || objX2 == composer$Companion$Empty$1) {
                function1 = function0;
                objX2 = new y2(function1, 16);
                gapComposer.q(objX2);
            } else {
                function1 = function0;
            }
            LVCheckboxKt.a(modifierA, false, z2, null, false, (Function1) objX2, gapComposer, (i3 >> 12) & 896, 26);
            gapComposer.Z(true);
            z3 = true;
        } else {
            function1 = function0;
            gapComposer = gapComposerH;
            gapComposer.D();
            z3 = z;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zh(modifierE, str, str2, str3, z3, z2, automationTagsCart$CardType, function1, i2);
        }
    }
}

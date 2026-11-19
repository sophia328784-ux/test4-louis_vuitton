package com.vuitton.android.presentation.screen.cart.components.giftmessage;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.RadioButtonDefaults;
import androidx.compose.material3.RadioButtonKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.KeyboardCapitalization;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.networkbench.agent.impl.util.r;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVMultilineTextFieldKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.foundation.model.domain.model.cart.GiftDraftUiModel;
import defpackage.cj;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
import defpackage.u8;
import defpackage.w;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class GiftMessageScreenKt {
    /* JADX WARN: Code duplicated, block: B:101:0x0537  */
    /* JADX WARN: Code duplicated, block: B:103:0x053b  */
    /* JADX WARN: Code duplicated, block: B:105:0x053f  */
    /* JADX WARN: Code duplicated, block: B:65:0x0260  */
    /* JADX WARN: Code duplicated, block: B:67:0x0269  */
    /* JADX WARN: Code duplicated, block: B:68:0x026d  */
    /* JADX WARN: Code duplicated, block: B:71:0x0360  */
    /* JADX WARN: Code duplicated, block: B:73:0x0367  */
    /* JADX WARN: Code duplicated, block: B:74:0x036b  */
    /* JADX WARN: Code duplicated, block: B:77:0x03a3  */
    /* JADX WARN: Code duplicated, block: B:78:0x03ae  */
    /* JADX WARN: Code duplicated, block: B:81:0x0402  */
    /* JADX WARN: Code duplicated, block: B:82:0x0414  */
    /* JADX WARN: Code duplicated, block: B:85:0x0460  */
    /* JADX WARN: Code duplicated, block: B:86:0x0462  */
    /* JADX WARN: Code duplicated, block: B:93:0x0471  */
    /* JADX WARN: Code duplicated, block: B:96:0x04a5  */
    /* JADX WARN: Code duplicated, block: B:98:0x04ac  */
    /* JADX WARN: Code duplicated, block: B:99:0x04b0  */
    public static final void a(Modifier modifier, GiftDraftUiModel giftDraftUiModel, Function1 function1, Function1 function2, String str, Composer composer, int i2) {
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        BiasAlignment.Vertical vertical;
        Arrangement$Start$1 arrangement$Start$1;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        boolean z;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        boolean z2;
        String strF;
        long jB;
        boolean z3;
        Object objX;
        RowMeasurePolicy rowMeasurePolicyA2;
        int iHashCode3;
        PersistentCompositionLocalMap persistentCompositionLocalMapU3;
        Modifier modifierC3;
        Modifier modifierE = modifier;
        GiftDraftUiModel giftDraftUiModel2 = giftDraftUiModel;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "GiftMessageScreen");
        }
        giftDraftUiModel2.getClass();
        int i3 = giftDraftUiModel2.f66975e;
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1485151300);
        Applier applier = gapComposerH.f7976a;
        int i4 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.y(giftDraftUiModel2) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.K(str) ? 16384 : 8192);
        if (gapComposerH.p(i4 & 1, (i4 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            boolean z4 = giftDraftUiModel2.f66972a;
            String strB = StringResources_androidKt.b(R.string.shop_gift_panel_lines_left, new Object[]{Integer.valueOf(i3)}, gapComposerH);
            Integer numValueOf = Integer.valueOf(i3);
            boolean zK = gapComposerH.K(strB) | gapComposerH.y(context);
            Object objX2 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (zK || objX2 == composer$Companion$Empty$2) {
                objX2 = new GiftMessageScreenKt$GiftMessageScreen$1$1(context, strB, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, numValueOf, (Function2) objX2);
            Modifier modifierD = ScrollKt.d(modifierE.o(SizeKt.f5052c), ScrollKt.b(gapComposerH), false, 14);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            Modifier modifierB = BackgroundKt.b(modifierD, j2, rectangleShapeKt$RectangleShape$1);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode4 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Function2 function3 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA2, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU4, function4);
            Integer numValueOf2 = Integer.valueOf(iHashCode4);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf2, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            Modifier modifierE2 = ModifierExtKt.e(AspectRatioKt.a(SizeKt.d(BackgroundKt.b(tr.e(gapComposerH, modifierC4, function7, "GiftMessageScreen"), ColorKt.c(4294374899L), rectangleShapeKt$RectangleShape$1), 1.0f), 1.7777778f, true), "cartGiftMessage_illustration_image");
            Object obj = str == null ? 2131231099 : str;
            ContentScale.f9447a.getClass();
            ImageLoaderKt.b(modifierE2, obj, ContentScale.Companion.d, null, null, 2131231099, false, null, null, null, gapComposerH, 3456, r.E);
            Modifier modifierM = PaddingKt.m(PaddingKt.k(tr.d("GiftMessageScreen", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 5);
            ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode5 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU5 = gapComposerH.U();
            Modifier modifierC5 = ComposedModifierKt.c(gapComposerH, modifierM);
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
            Updater.c(gapComposerH, columnMeasurePolicyA3, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU5, function4);
            cj.t(iHashCode5, gapComposerH, function5, gapComposerH, function6);
            Modifier modifierE3 = n00.e(gapComposerH, modifierC5, function7, "GiftMessageScreen", 1.0f);
            int i5 = i4 & 896;
            boolean z5 = i5 == 256;
            Object objX3 = gapComposerH.x();
            if (z5) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                if (objX3 == composer$Companion$Empty$1) {
                }
                Modifier modifierC6 = ModifierExtKt.c(modifierE3, false, null, null, (Function0) objX3, 31);
                vertical = Alignment.Companion.l;
                arrangement$Start$1 = Arrangement.f4918a;
                Composer$Companion$Empty$1 composer$Companion$Empty$3 = composer$Companion$Empty$1;
                rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierC6);
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
                Updater.c(gapComposerH, rowMeasurePolicyA, function3);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
                cj.t(iHashCode, gapComposerH, function5, gapComposerH, function6);
                z = !z4;
                RadioButtonKt.a(z, n00.f(gapComposerH, modifierC, function7, "GiftMessageScreen", "cartGiftMessage_message_button"), false, RadioButtonDefaults.a(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH), gapComposerH, 48);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.cart_gift_panel_print_message_option), PaddingKt.m(n00.g("GiftMessageScreen", "cartGiftMessage_message_text"), LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
                Modifier modifierE4 = ModifierExtKt.e(PaddingKt.m(o60.d(gapComposerH, true, "GiftMessageScreen", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48415c, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), "cartGiftMessage_note_textfield");
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierE4);
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
                Updater.c(gapComposerH, columnMeasurePolicyA, function3);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
                cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
                Updater.c(gapComposerH, modifierC2, function7);
                String str2 = giftDraftUiModel.f66973b;
                Modifier modifierE5 = ModifierExtKt.e(SizeKt.d(new DTFunctionNameModifier("GiftMessageScreen"), 1.0f), "cartGiftMessage_textField_text");
                String strC = StringResources_androidKt.c(gapComposerH, R.string.cart_gift_panel_gift_message_placeholder);
                z2 = giftDraftUiModel.f66974c;
                boolean z6 = !z2;
                if (z2) {
                    gapComposerH.L(-1090323768);
                    gapComposerH.Z(false);
                    strF = null;
                } else {
                    strF = cj.f(gapComposerH, -1090443769, R.string.cart_gift_panel_gift_message_empty_error, gapComposerH, false);
                }
                KeyboardCapitalization.f10804b.getClass();
                LVMultilineTextFieldKt.a(str2, function2, modifierE5, null, z, strC, z6, strF, null, KeyboardCapitalization.f10807f, null, null, gapComposerH, ((i4 >> 6) & 112) | 805306368, 3336);
                Modifier modifierE6 = ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("GiftMessageScreen"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "cartGiftMessage_linesInfo_text");
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).m;
                if (z4) {
                    gapComposerH.L(-1089697971);
                    jB = Color.b(0.6f, LVAppDesignKitTheme.c(gapComposerH).f48361b.l);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-1089795776);
                    jB = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                    gapComposerH.Z(false);
                }
                TextKt.c(strB, modifierE6, jB, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 131064);
                Modifier modifierD2 = o60.d(gapComposerH, true, "GiftMessageScreen", 1.0f);
                if (i5 == 256) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                objX = gapComposerH.x();
                if (z3 || objX == composer$Companion$Empty$3) {
                    objX = new u8(function1, 28);
                    gapComposerH.q(objX);
                }
                Modifier modifierC7 = ModifierExtKt.c(modifierD2, false, null, null, (Function0) objX, 31);
                rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 48);
                iHashCode3 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU3 = gapComposerH.U();
                modifierC3 = ComposedModifierKt.c(gapComposerH, modifierC7);
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
                Updater.c(gapComposerH, rowMeasurePolicyA2, function3);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function4);
                cj.t(iHashCode3, gapComposerH, function5, gapComposerH, function6);
                giftDraftUiModel2 = giftDraftUiModel;
                RadioButtonKt.a(giftDraftUiModel2.f66972a, n00.f(gapComposerH, modifierC3, function7, "GiftMessageScreen", "cartGiftMessage_blank_button"), false, RadioButtonDefaults.a(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH), gapComposerH, 48);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.cart_gift_panel_blank_card_option), PaddingKt.m(n00.g("GiftMessageScreen", "cartGiftMessage_blank_text"), LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
                gapComposerH = gapComposerH;
                pq0.x(gapComposerH, true, true, true);
            }
            objX3 = new u8(function1, 27);
            gapComposerH.q(objX3);
            Modifier modifierC8 = ModifierExtKt.c(modifierE3, false, null, null, (Function0) objX3, 31);
            vertical = Alignment.Companion.l;
            arrangement$Start$1 = Arrangement.f4918a;
            Composer$Companion$Empty$1 composer$Companion$Empty$4 = composer$Companion$Empty$1;
            rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 48);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierC8);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            cj.t(iHashCode, gapComposerH, function5, gapComposerH, function6);
            z = !z4;
            RadioButtonKt.a(z, n00.f(gapComposerH, modifierC, function7, "GiftMessageScreen", "cartGiftMessage_message_button"), false, RadioButtonDefaults.a(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH), gapComposerH, 48);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.cart_gift_panel_print_message_option), PaddingKt.m(n00.g("GiftMessageScreen", "cartGiftMessage_message_text"), LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
            Modifier modifierE7 = ModifierExtKt.e(PaddingKt.m(o60.d(gapComposerH, true, "GiftMessageScreen", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48415c, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), "cartGiftMessage_note_textfield");
            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            iHashCode2 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierE7);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
            Updater.c(gapComposerH, modifierC2, function7);
            String str3 = giftDraftUiModel.f66973b;
            Modifier modifierE8 = ModifierExtKt.e(SizeKt.d(new DTFunctionNameModifier("GiftMessageScreen"), 1.0f), "cartGiftMessage_textField_text");
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.cart_gift_panel_gift_message_placeholder);
            z2 = giftDraftUiModel.f66974c;
            boolean z7 = !z2;
            if (z2) {
                strF = cj.f(gapComposerH, -1090443769, R.string.cart_gift_panel_gift_message_empty_error, gapComposerH, false);
            } else {
                gapComposerH.L(-1090323768);
                gapComposerH.Z(false);
                strF = null;
            }
            KeyboardCapitalization.f10804b.getClass();
            LVMultilineTextFieldKt.a(str3, function2, modifierE8, null, z, strC2, z7, strF, null, KeyboardCapitalization.f10807f, null, null, gapComposerH, ((i4 >> 6) & 112) | 805306368, 3336);
            Modifier modifierE9 = ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("GiftMessageScreen"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "cartGiftMessage_linesInfo_text");
            TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).m;
            if (z4) {
                gapComposerH.L(-1089795776);
                jB = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1089697971);
                jB = Color.b(0.6f, LVAppDesignKitTheme.c(gapComposerH).f48361b.l);
                gapComposerH.Z(false);
            }
            TextKt.c(strB, modifierE9, jB, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle2, gapComposerH, 0, 0, 131064);
            Modifier modifierD3 = o60.d(gapComposerH, true, "GiftMessageScreen", 1.0f);
            if (i5 == 256) {
                z3 = true;
            } else {
                z3 = false;
            }
            objX = gapComposerH.x();
            if (z3) {
                objX = new u8(function1, 28);
                gapComposerH.q(objX);
            } else {
                objX = new u8(function1, 28);
                gapComposerH.q(objX);
            }
            Modifier modifierC9 = ModifierExtKt.c(modifierD3, false, null, null, (Function0) objX, 31);
            rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 48);
            iHashCode3 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU3 = gapComposerH.U();
            modifierC3 = ComposedModifierKt.c(gapComposerH, modifierC9);
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
            Updater.c(gapComposerH, rowMeasurePolicyA2, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function4);
            cj.t(iHashCode3, gapComposerH, function5, gapComposerH, function6);
            giftDraftUiModel2 = giftDraftUiModel;
            RadioButtonKt.a(giftDraftUiModel2.f66972a, n00.f(gapComposerH, modifierC3, function7, "GiftMessageScreen", "cartGiftMessage_blank_button"), false, RadioButtonDefaults.a(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH), gapComposerH, 48);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.cart_gift_panel_blank_card_option), PaddingKt.m(n00.g("GiftMessageScreen", "cartGiftMessage_blank_text"), LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            pq0.x(gapComposerH, true, true, true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w((Object) modifierE, (Object) giftDraftUiModel2, function1, function2, (Object) str, i2, 21);
        }
    }
}

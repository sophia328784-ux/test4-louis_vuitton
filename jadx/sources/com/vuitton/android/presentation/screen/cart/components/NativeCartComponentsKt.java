package com.vuitton.android.presentation.screen.cart.components;

import android.content.Context;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
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
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.AccessibilityExtKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartPriceInformationUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartPriceUiModel;
import com.vuitton.android.presentation.utils.UrlFactory;
import defpackage.be0;
import defpackage.cj;
import defpackage.ee0;
import defpackage.i1;
import defpackage.ic;
import defpackage.is;
import defpackage.jx;
import defpackage.k60;
import defpackage.lt;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import defpackage.re0;
import defpackage.rf;
import defpackage.tr;
import defpackage.vd;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeCartComponentsKt {
    public static final void a(Modifier modifier, CartItemUiModel cartItemUiModel, Function0 function0, Function1 function1, Composer composer, int i2) {
        Function0 function2;
        boolean z;
        int i3;
        Modifier modifierJ;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "NativeCartItemHeaderRow");
        }
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1598384353);
        Applier applier = gapComposerH.f7976a;
        int i4 = (i2 & 6) == 0 ? (gapComposerH.K(modifierE) ? 4 : 2) | i2 : i2;
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(cartItemUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            UrlFactory urlFactory = new UrlFactory(ContextExtKt.f((Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b)));
            String str = cartItemUiModel.g;
            if (str == null) {
                str = "";
            }
            String strC = urlFactory.c(str);
            Modifier modifierD = tr.d("NativeCartItemHeaderRow", 1.0f);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function4);
            Function2 function5 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function6 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function6);
            Function1 function7 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function7);
            Function2 function8 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function8);
            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
            Modifier modifierA = rowScopeInstance.a(modifierE, 1.0f, true);
            String strB = StringResources_androidKt.b(R.string.alt_cart_open_product_page, new Object[]{cartItemUiModel.f55149h}, gapComposerH);
            boolean zY = ((i4 & 7168) == 2048) | gapComposerH.y(cartItemUiModel);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new re0(function1, cartItemUiModel, 0);
                gapComposerH.q(objX);
            }
            Modifier modifierC2 = ModifierExtKt.c(modifierA, false, null, strB, (Function0) objX, 15);
            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e), Alignment.Companion.l, gapComposerH, 48);
            int i5 = i4;
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierC2);
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
            Updater.c(gapComposerH, rowMeasurePolicyA2, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
            cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
            Modifier modifierA2 = ClipKt.a(tr.e(gapComposerH, modifierC3, function8, "NativeCartItemHeaderRow"), LVAppDesignKitTheme.j(gapComposerH).f48411c);
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierO = SizeKt.o(modifierA2, 112.0f);
            Painter painterA = PainterResources_androidKt.a(R.drawable.background_product_default, gapComposerH, 0);
            ContentScale.f9447a.getClass();
            Modifier modifierE2 = ModifierExtKt.e(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), "cart_skuItem_image");
            strC.getClass();
            ImageLoaderKt.b(modifierE2, strC, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
            ArrayList arrayListV = ArraysKt.v(new String[]{cartItemUiModel.f55147e, cartItemUiModel.f55148f, cartItemUiModel.f55150i});
            ArrayList arrayList = new ArrayList();
            for (Object obj : arrayListV) {
                if (!StringsKt.w((String) obj)) {
                    arrayList.add(obj);
                }
            }
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.alt_actions_available);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("NativeCartItemHeaderRow");
            boolean zY2 = gapComposerH.y(cartItemUiModel) | gapComposerH.y(arrayList) | gapComposerH.K(strC2);
            Object objX2 = gapComposerH.x();
            if (zY2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new jx(cartItemUiModel, arrayList, strC2, 21);
                gapComposerH.q(objX2);
            }
            Modifier modifierA3 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(dTFunctionNameModifier, null, (Function1) objX2, 3);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierA3);
            ComposeUiNode.b0.getClass();
            Function0 function9 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function9);
            } else {
                gapComposerH.o();
            }
            Function2 function10 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function10);
            Function2 function11 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function11);
            Integer numValueOf2 = Integer.valueOf(iHashCode3);
            Function2 function12 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf2, function12);
            Function1 function13 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function13);
            Function2 function14 = ComposeUiNode.Companion.d;
            TextKt.c(cartItemUiModel.f55144a, ModifierExtKt.e(PaddingKt.k(tr.e(gapComposerH, modifierC4, function14, "NativeCartItemHeaderRow"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 1), "cart_skuItemID_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
            Modifier modifierG = n00.g("NativeCartItemHeaderRow", "cart_skuItemName_text");
            String str2 = cartItemUiModel.f55149h;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
            TextOverflow.f10989a.getClass();
            TextKt.c(str2, modifierG, 0L, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 2, 0, null, textStyle, gapComposerH, 0, 24960, 110588);
            gapComposerH = gapComposerH;
            if (arrayList.isEmpty()) {
                z = true;
                gapComposerH.L(-1028787647);
                gapComposerH.Z(false);
            } else {
                Modifier modifierE3 = ModifierExtKt.e(PaddingKt.m(n00.i(gapComposerH, -1029509358, "NativeCartItemHeaderRow"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "cart_skuItemInformation_view");
                ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48413a), horizontal, gapComposerH, 0);
                int iHashCode4 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
                Modifier modifierC5 = ComposedModifierKt.c(gapComposerH, modifierE3);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function9);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA2, function10);
                Updater.c(gapComposerH, persistentCompositionLocalMapU4, function11);
                cj.t(iHashCode4, gapComposerH, function12, gapComposerH, function13);
                Updater.c(gapComposerH, modifierC5, function14);
                gapComposerH.L(867858510);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    GapComposer gapComposer = gapComposerH;
                    TextKt.c((String) it.next(), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposer, 0, 0, 131066);
                    gapComposerH = gapComposer;
                }
                z = true;
                pq0.x(gapComposerH, false, true, false);
            }
            gapComposerH.Z(z);
            gapComposerH.Z(z);
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("NativeCartItemHeaderRow");
            Alignment.f8582a.getClass();
            Modifier modifierO2 = SizeKt.o(rowScopeInstance.b(dTFunctionNameModifier2, Alignment.Companion.f8591k), LVAppDesignKitTheme.d(gapComposerH).m);
            boolean z2 = (i5 & 896) == 256;
            Object objX3 = gapComposerH.x();
            if (z2 || objX3 == composer$Companion$Empty$1) {
                function2 = function0;
                objX3 = new ee0(function2, 3);
                gapComposerH.q(objX3);
            } else {
                function2 = function0;
            }
            Modifier modifierE4 = ModifierExtKt.e(ModifierExtKt.c(modifierO2, false, null, null, (Function0) objX3, 31), "cart_skuItemRemove_button");
            if (AccessibilityExtKt.a(gapComposerH)) {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, 1734237020, "NativeCartItemHeaderRow");
                Object objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$1) {
                    objX4 = new be0(1);
                    gapComposerH.q(objX4);
                }
                i3 = 0;
                modifierJ = SemanticsModifierKt.b(dTFunctionNameModifierI, false, (Function1) objX4);
                gapComposerH.Z(false);
            } else {
                i3 = 0;
                modifierJ = n00.j(gapComposerH, 1734347535, false, "NativeCartItemHeaderRow");
            }
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).q, gapComposerH, i3), null, modifierE4.o(modifierJ), 0L, gapComposerH, 56, 8);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
        } else {
            function2 = function0;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1((Object) modifierE, (Object) cartItemUiModel, function2, (Function) function1, i2, 26);
        }
    }

    public static final void b(CartPriceInformationUiModel cartPriceInformationUiModel, boolean z, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        CartPriceUiModel cartPriceUiModel;
        GapComposer gapComposerH = composer.h(463879888);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(cartPriceInformationUiModel) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.b(z) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Modifier modifierG = n00.g("NativeCartPrice", "cart_skuItemPrice_text");
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.p, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierG);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            String str = null;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "NativeCartPrice");
            boolean zY = ((i3 & 14) == 4) | gapComposerH.y(context);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new k60(context, cartPriceInformationUiModel, 16);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifierE, false, (Function1) objX);
            if (cartPriceInformationUiModel != null && (cartPriceUiModel = cartPriceInformationUiModel.f55153a) != null) {
                str = cartPriceUiModel.f55159b;
            }
            if (str == null) {
                str = "";
            }
            TextKt.c(str, modifierB, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
            gapComposer = gapComposerH;
            if (z) {
                gapComposer.L(1382769564);
                TextKt.c(StringResources_androidKt.c(gapComposer, R.string.global_vat_included), null, LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48427h, gapComposer, 0, 0, 131066);
                gapComposer = gapComposer;
                gapComposer.Z(false);
            } else {
                gapComposer.L(1382994748);
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ic(cartPriceInformationUiModel, z, i2);
        }
    }

    public static final void c(int i2, int i3, Composer composer, Function1 function1) {
        Function1 function2;
        int i4;
        String strF;
        String strF2;
        function1.getClass();
        GapComposer gapComposerH = composer.h(1262989322);
        Applier applier = gapComposerH.f7976a;
        int i5 = i3 | (gapComposerH.d(i2) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16);
        if (gapComposerH.p(i5 & 1, (i5 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i6 = i5 & 14;
            boolean z = i6 == 4;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$1) {
                objX = Boolean.valueOf(i2 == 2);
                gapComposerH.q(objX);
            }
            boolean zBooleanValue = ((Boolean) objX).booleanValue();
            boolean z2 = i6 == 4;
            Object objX2 = gapComposerH.x();
            if (z2 || objX2 == composer$Companion$Empty$1) {
                objX2 = Boolean.valueOf(i2 == 1);
                gapComposerH.q(objX2);
            }
            boolean zBooleanValue2 = ((Boolean) objX2).booleanValue();
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("NativeCartQuantity");
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new be0(2);
                gapComposerH.q(objX3);
            }
            Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifier, false, (Function1) objX3);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC, function7, "NativeCartQuantity");
            int i7 = i5 & 112;
            boolean z3 = (i7 == 32) | (i6 == 4);
            Object objX4 = gapComposerH.x();
            if (z3 || objX4 == composer$Companion$Empty$1) {
                objX4 = new is(i2, 6, function1);
                gapComposerH.q(objX4);
            }
            Modifier modifierE = ModifierExtKt.e(ModifierExtKt.c(dTFunctionNameModifierE, zBooleanValue, null, null, (Function0) objX4, 30), "cart_skuItemDecreaseQuantity_button");
            int i8 = LVAppDesignKitTheme.g(gapComposerH).K;
            if (zBooleanValue) {
                gapComposerH.L(949974103);
                strF = StringResources_androidKt.b(R.string.alt_cart_decrease_quantity, new Object[]{Integer.valueOf(i2 - 1)}, gapComposerH);
                gapComposerH.Z(false);
            } else {
                strF = cj.f(gapComposerH, 950079379, R.string.alt_decrease, gapComposerH, false);
            }
            d(modifierE, i8, zBooleanValue, strF, gapComposerH, 0);
            Modifier modifierA = BorderKt.a(SizeKt.o(PaddingKt.k(new DTFunctionNameModifier("NativeCartQuantity"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.d(gapComposerH).q), LVAppDesignKitTheme.d(gapComposerH).f48385c, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, LVAppDesignKitTheme.j(gapComposerH).f48410b);
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
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
            Updater.c(gapComposerH, modifierC2, function7);
            String strB = StringResources_androidKt.b(R.string.alt_cart_quantity, new Object[]{Integer.valueOf(i2)}, gapComposerH);
            String strValueOf = String.valueOf(i2);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).m;
            Modifier modifierE2 = ModifierExtKt.e(PaddingKt.i(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("NativeCartQuantity"), Alignment.Companion.f8587f), LVAppDesignKitTheme.l(gapComposerH).f48414b), "cart_skuItemQuantity_textfield");
            boolean zK = gapComposerH.K(strB);
            Object objX5 = gapComposerH.x();
            if (zK || objX5 == composer$Companion$Empty$1) {
                objX5 = new lt(strB, 24);
                gapComposerH.q(objX5);
            }
            TextKt.c(strValueOf, SemanticsModifierKt.b(modifierE2, false, (Function1) objX5), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 131068);
            gapComposerH = gapComposerH;
            DTFunctionNameModifier dTFunctionNameModifierF = o60.f(gapComposerH, true, "NativeCartQuantity");
            boolean z4 = (i6 == 4) | (i7 == 32);
            Object objX6 = gapComposerH.x();
            if (z4 || objX6 == composer$Companion$Empty$1) {
                i4 = i2;
                function2 = function1;
                objX6 = new is(i4, 7, function2);
                gapComposerH.q(objX6);
            } else {
                i4 = i2;
                function2 = function1;
            }
            Modifier modifierE3 = ModifierExtKt.e(ModifierExtKt.c(dTFunctionNameModifierF, zBooleanValue2, null, null, (Function0) objX6, 30), "cart_skuItemIncreaseQuantity_button");
            int i9 = LVAppDesignKitTheme.g(gapComposerH).J;
            if (zBooleanValue2) {
                gapComposerH.L(951635703);
                strF2 = StringResources_androidKt.b(R.string.alt_cart_increase_quantity, new Object[]{Integer.valueOf(i4 + 1)}, gapComposerH);
                gapComposerH.Z(false);
            } else {
                strF2 = cj.f(gapComposerH, 951740979, R.string.alt_increase, gapComposerH, false);
            }
            d(modifierE3, i9, zBooleanValue2, strF2, gapComposerH, 0);
            gapComposerH.Z(true);
        } else {
            function2 = function1;
            i4 = i2;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rf(i4, i3, function2);
        }
    }

    public static final void d(Modifier modifier, int i2, boolean z, String str, Composer composer, int i3) {
        String str2;
        long j2;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "NativeCartQuantityIcon");
        }
        Modifier modifier2 = modifier;
        GapComposer gapComposerH = composer.h(-1198139090);
        int i4 = (gapComposerH.K(modifier2) ? 4 : 2) | i3 | (gapComposerH.d(i2) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.K(str) ? 2048 : 1024);
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierO = SizeKt.o(modifier2, 18.0f);
            Painter painterA = PainterResources_androidKt.a(i2, gapComposerH, (i4 >> 3) & 14);
            if (z) {
                gapComposerH.L(1711879503);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1711953872);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                gapComposerH.Z(false);
            }
            str2 = str;
            IconKt.a(painterA, str2, modifierO, j2, gapComposerH, 8 | ((i4 >> 6) & 112), 0);
        } else {
            str2 = str;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new vd(modifier2, i2, z, str2, i3);
        }
    }
}

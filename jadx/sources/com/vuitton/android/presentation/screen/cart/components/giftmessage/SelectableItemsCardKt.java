package com.vuitton.android.presentation.screen.cart.components.giftmessage;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.IconButtonKt;
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
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.networkbench.agent.impl.util.r;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import defpackage.cj;
import defpackage.is;
import defpackage.n00;
import defpackage.o60;
import defpackage.sw;
import defpackage.tr;
import defpackage.yt0;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SelectableItemsCardKt {
    public static final void a(Modifier modifier, String str, List list, Function1 function1, Composer composer, int i2, int i3) {
        int i4;
        String str2;
        Object obj;
        Modifier modifier2;
        Function1 function2;
        Modifier dTFunctionNameModifier = modifier;
        Object obj2 = function1;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "SelectableItemsCard");
        }
        str.getClass();
        list.getClass();
        obj2.getClass();
        GapComposer gapComposerH = composer.h(1537627485);
        Applier applier = gapComposerH.f7976a;
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            str2 = str;
            i4 |= gapComposerH.K(str2) ? 32 : 16;
        } else {
            str2 = str;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(list) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(obj2) ? 2048 : 1024;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            if (i5 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("SelectableItemsCard");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Modifier modifierE = ModifierExtKt.e(BackgroundKt.b(ClipKt.a(com.vuitton.android.designkit.components.ModifierExtKt.e(LVAppDesignKitTheme.d(gapComposerH).f48386e, LVAppDesignKitTheme.d(gapComposerH).m, LVAppDesignKitTheme.d(gapComposerH).f48386e, 2, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48376c, new DTFunctionNameModifier("SelectableItemsCard")), LVAppDesignKitTheme.j(gapComposerH).f48411c).o(dTFunctionNameModifier), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), "cartSelectableItems_card_view");
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function6);
            Modifier modifier3 = dTFunctionNameModifier;
            Function2 function7 = ComposeUiNode.Companion.d;
            Modifier modifierI = PaddingKt.i(n00.e(gapComposerH, modifierC, function7, "SelectableItemsCard", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, gapComposerH, 54);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierI);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
            Modifier modifierF = n00.f(gapComposerH, modifierC2, function7, "SelectableItemsCard", "cartSelectableItems_sample_text");
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextOverflow.f10989a.getClass();
            Context context2 = context;
            boolean z = true;
            boolean z2 = false;
            int i6 = i4;
            TextKt.c(str2, modifierF, j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposerH, (i4 >> 3) & 14, 24960, 110584);
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).I, gapComposerH, 0), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("SelectableItemsCard"), LVAppDesignKitTheme.d(gapComposerH).m), "cartSelectableItems_chevron_image"), 0L, gapComposerH, 56, 8);
            gapComposerH = gapComposerH;
            DividerKt.a(PaddingKt.k(o60.d(gapComposerH, true, "SelectableItemsCard", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("SelectableItemsCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("SelectableItemsCard");
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(spacedAlignedF, horizontal, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier2);
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
            Updater.c(gapComposerH, columnMeasurePolicyA2, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function4);
            cj.t(iHashCode3, gapComposerH, function5, gapComposerH, function6);
            Updater.c(gapComposerH, modifierC3, function7);
            gapComposerH.L(-1843733906);
            Iterator it = list.iterator();
            int i7 = 0;
            while (it.hasNext()) {
                Object next = it.next();
                int i8 = i7 + 1;
                if (i7 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                CardItemUiModel cardItemUiModel = (CardItemUiModel) next;
                Modifier modifierD = tr.d("SelectableItemsCard", 1.0f);
                Object objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = new yt0(22);
                    gapComposerH.q(objX);
                }
                Modifier modifierM = PaddingKt.m(SemanticsModifierKt.b(modifierD, z, (Function1) objX), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
                Alignment.f8582a.getClass();
                BiasAlignment.Vertical vertical = Alignment.Companion.l;
                Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c), vertical, gapComposerH, 48);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                int iHashCode4 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
                Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierM);
                ComposeUiNode.b0.getClass();
                Function0 function8 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function8);
                } else {
                    gapComposerH.o();
                }
                Function2 function9 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, rowMeasurePolicyA2, function9);
                Function2 function10 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU4, function10);
                Integer numValueOf2 = Integer.valueOf(iHashCode4);
                Function2 function11 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf2, function11);
                Function1 function12 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function12);
                Function2 function13 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC4, function13);
                Modifier modifierE2 = ModifierExtKt.e(ClipKt.a(SizeKt.o(new DTFunctionNameModifier("SelectableItemsCard"), LVAppDesignKitTheme.d(gapComposerH).t), LVAppDesignKitTheme.j(gapComposerH).f48410b), "cartSelectableItems_item_image");
                Painter painterA = PainterResources_androidKt.a(R.drawable.background_product_default, gapComposerH, 0);
                ContentScale.f9447a.getClass();
                Modifier modifierA = PainterModifierKt.a(modifierE2, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
                Object obj3 = cardItemUiModel.f55070c;
                StringResourceUiModel stringResourceUiModel = cardItemUiModel.f55069b;
                GapComposer gapComposer = gapComposerH;
                int i9 = i7;
                Iterator it2 = it;
                int i10 = i6;
                ImageLoaderKt.b(modifierA, obj3, ContentScale.Companion.f9449b, null, null, 2131231098, false, null, null, null, gapComposer, 3456, r.E);
                Modifier modifierB = cj.b("SelectableItemsCard", RowScopeInstance.f5040a, 1.0f, true);
                ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposer).f48414b), Alignment.Companion.n, gapComposer, 0);
                int iHashCode5 = Long.hashCode(gapComposer.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU5 = gapComposer.U();
                Modifier modifierC5 = ComposedModifierKt.c(gapComposer, modifierB);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function8);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, columnMeasurePolicyA3, function9);
                Updater.c(gapComposer, persistentCompositionLocalMapU5, function10);
                cj.t(iHashCode5, gapComposer, function11, gapComposer, function12);
                Modifier modifierF2 = n00.f(gapComposer, modifierC5, function13, "SelectableItemsCard", "cartSelectableItems_name_text");
                Context context3 = context2;
                String strA = StringResourceUiModelKt.a(cardItemUiModel.f55068a, context3);
                TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposer).l;
                long j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k;
                TextOverflow.f10989a.getClass();
                int i11 = TextOverflow.f10991c;
                TextKt.c(strA, modifierF2, j3, 0L, null, 0L, null, null, 0L, i11, false, 1, 0, null, textStyle2, gapComposer, 0, 24960, 110584);
                GapComposer gapComposer2 = gapComposer;
                if (stringResourceUiModel != null) {
                    TextKt.c(StringResourceUiModelKt.a(stringResourceUiModel, context3), n00.d(gapComposer2, -829368863, "SelectableItemsCard", "cartSelectableItems_description_text"), LVAppDesignKitTheme.c(gapComposer2).f48361b.l, 0L, null, 0L, null, null, 0L, i11, false, 1, 0, null, LVAppDesignKitTheme.n(gapComposer2).l, gapComposer2, 0, 24960, 110584);
                    gapComposer2 = gapComposer2;
                    gapComposer2.Z(false);
                } else {
                    gapComposer2.L(-828853922);
                    gapComposer2.Z(false);
                }
                Modifier modifierE3 = ModifierExtKt.e(SizeKt.o(o60.f(gapComposer2, true, "SelectableItemsCard"), LVAppDesignKitTheme.d(gapComposer2).q), "cartSelectableItems_remove_button");
                i6 = i10;
                boolean zD = gapComposer2.d(i9) | ((i6 & 7168) == 2048);
                Object objX2 = gapComposer2.x();
                if (zD || objX2 == composer$Companion$Empty$1) {
                    function2 = function1;
                    objX2 = new is(i9, 8, function2);
                    gapComposer2.q(objX2);
                } else {
                    function2 = function1;
                }
                ComposableSingletons$SelectableItemsCardKt.f55071a.getClass();
                GapComposer gapComposer3 = gapComposer2;
                IconButtonKt.a((Function0) objX2, modifierE3, false, null, null, ComposableSingletons$SelectableItemsCardKt.f55072b, gapComposer3, 1572864, 60);
                gapComposerH = gapComposer3;
                gapComposerH.Z(true);
                it = it2;
                context2 = context3;
                z = true;
                obj2 = function2;
                i7 = i8;
                z2 = false;
            }
            boolean z3 = z;
            obj = obj2;
            gapComposerH.Z(z2);
            gapComposerH.Z(z3);
            cj.x(new DTFunctionNameModifier("SelectableItemsCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e, gapComposerH, z3);
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            modifier2 = modifier3;
        } else {
            obj = obj2;
            gapComposerH.D();
            modifier2 = dTFunctionNameModifier;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new sw(modifier2, str, list, obj, i2, i3, 6);
        }
    }
}

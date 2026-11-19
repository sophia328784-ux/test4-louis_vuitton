package com.vuitton.android.presentation.screen.pdp.vto.beauty.components;

import android.content.Context;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.DividerKt;
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
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVCheckboxKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVDisclaimerKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyAddToCartUiModel;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.UrlFactory;
import defpackage.cj;
import defpackage.g2;
import defpackage.i4;
import defpackage.l0;
import defpackage.ma;
import defpackage.n0;
import defpackage.n00;
import defpackage.nd;
import defpackage.o60;
import defpackage.od;
import defpackage.tr;
import defpackage.u;
import defpackage.z;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BeautyAddToCartBottomSheetContentKt {
    public static final void a(Modifier modifier, BeautyAddToCartUiModel beautyAddToCartUiModel, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        GapComposer gapComposer2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "BeautyAddToCartItem");
        }
        GapComposer gapComposerH = composer.h(32342084);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(beautyAddToCartUiModel) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.f8591k, gapComposerH, 0);
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
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            f(0, gapComposerH, beautyAddToCartUiModel.f62127c);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("BeautyAddToCartItem");
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            Modifier modifierB = RowScopeInstance.f5040a.b(dTFunctionNameModifier, vertical);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.g(LVAppDesignKitTheme.l(gapComposerH).f48415c, vertical), Alignment.Companion.n, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function5);
            TextKt.c(beautyAddToCartUiModel.f62126b, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131066);
            if (beautyAddToCartUiModel.d != null) {
                gapComposerH.L(1108256142);
                gapComposer2 = gapComposerH;
                TextKt.c(beautyAddToCartUiModel.d, null, LVAppDesignKitTheme.c(gapComposer2).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer2).f48427h, gapComposer2, 0, 0, 131066);
                gapComposer2.Z(false);
            } else {
                gapComposerH.L(1108464152);
                gapComposerH.Z(false);
                gapComposer2 = gapComposerH;
            }
            TextKt.c(beautyAddToCartUiModel.f62128e, null, LVAppDesignKitTheme.c(gapComposer2).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer2).f48427h, gapComposer2, 0, 0, 131066);
            gapComposer = gapComposer2;
            gapComposer.Z(true);
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(modifierE, beautyAddToCartUiModel, i2, 4);
        }
    }

    public static final void b(List list, Function1 function1, Function2 function2, Composer composer, int i2) {
        list.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(360526193);
        int i3 = i2 | (gapComposerH.y(list) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                List list2 = list;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add(new SkuIdUiModel(((BeautyAddToCartUiModel) it.next()).f62125a));
                }
                int iG = MapsKt.g(CollectionsKt.t(arrayList, 10));
                LinkedHashMap linkedHashMap = new LinkedHashMap(iG >= 16 ? iG : 16);
                for (Object obj : arrayList) {
                    ((SkuIdUiModel) obj).getClass();
                    linkedHashMap.put(obj, Boolean.TRUE);
                }
                Pair[] pairArr = (Pair[]) MapsKt.m(linkedHashMap).toArray(new Pair[0]);
                Pair[] pairArr2 = (Pair[]) Arrays.copyOf(pairArr, pairArr.length);
                SnapshotStateMap snapshotStateMap = new SnapshotStateMap();
                snapshotStateMap.putAll(MapsKt.q(pairArr2));
                gapComposerH.q(snapshotStateMap);
                objX = snapshotStateMap;
            }
            SnapshotStateMap snapshotStateMap2 = (SnapshotStateMap) objX;
            String str = "BeautyMultipleAddToCartBottomSheetContent";
            Modifier modifierI = PaddingKt.i(new DTFunctionNameModifier("BeautyMultipleAddToCartBottomSheetContent"), LVAppDesignKitTheme.l(gapComposerH).f48417f);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
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
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            gapComposerH.L(-301960399);
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                BeautyAddToCartUiModel beautyAddToCartUiModel = (BeautyAddToCartUiModel) it2.next();
                Modifier modifierD = tr.d(str, 1.0f);
                boolean zC = Intrinsics.c(snapshotStateMap2.get(new SkuIdUiModel(beautyAddToCartUiModel.f62125a)), Boolean.TRUE);
                boolean zK = ((i3 & 896) == 256) | gapComposerH.K(beautyAddToCartUiModel);
                Object objX2 = gapComposerH.x();
                if (zK || objX2 == composer$Companion$Empty$1) {
                    objX2 = new n0(function2, beautyAddToCartUiModel, snapshotStateMap2, 7);
                    gapComposerH.q(objX2);
                }
                GapComposer gapComposer = gapComposerH;
                e(modifierD, beautyAddToCartUiModel, zC, (Function1) objX2, gapComposer, 6);
                gapComposerH = gapComposer;
                str = str;
            }
            Modifier modifierD2 = o60.d(gapComposerH, false, str, 1.0f);
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48446a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.product_detail_add_to_card);
            boolean zContains = snapshotStateMap2.f8495e.contains(Boolean.TRUE);
            boolean z = (i3 & 112) == 32;
            Object objX3 = gapComposerH.x();
            if (z || objX3 == composer$Companion$Empty$1) {
                objX3 = new l0(function1, snapshotStateMap2, 20);
                gapComposerH.q(objX3);
            }
            LVButtonKt.b(6, 376, gapComposerH, modifierD2, configurationButton, null, null, strC, (Function0) objX3, false, zContains, false);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u(list, function1, function2, i2, 10);
        }
    }

    public static final void c(List list, boolean z, Function1 function1, Function1 function2, Function0 function0, Composer composer, int i2) {
        int i3;
        String str;
        float f2;
        int i4;
        list.getClass();
        function1.getClass();
        function2.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1174322991);
        int i5 = 256;
        Function1 function3 = function2;
        Function0 function4 = function0;
        int i6 = i2 | (gapComposerH.y(list) ? 4 : 2) | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function3) ? 2048 : 1024) | (gapComposerH.y(function4) ? 16384 : 8192);
        boolean z2 = false;
        if (gapComposerH.p(i6 & 1, (i6 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String str2 = "BeautyNotifyAddToCartBottomSheetContent";
            Modifier modifierI = PaddingKt.i(new DTFunctionNameModifier("BeautyNotifyAddToCartBottomSheetContent"), LVAppDesignKitTheme.l(gapComposerH).f48417f);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
            ComposeUiNode.b0.getClass();
            Function0 function5 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function5);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            gapComposerH.L(2107540052);
            int i7 = 0;
            for (Object obj : list) {
                int i8 = i7 + 1;
                if (i7 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                BeautyAddToCartUiModel beautyAddToCartUiModel = (BeautyAddToCartUiModel) obj;
                boolean z3 = (beautyAddToCartUiModel.g && z) ? true : z2;
                boolean z4 = beautyAddToCartUiModel.f62129f;
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (z4) {
                    Modifier modifierC2 = o60.c(gapComposerH, -1576630786, str2, 1.0f);
                    boolean zK = ((i6 & 896) == i5 ? true : z2) | gapComposerH.K(beautyAddToCartUiModel);
                    Object objX = gapComposerH.x();
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = new l0(function1, beautyAddToCartUiModel, 21);
                        gapComposerH.q(objX);
                    }
                    d(modifierC2, beautyAddToCartUiModel, (Function0) objX, gapComposerH, 6);
                    gapComposerH.Z(z2);
                    i3 = i6;
                    f2 = 1.0f;
                    str = str2;
                    z2 = z2;
                    i4 = 1;
                } else {
                    Modifier modifierC3 = o60.c(gapComposerH, -1576391528, str2, 1.0f);
                    String strC = StringResources_androidKt.c(gapComposerH, z3 ? R.string.back_in_stock_cta_notify_me : R.string.product_detail_call_for_availability);
                    i3 = i6;
                    boolean zB = ((i3 & 57344) == 16384 ? true : z2) | gapComposerH.b(z3) | ((i6 & 7168) == 2048 ? true : z2) | gapComposerH.K(beautyAddToCartUiModel);
                    Object objX2 = gapComposerH.x();
                    if (zB || objX2 == composer$Companion$Empty$1) {
                        nd ndVar = new nd(z3, function3, beautyAddToCartUiModel, function4, 0);
                        gapComposerH.q(ndVar);
                        objX2 = ndVar;
                    }
                    str = str2;
                    f2 = 1.0f;
                    i4 = 1;
                    g(modifierC3, beautyAddToCartUiModel, strC, (Function0) objX2, gapComposerH, 6);
                    gapComposerH.Z(z2);
                }
                if (i7 != list.size() - i4) {
                    DividerKt.a(o60.c(gapComposerH, -1575633578, str, f2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 6, 2);
                    gapComposerH.Z(z2);
                } else {
                    gapComposerH.L(-1575446183);
                    gapComposerH.Z(z2);
                }
                function3 = function2;
                function4 = function0;
                z2 = z2;
                str2 = str;
                i7 = i8;
                i6 = i3;
                i5 = 256;
            }
            gapComposerH.Z(z2);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new od(list, z, function1, function2, function0, i2, 0);
        }
    }

    public static final void d(Modifier modifier, BeautyAddToCartUiModel beautyAddToCartUiModel, Function0 function0, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "BeautyProductAddToCart");
        }
        Modifier modifier2 = modifierE;
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1725656634);
        int i3 = i2 | (gapComposerH.K(beautyAddToCartUiModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier2);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            a(n00.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "BeautyProductAddToCart", 1.0f), beautyAddToCartUiModel, gapComposerH, (i3 & 112) | 6);
            LVButtonKt.b(6 | ((i3 << 21) & 1879048192), 504, gapComposerH, SizeKt.d(new DTFunctionNameModifier("BeautyProductAddToCart"), 1.0f), LVAppDesignKitTheme.b(gapComposerH).f48446a, null, null, StringResources_androidKt.c(gapComposerH, R.string.product_detail_add_to_card), function0, false, false, false);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u(i2, 11, modifier2, beautyAddToCartUiModel, function0);
        }
    }

    public static final void e(Modifier modifier, BeautyAddToCartUiModel beautyAddToCartUiModel, boolean z, Function1 function1, Composer composer, int i2) {
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "BeautyProductCheck");
        }
        Modifier modifier2 = modifier;
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1024101443);
        int i3 = i2 | (gapComposerH.K(beautyAddToCartUiModel) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier2);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
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
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            a(cj.b("BeautyProductCheck", RowScopeInstance.f5040a, 1.0f, true), beautyAddToCartUiModel, gapComposerH, i3 & 112);
            LVCheckboxKt.a(null, false, z, null, false, function1, gapComposerH, (i3 & 896) | ((i3 << 6) & ImageMetadata.JPEG_GPS_COORDINATES), 27);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i4(modifier2, beautyAddToCartUiModel, z, function1, i2, 5);
        }
    }

    public static final void f(int i2, Composer composer, String str) {
        GapComposer gapComposerH = composer.h(-1926261880);
        int i3 = (gapComposerH.K(str) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            new UrlFactory(ContextExtKt.f((Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b)));
            String strD = UrlFactory.d(str, 112, ImageConfiguration.Background.Transparent.f65853a);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("BeautyProductImage");
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierA = ClipKt.a(SizeKt.o(dTFunctionNameModifier, 112.0f), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            Painter painterA = PainterResources_androidKt.a(R.drawable.background_product_floor_1_1, gapComposerH, 0);
            ContentScale.f9447a.getClass();
            Modifier modifierA2 = PainterModifierKt.a(modifierA, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
            strD.getClass();
            ImageLoaderKt.b(modifierA2, strD, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ma(str, i2, 1);
        }
    }

    public static final void g(Modifier modifier, BeautyAddToCartUiModel beautyAddToCartUiModel, String str, Function0 function0, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "BeautyProductUnavailable");
        }
        str.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-284535505);
        int i3 = i2 | (gapComposerH.K(beautyAddToCartUiModel) ? 32 : 16) | (gapComposerH.K(str) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            a(n00.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "BeautyProductUnavailable", 1.0f), beautyAddToCartUiModel, gapComposerH, (i3 & 112) | 6);
            LVDisclaimerKt.a(SizeKt.d(new DTFunctionNameModifier("BeautyProductUnavailable"), 1.0f), StringResources_androidKt.c(gapComposerH, R.string.multiple_add_to_cart_out_of_stock_disclaimer), null, 0L, null, null, gapComposerH, 6, 60);
            LVButtonKt.b(6 | (i3 & 896) | ((i3 << 18) & 1879048192), 504, gapComposerH, tr.d("BeautyProductUnavailable", 1.0f), LVAppDesignKitTheme.b(gapComposerH).f48449e, null, null, str, function0, false, false, false);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z(modifierE, (Object) beautyAddToCartUiModel, (Object) str, function0, i2, 10);
        }
    }
}

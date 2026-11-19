package com.vuitton.android.presentation.screen.pdp.bottomsheet;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVTabsKt;
import com.vuitton.android.presentation.screen.pdp.components.variations.GridVariationKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.VariationUiModel;
import defpackage.a;
import defpackage.e31;
import defpackage.k50;
import defpackage.n00;
import defpackage.q1;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "selectedTab", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class VariationBottomSheetKt {
    public static final void a(Modifier modifier, int i2, String str, List list, boolean z, boolean z2, Function0 function0, Function1 function1, Composer composer, int i3) {
        GapComposer gapComposer;
        Modifier modifier2;
        boolean z3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "VariationsBottomSheet-icvEI7I");
        }
        str.getClass();
        list.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1925616066);
        Applier applier = gapComposerH.f7976a;
        int i4 = i3 | 6;
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.d(i2) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(str) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i4 |= gapComposerH.y(list) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i4 |= gapComposerH.b(z) ? 16384 : 8192;
        }
        if ((196608 & i3) == 0) {
            i4 |= gapComposerH.b(z2) ? 131072 : 65536;
        }
        if ((1572864 & i3) == 0) {
            i4 |= gapComposerH.y(function0) ? 1048576 : 524288;
        }
        if ((12582912 & i3) == 0) {
            i4 |= gapComposerH.y(function1) ? 8388608 : 4194304;
        }
        if (gapComposerH.p(i4 & 1, (4793491 & i4) != 4793490)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("VariationsBottomSheet-icvEI7I");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = WindowInsetsPadding_androidKt.b(SizeKt.c(dTFunctionNameModifier, 0.9f));
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotIntStateKt.a(0);
                gapComposerH.q(objX);
            }
            MutableIntState mutableIntState = (MutableIntState) objX;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : list) {
                String str2 = ((VariationUiModel) obj).f61770f;
                Object obj2 = linkedHashMap.get(str2);
                if (obj2 == null) {
                    ArrayList arrayList = new ArrayList();
                    linkedHashMap.put(str2, arrayList);
                    obj2 = arrayList;
                }
                ((List) obj2).add(obj);
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                if (((String) entry.getKey()) != null) {
                    linkedHashMap2.put(entry.getKey(), entry.getValue());
                }
            }
            LinkedHashMap linkedHashMap3 = new LinkedHashMap(MapsKt.g(linkedHashMap2.size()));
            for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
                Object key = entry2.getKey();
                key.getClass();
                linkedHashMap3.put((String) key, entry2.getValue());
            }
            LinkedHashMap linkedHashMap4 = new LinkedHashMap(linkedHashMap3);
            LinkedHashMap linkedHashMapK = MapsKt.k(MapsKt.f(new Pair(StringResources_androidKt.c(gapComposerH, R.string.all), list)), linkedHashMap4);
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("VariationsBottomSheet-icvEI7I");
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier2);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
            if (linkedHashMap4.size() > 1) {
                gapComposerH.L(1422751421);
                int iF = mutableIntState.f();
                List listY0 = CollectionsKt.y0(linkedHashMapK.keySet());
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new q1(mutableIntState, 17);
                    gapComposerH.q(objX2);
                }
                gapComposer = gapComposerH;
                z3 = false;
                LVTabsKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, iF, listY0, null, (Function1) objX2, gapComposer, 1572864, 39);
                gapComposer.Z(false);
            } else {
                gapComposer = gapComposerH;
                z3 = false;
                gapComposer.L(1422965724);
                gapComposer.Z(false);
            }
            int i5 = i4 >> 12;
            Modifier modifierB2 = ModifierExtKt.b(PaddingKt.k(new DTFunctionNameModifier("VariationsBottomSheet-icvEI7I"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), z2, new e31(11), gapComposer, i5 & 112);
            GridVariationKt.b(modifierB2, linkedHashMap4.size() > 1 ? (List) CollectionsKt.y0(linkedHashMapK.values()).get(mutableIntState.f()) : list, str, z2, function1, z, i2, gapComposer, (i4 & 896) | ((i4 >> 6) & 7168) | ((i4 >> 9) & 57344) | ((i4 << 3) & ImageMetadata.JPEG_GPS_COORDINATES) | ((i4 << 15) & 3670016));
            gapComposer.Z(true);
            if (z2) {
                Modifier modifierM = PaddingKt.m(PaddingKt.k(SizeKt.d(BoxScopeInstance.f4938a.g(n00.i(gapComposer, -1219340449, "VariationsBottomSheet-icvEI7I"), Alignment.Companion.f8589i), 1.0f), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48418h, 7);
                ComposableSingletons$VariationBottomSheetKt.f61340a.getClass();
                LVPushCardKt.a(modifierM, false, function0, ComposableSingletons$VariationBottomSheetKt.f61341b, gapComposer, (i5 & 896) | 3072, 2);
                gapComposer.Z(z3);
            } else {
                gapComposer.L(-1218595674);
                gapComposer.Z(z3);
            }
            gapComposer.Z(true);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new k50(modifier2, i2, str, list, z, z2, function0, function1, i3);
        }
    }
}

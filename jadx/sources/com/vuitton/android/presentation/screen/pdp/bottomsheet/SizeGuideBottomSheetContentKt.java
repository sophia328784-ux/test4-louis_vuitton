package com.vuitton.android.presentation.screen.pdp.bottomsheet;

import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.platform.NestedScrollInteropConnectionKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.pdp.components.PdpReferencesRowKt;
import com.vuitton.android.presentation.screen.pdp.components.sizeguide.CountrySelectorKt;
import com.vuitton.android.presentation.screen.pdp.components.sizeguide.HowToMeasureKt;
import com.vuitton.android.presentation.screen.pdp.components.sizeguide.SizeUnitSwitchKt;
import com.vuitton.android.presentation.screen.pdp.components.sizeguide.TableSizeKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SizeGuideUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionCode;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import defpackage.cj;
import defpackage.fg;
import defpackage.mw0;
import defpackage.n00;
import defpackage.rp0;
import defpackage.tr;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004¨\u0006\u0006²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0004\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"", "selectedCountry", "", "switchUnityChecked", "switchUnityAvailable", "countrySelectionEnabled", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SizeGuideBottomSheetContentKt {
    /* JADX WARN: Code duplicated, block: B:156:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:158:0x02d1  */
    /* JADX WARN: Code duplicated, block: B:159:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:162:0x03b8  */
    /* JADX WARN: Code duplicated, block: B:164:0x03bf  */
    /* JADX WARN: Code duplicated, block: B:165:0x03c3  */
    /* JADX WARN: Code duplicated, block: B:168:0x0400  */
    /* JADX WARN: Code duplicated, block: B:169:0x0410  */
    /* JADX WARN: Code duplicated, block: B:172:0x0475  */
    /* JADX WARN: Code duplicated, block: B:174:0x04ab  */
    /* JADX WARN: Code duplicated, block: B:175:0x04ad  */
    /* JADX WARN: Code duplicated, block: B:178:0x04b4  */
    /* JADX WARN: Code duplicated, block: B:181:0x04b9  */
    /* JADX WARN: Code duplicated, block: B:182:0x04be  */
    /* JADX WARN: Code duplicated, block: B:185:0x04de  */
    /* JADX WARN: Code duplicated, block: B:188:0x04fa  */
    /* JADX WARN: Code duplicated, block: B:190:0x0523  */
    /* JADX WARN: Code duplicated, block: B:191:0x0525  */
    /* JADX WARN: Code duplicated, block: B:194:0x052c  */
    /* JADX WARN: Code duplicated, block: B:195:0x052e  */
    /* JADX WARN: Code duplicated, block: B:201:0x053d  */
    /* JADX WARN: Code duplicated, block: B:203:0x0556  */
    /* JADX WARN: Code duplicated, block: B:206:0x0582  */
    /* JADX WARN: Code duplicated, block: B:208:0x05b8  */
    /* JADX WARN: Code duplicated, block: B:210:0x05bd  */
    /* JADX WARN: Code duplicated, block: B:71:0x00f0  */
    public static final void a(String str, String str2, String str3, SizeGuideUiModel sizeGuideUiModel, InAppDispatch inAppDispatch, ProductBackground productBackground, Function0 function0, Function2 function2, Composer composer, int i2) {
        int i3;
        Function0 function1;
        boolean z;
        Collection collection;
        Collection collection2;
        Collection collection3;
        Arrangement$Top$1 arrangement$Top$1;
        BiasAlignment.Horizontal horizontal;
        Map map;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function3;
        Function2 function4;
        Function2 function5;
        Function2 function6;
        Function1 function7;
        Function2 function8;
        String str4;
        int i4;
        ColumnMeasurePolicy columnMeasurePolicyA2;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        String str5;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        List list;
        boolean z2;
        boolean z3;
        boolean z4;
        Object objX;
        boolean z5;
        boolean z6;
        Object objX2;
        Collection collection4;
        String str6;
        String str7 = str3;
        Function2 function9 = function2;
        str.getClass();
        str2.getClass();
        str7.getClass();
        sizeGuideUiModel.getClass();
        List list2 = sizeGuideUiModel.f61751e;
        List list3 = sizeGuideUiModel.f61752f;
        Map map2 = sizeGuideUiModel.f61754i;
        Map map3 = sizeGuideUiModel.f61755j;
        inAppDispatch.getClass();
        function0.getClass();
        function9.getClass();
        GapComposer gapComposerH = composer.h(263646385);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(str) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str7) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(sizeGuideUiModel) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(inAppDispatch) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.d(productBackground == null ? -1 : productBackground.ordinal()) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i3 |= gapComposerH.y(function9) ? 8388608 : 4194304;
        }
        if (gapComposerH.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue()) {
                z = false;
            } else {
                List list4 = InAppDispatchExtKt.f67487a;
                String str8 = inAppDispatch.f67483j;
                RegionCode.f67513b.getClass();
                if (Intrinsics.c(str8, RegionCode.E) || InAppDispatchExtKt.j(inAppDispatch)) {
                    z = true;
                } else {
                    z = false;
                }
            }
            Object objX3 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (objX3 == composer$Companion$Empty$2) {
                if (!z || list3.isEmpty()) {
                    str6 = !list2.isEmpty() ? (String) list2.get(0) : "";
                } else {
                    str6 = (String) list3.get(0);
                }
                objX3 = SnapshotStateKt.g(str6);
                gapComposerH.q(objX3);
            }
            MutableState mutableState = (MutableState) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$2) {
                objX4 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX4);
            }
            MutableState mutableState2 = (MutableState) objX4;
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$2) {
                objX5 = SnapshotStateKt.g(Boolean.TRUE);
                gapComposerH.q(objX5);
            }
            MutableState mutableState3 = (MutableState) objX5;
            List list5 = ((Boolean) mutableState2.getF10755b()).booleanValue() ? list3 : list2;
            boolean z7 = z;
            MutableState mutableStateL = SnapshotStateKt.l(Boolean.valueOf(list5.size() > 1), gapComposerH);
            if (!((Boolean) mutableState2.getF10755b()).booleanValue() || (collection4 = (Collection) map3.get((String) mutableState.getF10755b())) == null || collection4.isEmpty()) {
                if (!((Boolean) mutableState2.getF10755b()).booleanValue() && (collection3 = (Collection) map2.get((String) mutableState.getF10755b())) != null && !collection3.isEmpty()) {
                    Collection collection5 = (Collection) map3.get((String) mutableState.getF10755b());
                    b(mutableState3, !(collection5 == null || collection5.isEmpty()));
                } else if (map3.isEmpty() || (collection = (Collection) map3.get((String) mutableState.getF10755b())) == null || collection.isEmpty()) {
                    mutableState2.setValue(Boolean.FALSE);
                    b(mutableState3, false);
                } else if (map2.isEmpty() || (collection2 = (Collection) map2.get((String) mutableState.getF10755b())) == null || collection2.isEmpty()) {
                    mutableState2.setValue(Boolean.TRUE);
                    b(mutableState3, false);
                } else if (z7) {
                    mutableState2.setValue(Boolean.TRUE);
                    b(mutableState3, true);
                } else {
                    mutableState2.setValue(Boolean.FALSE);
                    b(mutableState3, true);
                }
                Modifier modifierE = ModifierExtKt.e(WindowInsetsPadding_androidKt.b(SizeKt.c(PaddingKt.k(new DTFunctionNameModifier("SizeGuideBottomSheetContent-MXasgaU"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 0.9f)), "pdp_sizeGuide_view");
                arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                horizontal = Alignment.Companion.n;
                map = map2;
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
                ComposeUiNode.b0.getClass();
                function3 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function3);
                } else {
                    gapComposerH.o();
                }
                function4 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, columnMeasurePolicyA, function4);
                function5 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
                Integer numValueOf = Integer.valueOf(iHashCode);
                function6 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function6);
                function7 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function7);
                function8 = ComposeUiNode.Companion.d;
                str4 = "<p>|</p>|&nbsp;";
                i4 = i3;
                TextKt.c(new Regex("<p>|</p>|&nbsp;").replace(sizeGuideUiModel.f61749b, ""), ModifierExtKt.e(PaddingKt.m(tr.e(gapComposerH, modifierC, function8, "SizeGuideBottomSheetContent-MXasgaU"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 7), "pdp_sizeGuideTitle_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131064);
                Modifier modifierA = NestedScrollModifierKt.a(ScrollKt.d(new DTFunctionNameModifier("SizeGuideBottomSheetContent-MXasgaU"), ScrollKt.b(gapComposerH), false, 14), NestedScrollInteropConnectionKt.e(gapComposerH), null);
                columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function3);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA2, function4);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
                cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
                str7 = str3;
                gapComposerH = gapComposerH;
                PdpReferencesRowKt.b(n00.e(gapComposerH, modifierC2, function8, "SizeGuideBottomSheetContent-MXasgaU", 1.0f), str2, productBackground, str7, str, gapComposerH, (i4 & 112) | 6 | ((i4 >> 9) & 896) | ((i4 << 12) & 57344));
                str5 = sizeGuideUiModel.m;
                if (str5 == null) {
                    gapComposerH.L(235884322);
                    gapComposerH.Z(false);
                } else {
                    SpacerKt.a(gapComposerH, SizeKt.f(n00.i(gapComposerH, 235884323, "SizeGuideBottomSheetContent-MXasgaU"), LVAppDesignKitTheme.l(gapComposerH).f48417f));
                    TextKt.c(str5, SizeKt.d(new DTFunctionNameModifier("SizeGuideBottomSheetContent-MXasgaU"), 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 48, 0, 131064);
                    gapComposerH.Z(false);
                }
                if (((Boolean) mutableStateL.getF10755b()).booleanValue()) {
                    SpacerKt.a(gapComposerH, SizeKt.f(n00.i(gapComposerH, 236370341, r13), LVAppDesignKitTheme.l(gapComposerH).f48417f));
                    Modifier modifierD = SizeKt.d(new DTFunctionNameModifier("SizeGuideBottomSheetContent-MXasgaU"), 1.0f);
                    String str9 = (String) mutableState.getF10755b();
                    List list6 = list5;
                    Integer numValueOf2 = Integer.valueOf(list6.indexOf(str9));
                    String str10 = sizeGuideUiModel.d;
                    if ((3670016 & i4) == 1048576) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    objX2 = gapComposerH.x();
                    if (z6) {
                        composer$Companion$Empty$1 = composer$Companion$Empty$2;
                    } else {
                        composer$Companion$Empty$1 = composer$Companion$Empty$2;
                        if (objX2 == composer$Companion$Empty$1) {
                            function1 = function0;
                        }
                        CountrySelectorKt.a(modifierD, list6, numValueOf2, str10, (Function1) objX2, gapComposerH, 6);
                        gapComposerH.Z(false);
                    }
                    function1 = function0;
                    objX2 = new rp0(function1, mutableState, 20);
                    gapComposerH.q(objX2);
                    CountrySelectorKt.a(modifierD, list6, numValueOf2, str10, (Function1) objX2, gapComposerH, 6);
                    gapComposerH.Z(false);
                } else {
                    str4 = "<p>|</p>|&nbsp;";
                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                    function1 = function0;
                    gapComposerH.L(236977693);
                    gapComposerH.Z(false);
                }
                if (((Boolean) mutableState3.getF10755b()).booleanValue()) {
                    SpacerKt.a(gapComposerH, SizeKt.f(n00.i(gapComposerH, 237032160, r13), LVAppDesignKitTheme.l(gapComposerH).f48417f));
                    String str11 = sizeGuideUiModel.g;
                    String str12 = sizeGuideUiModel.f61753h;
                    boolean zBooleanValue = ((Boolean) r40.getF10755b()).booleanValue();
                    if ((29360128 & i4) == 8388608) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if ((i4 & 896) == 256) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    z4 = z2 | z3;
                    objX = gapComposerH.x();
                    if (!z4 || objX == composer$Companion$Empty$1) {
                        function9 = function2;
                        z5 = false;
                        objX = new mw0(function9, str7, mutableState2, 0);
                        gapComposerH.q(objX);
                    } else {
                        function9 = function2;
                        z5 = false;
                    }
                    SizeUnitSwitchKt.a(str11, str12, zBooleanValue, (Function0) objX, gapComposerH, 0);
                    gapComposerH.Z(z5);
                } else {
                    function9 = function2;
                    gapComposerH.L(237521309);
                    gapComposerH.Z(false);
                }
                SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier(r13), LVAppDesignKitTheme.l(gapComposerH).g));
                list = (List) map.get((String) mutableState.getF10755b());
                if (list == null) {
                    list = EmptyList.f71768b;
                }
                TableSizeKt.a(0, gapComposerH, list);
                SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier(r13), LVAppDesignKitTheme.l(gapComposerH).f48417f));
                HowToMeasureKt.a(null, new Regex(str4).replace(sizeGuideUiModel.f61756k, ""), sizeGuideUiModel.l, gapComposerH, 0);
                gapComposerH.Z(true);
                gapComposerH.Z(true);
            } else {
                Collection collection6 = (Collection) map2.get((String) mutableState.getF10755b());
                b(mutableState3, !(collection6 == null || collection6.isEmpty()));
            }
            map2 = map3;
            Modifier modifierE2 = ModifierExtKt.e(WindowInsetsPadding_androidKt.b(SizeKt.c(PaddingKt.k(new DTFunctionNameModifier("SizeGuideBottomSheetContent-MXasgaU"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 0.9f)), "pdp_sizeGuide_view");
            arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            horizontal = Alignment.Companion.n;
            map = map2;
            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierE2);
            ComposeUiNode.b0.getClass();
            function3 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            function4 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function4);
            function5 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
            Integer numValueOf3 = Integer.valueOf(iHashCode);
            function6 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf3, function6);
            function7 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function7);
            function8 = ComposeUiNode.Companion.d;
            str4 = "<p>|</p>|&nbsp;";
            i4 = i3;
            TextKt.c(new Regex("<p>|</p>|&nbsp;").replace(sizeGuideUiModel.f61749b, ""), ModifierExtKt.e(PaddingKt.m(tr.e(gapComposerH, modifierC, function8, "SizeGuideBottomSheetContent-MXasgaU"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 7), "pdp_sizeGuideTitle_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131064);
            Modifier modifierA2 = NestedScrollModifierKt.a(ScrollKt.d(new DTFunctionNameModifier("SizeGuideBottomSheetContent-MXasgaU"), ScrollKt.b(gapComposerH), false, 14), NestedScrollInteropConnectionKt.e(gapComposerH), null);
            columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            iHashCode2 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA2);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA2, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
            cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
            str7 = str3;
            gapComposerH = gapComposerH;
            PdpReferencesRowKt.b(n00.e(gapComposerH, modifierC2, function8, "SizeGuideBottomSheetContent-MXasgaU", 1.0f), str2, productBackground, str7, str, gapComposerH, (i4 & 112) | 6 | ((i4 >> 9) & 896) | ((i4 << 12) & 57344));
            str5 = sizeGuideUiModel.m;
            if (str5 == null) {
                gapComposerH.L(235884322);
                gapComposerH.Z(false);
            } else {
                SpacerKt.a(gapComposerH, SizeKt.f(n00.i(gapComposerH, 235884323, "SizeGuideBottomSheetContent-MXasgaU"), LVAppDesignKitTheme.l(gapComposerH).f48417f));
                TextKt.c(str5, SizeKt.d(new DTFunctionNameModifier("SizeGuideBottomSheetContent-MXasgaU"), 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 48, 0, 131064);
                gapComposerH.Z(false);
            }
            if (((Boolean) mutableStateL.getF10755b()).booleanValue()) {
                SpacerKt.a(gapComposerH, SizeKt.f(n00.i(gapComposerH, 236370341, r13), LVAppDesignKitTheme.l(gapComposerH).f48417f));
                Modifier modifierD2 = SizeKt.d(new DTFunctionNameModifier("SizeGuideBottomSheetContent-MXasgaU"), 1.0f);
                String str13 = (String) mutableState.getF10755b();
                List list7 = list5;
                Integer numValueOf4 = Integer.valueOf(list7.indexOf(str13));
                String str14 = sizeGuideUiModel.d;
                if ((3670016 & i4) == 1048576) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                objX2 = gapComposerH.x();
                if (z6) {
                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                    if (objX2 == composer$Companion$Empty$1) {
                        function1 = function0;
                    }
                    CountrySelectorKt.a(modifierD2, list7, numValueOf4, str14, (Function1) objX2, gapComposerH, 6);
                    gapComposerH.Z(false);
                } else {
                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                }
                function1 = function0;
                objX2 = new rp0(function1, mutableState, 20);
                gapComposerH.q(objX2);
                CountrySelectorKt.a(modifierD2, list7, numValueOf4, str14, (Function1) objX2, gapComposerH, 6);
                gapComposerH.Z(false);
            } else {
                str4 = "<p>|</p>|&nbsp;";
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                function1 = function0;
                gapComposerH.L(236977693);
                gapComposerH.Z(false);
            }
            if (((Boolean) mutableState3.getF10755b()).booleanValue()) {
                SpacerKt.a(gapComposerH, SizeKt.f(n00.i(gapComposerH, 237032160, r13), LVAppDesignKitTheme.l(gapComposerH).f48417f));
                String str15 = sizeGuideUiModel.g;
                String str16 = sizeGuideUiModel.f61753h;
                boolean zBooleanValue2 = ((Boolean) r40.getF10755b()).booleanValue();
                if ((29360128 & i4) == 8388608) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if ((i4 & 896) == 256) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                z4 = z2 | z3;
                objX = gapComposerH.x();
                if (z4) {
                    function9 = function2;
                    z5 = false;
                    objX = new mw0(function9, str7, mutableState2, 0);
                    gapComposerH.q(objX);
                } else {
                    function9 = function2;
                    z5 = false;
                    objX = new mw0(function9, str7, mutableState2, 0);
                    gapComposerH.q(objX);
                }
                SizeUnitSwitchKt.a(str15, str16, zBooleanValue2, (Function0) objX, gapComposerH, 0);
                gapComposerH.Z(z5);
            } else {
                function9 = function2;
                gapComposerH.L(237521309);
                gapComposerH.Z(false);
            }
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier(r13), LVAppDesignKitTheme.l(gapComposerH).g));
            list = (List) map.get((String) mutableState.getF10755b());
            if (list == null) {
                list = EmptyList.f71768b;
            }
            TableSizeKt.a(0, gapComposerH, list);
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier(r13), LVAppDesignKitTheme.l(gapComposerH).f48417f));
            HowToMeasureKt.a(null, new Regex(str4).replace(sizeGuideUiModel.f61756k, ""), sizeGuideUiModel.l, gapComposerH, 0);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            function1 = function0;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new fg(str, str2, str7, sizeGuideUiModel, inAppDispatch, productBackground, function1, function9, i2);
        }
    }

    public static final void b(MutableState mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }
}

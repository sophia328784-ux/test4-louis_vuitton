package com.vuitton.android.presentation.screen.filter.quickaccess.components;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.filter.quickaccess.FiltersDropDownType;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductSortUiModel;
import defpackage.ef;
import defpackage.em;
import defpackage.k0;
import defpackage.n00;
import defpackage.py;
import defpackage.ry;
import defpackage.w0;
import defpackage.x20;
import defpackage.yr;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0003¨\u0006\u0003²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "isVisible", "isLocallySelected", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FiltersOverlayScreenKt {
    public static final void a(Modifier modifier, boolean z, Alignment.Horizontal horizontal, List list, Function1 function1, Function1 function2, Function1 function3, String str, boolean z2, Function1 function4, Function0 function0, Composer composer, int i2, int i3) {
        Function1 function5;
        String str2;
        Function1 function6;
        GapComposer gapComposer;
        boolean z3;
        Modifier modifierE = modifier;
        Function1 function7 = function1;
        Function1 function8 = function3;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AnimatedFiltersList");
        }
        Modifier modifier2 = modifierE;
        horizontal.getClass();
        list.getClass();
        function7.getClass();
        function8.getClass();
        str.getClass();
        function4.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-764827605);
        int i4 = (i2 & 6) == 0 ? (gapComposerH.K(modifier2) ? 4 : 2) | i2 : i2;
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.b(z) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(horizontal) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(list) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.y(function7) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            function5 = function2;
            i4 |= gapComposerH.y(function5) ? 131072 : 65536;
        } else {
            function5 = function2;
        }
        if ((1572864 & i2) == 0) {
            i4 |= gapComposerH.y(function8) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            str2 = str;
            i4 |= gapComposerH.K(str2) ? 8388608 : 4194304;
        } else {
            str2 = str;
        }
        if ((100663296 & i2) == 0) {
            i4 |= gapComposerH.b(z2) ? 67108864 : 33554432;
        }
        if ((805306368 & i2) == 0) {
            function6 = function4;
            i4 |= gapComposerH.y(function6) ? PKIFailureInfo.duplicateCertReq : 268435456;
        } else {
            function6 = function4;
        }
        int i5 = (i3 & 6) == 0 ? i3 | (gapComposerH.y(function0) ? 4 : 2) : i3;
        if (gapComposerH.p(i4 & 1, ((306783379 & i4) == 306783378 && (i5 & 3) == 2) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Modifier modifierD = SizeKt.d(modifier2, 1.0f);
            float f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f + LVAppDesignKitTheme.l(gapComposerH).f48414b;
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierK = PaddingKt.k(PaddingKt.k(modifierD, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 1), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, horizontal, gapComposerH, ((i4 & 896) >> 3) & 112);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
            ComposeUiNode.b0.getClass();
            int i6 = i4;
            Function0 function9 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function9);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new x20(18);
                gapComposerH.q(objX);
            }
            EnterTransition enterTransitionB = EnterExitTransitionKt.r((Function1) objX).b(EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1));
            w0 w0Var = new w0(list, horizontal, context, function6, function8, function7, function5);
            function8 = function8;
            function7 = function7;
            AnimatedVisibilityKt.c(ColumnScopeInstance.f4944a, z, modifier2, enterTransitionB, null, null, ComposableLambdaKt.b(-224006791, w0Var, gapComposerH), gapComposerH, (i6 & 112) | 1575942 | ((i6 << 6) & 896), 24);
            gapComposer = gapComposerH;
            if (z2) {
                Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(n00.i(gapComposer, 102036, "AnimatedFiltersList"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "QAF_CloseItem_button");
                boolean zY = gapComposer.y(context);
                Object objX2 = gapComposer.x();
                if (zY || objX2 == composer$Companion$Empty$1) {
                    objX2 = new ef(context, 5);
                    gapComposer.q(objX2);
                }
                QuickFilterButtonKt.a(SemanticsModifierKt.b(modifierE2, false, (Function1) objX2), LVAppDesignKitTheme.g(gapComposer).A, null, FiltersButtonState.Visible, false, function0, null, gapComposer, (458752 & (i5 << 15)) | 3072, 84);
                gapComposer.Z(false);
            } else {
                Modifier modifierM = PaddingKt.m(n00.i(gapComposer, 670700, "AnimatedFiltersList"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                gapComposer.L(-1523988888);
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (!Intrinsics.c(function8.invoke(obj), StringResources_androidKt.c(gapComposer, R.string.default_mode))) {
                        arrayList.add(obj);
                    }
                }
                gapComposer.Z(false);
                if (arrayList.isEmpty()) {
                    z3 = false;
                    break;
                }
                Iterator it = arrayList.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (((Boolean) function7.invoke(it.next())).booleanValue()) {
                            z3 = true;
                            break;
                        }
                    } else {
                        z3 = false;
                        break;
                    }
                }
                QuickAccessFiltersDropdownKt.a(modifierM, str2, "QAF_MoreFiltersName_text", true, z3, function0, gapComposer, ((i6 >> 18) & 112) | 3456 | (458752 & (i5 << 15)));
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ry(modifier2, z, horizontal, list, function7, function2, function8, str, z2, function4, function0, i2, i3);
        }
    }

    public static final void b(boolean z, List list, List list2, boolean z2, FiltersDropDownType filtersDropDownType, boolean z3, Function0 function0, Function1 function1, Function1 function2, Composer composer, int i2) {
        float f2;
        BoxScopeInstance boxScopeInstance;
        String str;
        boolean z4;
        Modifier modifierG;
        BiasAlignment.Horizontal horizontal;
        list.getClass();
        list2.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-1028064140);
        int i3 = i2 | (gapComposerH.b(z) ? 4 : 2) | (gapComposerH.y(list) ? 32 : 16) | (gapComposerH.y(list2) ? 256 : 128) | (gapComposerH.b(z2) ? 2048 : 1024) | (gapComposerH.d(filtersDropDownType == null ? -1 : filtersDropDownType.ordinal()) ? 16384 : 8192) | (gapComposerH.b(z3) ? 131072 : 65536) | (gapComposerH.y(function0) ? 1048576 : 524288) | (gapComposerH.y(function1) ? 8388608 : 4194304) | (gapComposerH.y(function2) ? 67108864 : 33554432);
        if (gapComposerH.p(i3 & 1, (38347923 & i3) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Unit unit = Unit.f71739a;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new FiltersOverlayScreenKt$FiltersOverlayScreen$1$1(mutableState, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            Modifier modifierO = new DTFunctionNameModifier("FiltersOverlayScreen").o(SizeKt.f5052c);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.u;
            if (z) {
                gapComposerH.L(353696025);
                f2 = LVAppDesignKitTheme.h(gapComposerH).f48403c;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(353786297);
                f2 = LVAppDesignKitTheme.h(gapComposerH).f48402b;
                gapComposerH.Z(false);
            }
            Modifier modifierB = WindowInsetsPadding_androidKt.b(BackgroundKt.b(modifierO, Color.b(f2, j2), RectangleShapeKt.f8913a));
            int i4 = 3670016 & i3;
            boolean z5 = i4 == 1048576;
            Object objX3 = gapComposerH.x();
            if (z5 || objX3 == composer$Companion$Empty$1) {
                objX3 = new py(function0, 2);
                gapComposerH.q(objX3);
            }
            Modifier modifierC = ModifierExtKt.c(modifierB, false, null, null, (Function0) objX3, 27);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierC);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
            FiltersDropDownType filtersDropDownType2 = FiltersDropDownType.SORT_BY;
            BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.f4938a;
            if (filtersDropDownType == filtersDropDownType2) {
                gapComposerH.L(-1216304679);
                String strC = StringResources_androidKt.c(gapComposerH, R.string.default_mode);
                List list3 = list;
                if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                    Iterator it = list3.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z4 = false;
                            break;
                        } else if (((ProductSortUiModel) it.next()).f62995c) {
                            z4 = true;
                            break;
                        }
                    }
                } else {
                    z4 = false;
                    break;
                }
                ArrayList arrayListY = CollectionsKt.Y(CollectionsKt.O(new ProductSortUiModel("", strC, !z4, true)), list3);
                if (z3) {
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("FiltersOverlayScreen");
                    Alignment.f8582a.getClass();
                    modifierG = boxScopeInstance2.g(dTFunctionNameModifier, Alignment.Companion.f8588h);
                } else {
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("FiltersOverlayScreen");
                    Alignment.f8582a.getClass();
                    modifierG = boxScopeInstance2.g(dTFunctionNameModifier2, Alignment.Companion.f8590j);
                }
                boolean zBooleanValue = ((Boolean) mutableState.getF10755b()).booleanValue();
                if (z3) {
                    Alignment.f8582a.getClass();
                    horizontal = Alignment.Companion.n;
                } else {
                    Alignment.f8582a.getClass();
                    horizontal = Alignment.Companion.p;
                }
                FiltersOverlayScreenKt$FiltersOverlayScreen$3$1 filtersOverlayScreenKt$FiltersOverlayScreen$3$1 = FiltersOverlayScreenKt$FiltersOverlayScreen$3$1.f58075b;
                FiltersOverlayScreenKt$FiltersOverlayScreen$3$2 filtersOverlayScreenKt$FiltersOverlayScreen$3$2 = FiltersOverlayScreenKt$FiltersOverlayScreen$3$2.f58076b;
                FiltersOverlayScreenKt$FiltersOverlayScreen$3$3 filtersOverlayScreenKt$FiltersOverlayScreen$3$3 = FiltersOverlayScreenKt$FiltersOverlayScreen$3$3.f58077b;
                Modifier modifier = modifierG;
                String strC2 = StringResources_androidKt.c(gapComposerH, R.string.sort_by);
                boolean z6 = (i4 == 1048576) | ((i3 & 234881024) == 67108864);
                Object objX4 = gapComposerH.x();
                if (z6 || objX4 == composer$Companion$Empty$1) {
                    objX4 = new em(function2, function0, 5);
                    gapComposerH.q(objX4);
                }
                boxScopeInstance = boxScopeInstance2;
                str = "FiltersOverlayScreen";
                a(modifier, zBooleanValue, horizontal, arrayListY, filtersOverlayScreenKt$FiltersOverlayScreen$3$1, filtersOverlayScreenKt$FiltersOverlayScreen$3$2, filtersOverlayScreenKt$FiltersOverlayScreen$3$3, strC2, z3, (Function1) objX4, function0, gapComposerH, (i3 << 9) & 234881024, (i3 >> 18) & 14);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                boxScopeInstance = boxScopeInstance2;
                str = "FiltersOverlayScreen";
                if (filtersDropDownType == FiltersDropDownType.MORES_FILTERS) {
                    Modifier modifierG2 = boxScopeInstance.g(n00.i(gapComposerH, -1214819903, str), Alignment.Companion.f8588h);
                    boolean zBooleanValue2 = ((Boolean) mutableState.getF10755b()).booleanValue();
                    BiasAlignment.Horizontal horizontal2 = Alignment.Companion.n;
                    FiltersOverlayScreenKt$FiltersOverlayScreen$3$5 filtersOverlayScreenKt$FiltersOverlayScreen$3$5 = FiltersOverlayScreenKt$FiltersOverlayScreen$3$5.f58078b;
                    FiltersOverlayScreenKt$FiltersOverlayScreen$3$6 filtersOverlayScreenKt$FiltersOverlayScreen$3$6 = FiltersOverlayScreenKt$FiltersOverlayScreen$3$6.f58079b;
                    FiltersOverlayScreenKt$FiltersOverlayScreen$3$7 filtersOverlayScreenKt$FiltersOverlayScreen$3$7 = FiltersOverlayScreenKt$FiltersOverlayScreen$3$7.f58080b;
                    String strC3 = StringResources_androidKt.c(gapComposerH, R.string.more_filters);
                    boolean z7 = (i3 & 29360128) == 8388608;
                    Object objX5 = gapComposerH.x();
                    if (z7 || objX5 == composer$Companion$Empty$1) {
                        objX5 = new k0(function1, 11);
                        gapComposerH.q(objX5);
                    }
                    a(modifierG2, zBooleanValue2, horizontal2, list2, filtersOverlayScreenKt$FiltersOverlayScreen$3$5, filtersOverlayScreenKt$FiltersOverlayScreen$3$6, filtersOverlayScreenKt$FiltersOverlayScreen$3$7, strC3, z3, (Function1) objX5, function0, gapComposerH, ((i3 << 3) & 7168) | KyberEngine.KyberPolyBytes | ((i3 << 9) & 234881024), (i3 >> 18) & 14);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-1214125100);
                    gapComposerH.Z(false);
                }
            }
            if (z2) {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, -1214097758, str);
                Alignment.f8582a.getClass();
                LVFlowerLoaderKt.a(boxScopeInstance.g(dTFunctionNameModifierI, Alignment.Companion.f8587f), null, false, gapComposerH, 0, 6);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1213988204);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new yr(z, list, list2, z2, filtersDropDownType, z3, function0, function1, function2, i2);
        }
    }
}

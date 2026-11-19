package com.vuitton.android.presentation.screen.filter.quickaccess.components;

import android.content.Context;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.selection.ToggleableKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
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
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchKt;
import com.vuitton.android.presentation.screen.filter.model.FilterType;
import com.vuitton.android.presentation.screen.filter.quickaccess.FiltersDropDownType;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.QuickAccessFiltersContainerContentKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductBooleanFilterUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterDataTypeUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersCategoryUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductSortUiModel;
import com.vuitton.android.presentation.utils.AccessibilityUtils;
import defpackage.cj;
import defpackage.n00;
import defpackage.o60;
import defpackage.s0;
import defpackage.sm0;
import defpackage.tr;
import defpackage.xq0;
import defpackage.yn0;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "shouldTrackFiltersSwipe", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class QuickAccessFiltersContainerContentKt {
    public static final void a(Modifier modifier, final boolean z, final boolean z2, final ProductFiltersCategoryUiModel productFiltersCategoryUiModel, final List list, final List list2, FiltersDropDownType filtersDropDownType, final boolean z3, final Function2 function2, final Function0 function0, final Function0 function1, final Function0 function3, final Function1 function4, Composer composer, final int i2) {
        final FiltersDropDownType filtersDropDownType2;
        GapComposer gapComposer;
        final Modifier modifier2;
        int i3;
        Function2 function5;
        Function0 function6;
        String str;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        DTFunctionNameModifier dTFunctionNameModifier;
        int i4;
        boolean z4;
        boolean z5;
        boolean z6;
        ProductBooleanFilterUiModel productBooleanFilterUiModel;
        HapticFeedback hapticFeedback;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "QuickAccessFiltersContainerContent");
        }
        list.getClass();
        list2.getClass();
        function2.getClass();
        function0.getClass();
        function1.getClass();
        function3.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(-750992505);
        Applier applier = gapComposerH.f7976a;
        int i5 = i2 | 6 | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.b(z2) ? 256 : 128) | (gapComposerH.K(productFiltersCategoryUiModel) ? 2048 : 1024) | (gapComposerH.y(list) ? 16384 : 8192) | (gapComposerH.y(list2) ? 131072 : 65536) | (gapComposerH.d(filtersDropDownType == null ? -1 : filtersDropDownType.ordinal()) ? 1048576 : 524288) | (gapComposerH.b(z3) ? 8388608 : 4194304) | (gapComposerH.y(function2) ? 67108864 : 33554432) | (gapComposerH.y(function0) ? PKIFailureInfo.duplicateCertReq : 268435456);
        Modifier modifier3 = modifierE;
        int i6 = (gapComposerH.y(function1) ? 4 : 2) | (gapComposerH.y(function3) ? 32 : 16) | (gapComposerH.y(function4) ? 256 : 128);
        if (gapComposerH.p(i5 & 1, ((i5 & 306783379) == 306783378 && (i6 & 147) == 146) ? false : true)) {
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("QuickAccessFiltersContainerContent");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final HapticFeedback hapticFeedback2 = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Boolean boolValueOf = Boolean.valueOf(z);
            boolean z7 = ((i5 & 112) == 32) | ((i6 & 112) == 32);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (z7 || objX == composer$Companion$Empty$2) {
                objX = new QuickAccessFiltersContainerContentKt$QuickAccessFiltersContainerContent$1$1(z, function3, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, boolValueOf, (Function2) objX);
            Modifier modifierB = ModifierExtKt.b(PaddingKt.m(new DTFunctionNameModifier("QuickAccessFiltersContainerContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7), !z2, new xq0(1, (byte) 0), gapComposerH, 0);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function7 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function7);
            } else {
                gapComposerH.o();
            }
            Function2 function8 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function8);
            Function2 function9 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function9);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function10 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function10);
            Function1 function11 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function11);
            Function2 function12 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function12);
            ProductFilterDataTypeUiModel productFilterDataTypeUiModel = productFiltersCategoryUiModel != null ? productFiltersCategoryUiModel.d : null;
            if (productFilterDataTypeUiModel instanceof ProductFilterDataTypeUiModel.Simple) {
                gapComposerH.L(-1260081504);
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$2) {
                    objX2 = SnapshotStateKt.g(Boolean.TRUE);
                    gapComposerH.q(objX2);
                }
                MutableState mutableState = (MutableState) objX2;
                String str2 = productFiltersCategoryUiModel.f62970a;
                Object objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$2) {
                    objX3 = new QuickAccessFiltersContainerContentKt$QuickAccessFiltersContainerContent$3$1$1(mutableState, null);
                    gapComposerH.q(objX3);
                }
                EffectsKt.e(gapComposerH, str2, (Function2) objX3);
                String str3 = productFiltersCategoryUiModel.f62970a;
                ProductFilterDataTypeUiModel.Simple simple = (ProductFilterDataTypeUiModel.Simple) productFiltersCategoryUiModel.d;
                boolean zY = ((i5 & 29360128) == 8388608) | gapComposerH.y(hapticFeedback2) | ((i5 & 234881024) == 67108864) | gapComposerH.y(context);
                Object objX4 = gapComposerH.x();
                if (zY || objX4 == composer$Companion$Empty$2) {
                    objX4 = new s0(z3, hapticFeedback2, function2, context, 12);
                    gapComposerH.q(objX4);
                }
                Function1 function13 = (Function1) objX4;
                boolean zBooleanValue = ((Boolean) mutableState.getF10755b()).booleanValue();
                i3 = i6;
                boolean z8 = ((i5 & 7168) == 2048) | ((i6 & 896) == 256);
                Object objX5 = gapComposerH.x();
                if (z8 || objX5 == composer$Companion$Empty$2) {
                    objX5 = new sm0(function4, productFiltersCategoryUiModel, mutableState, 7);
                    gapComposerH.q(objX5);
                }
                function6 = function7;
                function5 = function8;
                SimpleFilterLineKt.a(str3, simple, z3, function13, zBooleanValue, (Function0) objX5, gapComposerH, (i5 >> 15) & 896);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
            } else {
                i3 = i6;
                function12 = function12;
                gapComposer = gapComposerH;
                function5 = function8;
                function6 = function7;
                if (productFilterDataTypeUiModel instanceof ProductFilterDataTypeUiModel.Range) {
                    gapComposer.L(-1258851827);
                    gapComposer.Z(false);
                } else {
                    gapComposer.L(-1258776125);
                    gapComposer.Z(false);
                }
            }
            Modifier modifierM = PaddingKt.m(PaddingKt.k(tr.d("QuickAccessFiltersContainerContent", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48414b, 1), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, vertical, gapComposer, 54);
            final Context context2 = context;
            int iHashCode2 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposer, modifierM);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function6);
            } else {
                gapComposer.o();
            }
            Updater.c(gapComposer, rowMeasurePolicyA, function5);
            Updater.c(gapComposer, persistentCompositionLocalMapU2, function9);
            cj.t(iHashCode2, gapComposer, function10, gapComposer, function11);
            Function2 function14 = function12;
            Updater.c(gapComposer, modifierC2, function14);
            Modifier modifierM2 = PaddingKt.m(SizeKt.d(dTFunctionNameModifier2, 0.5f), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, gapComposer, 48);
            int iHashCode3 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposer.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposer, modifierM2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function6);
            } else {
                gapComposer.o();
            }
            Updater.c(gapComposer, rowMeasurePolicyA2, function5);
            Updater.c(gapComposer, persistentCompositionLocalMapU3, function9);
            cj.t(iHashCode3, gapComposer, function10, gapComposer, function11);
            Updater.c(gapComposer, modifierC3, function14);
            if (list.isEmpty()) {
                filtersDropDownType2 = filtersDropDownType;
                str = "QuickAccessFiltersContainerContent";
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                dTFunctionNameModifier = dTFunctionNameModifier2;
                i4 = ImageMetadata.JPEG_GPS_COORDINATES;
                gapComposer.L(-1974770339);
                gapComposer.Z(false);
            } else {
                gapComposer.L(-1977611055);
                if (list.size() == 1) {
                    gapComposer.L(-1977586317);
                    final ProductBooleanFilterUiModel productBooleanFilterUiModel2 = (ProductBooleanFilterUiModel) CollectionsKt.B(list);
                    Modifier modifierG = n00.g("QuickAccessFiltersContainerContent", "QAF_BooleanFilterItem_view");
                    Object objX6 = gapComposer.x();
                    if (objX6 == composer$Companion$Empty$2) {
                        i4 = ImageMetadata.JPEG_GPS_COORDINATES;
                        objX6 = new yn0(17);
                        gapComposer.q(objX6);
                    } else {
                        i4 = ImageMetadata.JPEG_GPS_COORDINATES;
                    }
                    Modifier modifierB2 = SemanticsModifierKt.b(modifierG, true, (Function1) objX6);
                    boolean z9 = productBooleanFilterUiModel2.d;
                    boolean z10 = productBooleanFilterUiModel2.f62957e;
                    Role.f10289b.getClass();
                    Role role = new Role(Role.d);
                    int i7 = i5 & 29360128;
                    int i8 = i5 & 234881024;
                    boolean zY2 = (i7 == 8388608) | gapComposer.y(hapticFeedback2) | (i8 == 67108864) | gapComposer.y(context2) | gapComposer.y(productBooleanFilterUiModel2);
                    Object objX7 = gapComposer.x();
                    if (zY2 || objX7 == composer$Companion$Empty$2) {
                        final int i9 = 0;
                        objX7 = new Function1() { // from class: yq0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                int i10 = i9;
                                Context context3 = context2;
                                Function2 function15 = function2;
                                HapticFeedback hapticFeedback3 = hapticFeedback2;
                                boolean z11 = z3;
                                ProductBooleanFilterUiModel productBooleanFilterUiModel3 = productBooleanFilterUiModel2;
                                ((Boolean) obj).getClass();
                                switch (i10) {
                                    case 0:
                                        QuickAccessFiltersContainerContentKt.b(z11, hapticFeedback3, function15, context3, productBooleanFilterUiModel3);
                                        break;
                                    default:
                                        QuickAccessFiltersContainerContentKt.b(z11, hapticFeedback3, function15, context3, productBooleanFilterUiModel3);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        productBooleanFilterUiModel = productBooleanFilterUiModel2;
                        hapticFeedback = hapticFeedback2;
                        context2 = context2;
                        gapComposer.q(objX7);
                    } else {
                        productBooleanFilterUiModel = productBooleanFilterUiModel2;
                        hapticFeedback = hapticFeedback2;
                    }
                    Modifier modifierB3 = ToggleableKt.b(modifierB2, z9, z10, role, (Function1) objX7);
                    RowMeasurePolicy rowMeasurePolicyA3 = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposer, 0);
                    final ProductBooleanFilterUiModel productBooleanFilterUiModel3 = productBooleanFilterUiModel;
                    int iHashCode4 = Long.hashCode(gapComposer.T);
                    PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposer.U();
                    Modifier modifierC4 = ComposedModifierKt.c(gapComposer, modifierB3);
                    if (applier == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposer.B();
                    if (gapComposer.S) {
                        gapComposer.C(function6);
                    } else {
                        gapComposer.o();
                    }
                    Updater.c(gapComposer, rowMeasurePolicyA3, function5);
                    Updater.c(gapComposer, persistentCompositionLocalMapU4, function9);
                    cj.t(iHashCode4, gapComposer, function10, gapComposer, function11);
                    Updater.c(gapComposer, modifierC4, function14);
                    gapComposer.A(-1516550779, Boolean.valueOf(productBooleanFilterUiModel3.d));
                    dTFunctionNameModifier = dTFunctionNameModifier2;
                    Modifier modifierA = com.vuitton.android.presentation.extensions.ModifierExtKt.a(dTFunctionNameModifier, "QAF_BooleanFilterSwitchButtonItem_button", null, 6);
                    boolean z11 = productBooleanFilterUiModel3.f62957e;
                    boolean z12 = productBooleanFilterUiModel3.d;
                    LVColorScheme lVColorScheme = LVColorScheme.INVERT;
                    boolean zY3 = (i7 == 8388608) | gapComposer.y(hapticFeedback) | (i8 == 67108864);
                    final Context context3 = context2;
                    boolean zY4 = zY3 | gapComposer.y(context3) | gapComposer.y(productBooleanFilterUiModel3);
                    Object objX8 = gapComposer.x();
                    if (zY4) {
                        composer$Companion$Empty$1 = composer$Companion$Empty$2;
                    } else {
                        composer$Companion$Empty$1 = composer$Companion$Empty$2;
                        if (objX8 == composer$Companion$Empty$1) {
                        }
                        GapComposer gapComposer2 = gapComposer;
                        LVSwitchKt.a(modifierA, z11, z12, lVColorScheme, (Function1) objX8, gapComposer2, 3072, 0);
                        str = "QuickAccessFiltersContainerContent";
                        TextKt.c(productBooleanFilterUiModel3.f62955b, com.vuitton.android.designkit.ui.common.ModifierExtKt.e(RowScopeInstance.f5040a.b(PaddingKt.m(o60.f(gapComposer2, false, str), LVAppDesignKitTheme.l(gapComposer2).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), vertical), "QAF_BooleanFilterNameItem_text"), LVAppDesignKitTheme.c(gapComposer2).f48361b.n, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer2).m, gapComposer2, 0, 0, 131064);
                        gapComposer = gapComposer2;
                        gapComposer.Z(true);
                        z6 = false;
                        gapComposer.Z(false);
                        filtersDropDownType2 = filtersDropDownType;
                    }
                    final int i10 = 1;
                    final HapticFeedback hapticFeedback3 = hapticFeedback;
                    objX8 = new Function1() { // from class: yq0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            int i11 = i10;
                            Context context4 = context3;
                            Function2 function15 = function2;
                            HapticFeedback hapticFeedback4 = hapticFeedback3;
                            boolean z13 = z3;
                            ProductBooleanFilterUiModel productBooleanFilterUiModel4 = productBooleanFilterUiModel3;
                            ((Boolean) obj).getClass();
                            switch (i11) {
                                case 0:
                                    QuickAccessFiltersContainerContentKt.b(z13, hapticFeedback4, function15, context4, productBooleanFilterUiModel4);
                                    break;
                                default:
                                    QuickAccessFiltersContainerContentKt.b(z13, hapticFeedback4, function15, context4, productBooleanFilterUiModel4);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposer.q(objX8);
                    GapComposer gapComposer3 = gapComposer;
                    LVSwitchKt.a(modifierA, z11, z12, lVColorScheme, (Function1) objX8, gapComposer3, 3072, 0);
                    str = "QuickAccessFiltersContainerContent";
                    TextKt.c(productBooleanFilterUiModel3.f62955b, com.vuitton.android.designkit.ui.common.ModifierExtKt.e(RowScopeInstance.f5040a.b(PaddingKt.m(o60.f(gapComposer3, false, str), LVAppDesignKitTheme.l(gapComposer3).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), vertical), "QAF_BooleanFilterNameItem_text"), LVAppDesignKitTheme.c(gapComposer3).f48361b.n, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer3).m, gapComposer3, 0, 0, 131064);
                    gapComposer = gapComposer3;
                    gapComposer.Z(true);
                    z6 = false;
                    gapComposer.Z(false);
                    filtersDropDownType2 = filtersDropDownType;
                } else {
                    str = "QuickAccessFiltersContainerContent";
                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                    dTFunctionNameModifier = dTFunctionNameModifier2;
                    i4 = ImageMetadata.JPEG_GPS_COORDINATES;
                    Modifier modifierX = SizeKt.x(PaddingKt.m(n00.d(gapComposer, -1975612454, str, "QAF_MoreFilters_button"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), null, 3);
                    Object objX9 = gapComposer.x();
                    if (objX9 == composer$Companion$Empty$1) {
                        objX9 = new yn0(18);
                        gapComposer.q(objX9);
                    }
                    Modifier modifierB4 = SemanticsModifierKt.b(modifierX, false, (Function1) objX9);
                    String strC = StringResources_androidKt.c(gapComposer, R.string.more_filters);
                    filtersDropDownType2 = filtersDropDownType;
                    boolean z13 = filtersDropDownType2 == FiltersDropDownType.MORES_FILTERS;
                    List list3 = list;
                    if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                        Iterator it = list3.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z5 = false;
                                break;
                            } else if (((ProductBooleanFilterUiModel) it.next()).d) {
                                z5 = true;
                                break;
                            }
                        }
                    } else {
                        z5 = false;
                        break;
                    }
                    GapComposer gapComposer4 = gapComposer;
                    QuickAccessFiltersDropdownKt.a(modifierB4, strC, "QAF_MoreFiltersName_text", z13, z5, function1, gapComposer4, ((i3 << 15) & ImageMetadata.JPEG_GPS_COORDINATES) | KyberEngine.KyberPolyBytes);
                    gapComposer = gapComposer4;
                    z6 = false;
                    gapComposer.Z(false);
                }
                gapComposer.Z(z6);
            }
            gapComposer.Z(true);
            if (list2.isEmpty()) {
                gapComposer.L(-478409919);
                gapComposer.Z(false);
            } else {
                Modifier modifierX2 = SizeKt.x(PaddingKt.m(n00.d(gapComposer, -479103234, str, "QAF_SortByFiltersItem_button"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), null, 3);
                Object objX10 = gapComposer.x();
                if (objX10 == composer$Companion$Empty$1) {
                    objX10 = new yn0(19);
                    gapComposer.q(objX10);
                }
                Modifier modifierB5 = SemanticsModifierKt.b(modifierX2, false, (Function1) objX10);
                String strC2 = StringResources_androidKt.c(gapComposer, R.string.sort_by);
                boolean z14 = filtersDropDownType2 == FiltersDropDownType.SORT_BY;
                List list4 = list2;
                if (!(list4 instanceof Collection) || !list4.isEmpty()) {
                    Iterator it2 = list4.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            z4 = false;
                            break;
                        } else if (((ProductSortUiModel) it2.next()).f62995c) {
                            z4 = true;
                            break;
                        }
                    }
                } else {
                    z4 = false;
                    break;
                }
                GapComposer gapComposer5 = gapComposer;
                QuickAccessFiltersDropdownKt.a(modifierB5, strC2, "QAF_SortByFiltersItem_text", z14, z4, function0, gapComposer5, ((i5 >> 12) & i4) | KyberEngine.KyberPolyBytes);
                gapComposer = gapComposer5;
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
            gapComposer.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            modifier2 = dTFunctionNameModifier;
        } else {
            filtersDropDownType2 = filtersDropDownType;
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = modifier3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(z, z2, productFiltersCategoryUiModel, list, list2, filtersDropDownType2, z3, function2, function0, function1, function3, function4, i2) { // from class: zq0

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ boolean f81691c;
                public final /* synthetic */ boolean d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ ProductFiltersCategoryUiModel f81692e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ List f81693f;
                public final /* synthetic */ List g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ FiltersDropDownType f81694h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ boolean f81695i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Function2 f81696j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ Function0 f81697k;
                public final /* synthetic */ Function0 l;
                public final /* synthetic */ Function0 m;
                public final /* synthetic */ Function1 n;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    QuickAccessFiltersContainerContentKt.a(this.f81690b, this.f81691c, this.d, this.f81692e, this.f81693f, this.g, this.f81694h, this.f81695i, this.f81696j, this.f81697k, this.l, this.m, this.n, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(boolean z, HapticFeedback hapticFeedback, Function2 function2, Context context, ProductBooleanFilterUiModel productBooleanFilterUiModel) {
        if (z) {
            HapticFeedbackType.f9193b.getClass();
            int i2 = PlatformHapticFeedbackType.f9196a;
            hapticFeedback.a(0);
            String str = productBooleanFilterUiModel.f62956c;
            if (str == null) {
                str = "";
            }
            function2.invoke(str, FilterType.BOOLEAN);
            String string = context.getString(R.string.alt_loading_status);
            string.getClass();
            AccessibilityUtils.a(context, string);
        }
    }
}

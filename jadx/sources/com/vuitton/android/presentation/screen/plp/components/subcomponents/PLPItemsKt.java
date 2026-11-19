package com.vuitton.android.presentation.screen.plp.components.subcomponents;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.IntrinsicKt;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Dp;
import androidx.paging.compose.LazyPagingItems;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.plp.components.composables.brandcontent.PLPCuratedTextComposableKt;
import com.vuitton.android.presentation.screen.plp.components.composables.brandcontent.PLPHalfEditoComposableKt;
import com.vuitton.android.presentation.screen.plp.components.composables.brandcontent.PLPProductFullscreenComposableKt;
import com.vuitton.android.presentation.screen.plp.components.composables.brandcontent.PLPProductHighlightComposableKt;
import com.vuitton.android.presentation.screen.plp.components.composables.brandcontent.PLPProductSliderComposableKt;
import com.vuitton.android.presentation.screen.plp.models.plp.PlpSectionUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import defpackage.d21;
import defpackage.fj0;
import defpackage.o60;
import defpackage.qe;
import defpackage.tr;
import defpackage.v40;
import defpackage.z2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPItemsKt {
    public static final void a(Modifier modifier, Composer composer, int i2) {
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "BottomLoader");
        }
        GapComposer gapComposerH = composer.h(-1172883620);
        int i3 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierF = SizeKt.f(modifier, 50.0f);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierF);
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
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            ProgressViewKt.a(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("BottomLoader"), Alignment.Companion.f8587f), 0L, false, gapComposerH, 0, 6);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qe(modifier, i2, 11);
        }
    }

    public static final void b(Modifier modifier, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "Error");
        }
        GapComposer gapComposerH = composer.h(-654848598);
        int i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierK = PaddingKt.k(modifierE, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new fj0(23);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierK, true, (Function1) objX);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4921e, Alignment.Companion.o, gapComposerH, 54);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0), null, SizeKt.o(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "Error"), LVAppDesignKitTheme.d(gapComposerH).A), 0L, gapComposerH, 56, 8);
            SpacerKt.a(gapComposerH, SizeKt.o(new DTFunctionNameModifier("Error"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
            String strC = StringResources_androidKt.c(gapComposerH, R.string.error_generic);
            TextAlign.f10959b.getClass();
            TextKt.c(strC, null, 0L, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).d, gapComposerH, 0, 0, 130046);
            gapComposerH = gapComposerH;
            SpacerKt.a(gapComposerH, SizeKt.o(new DTFunctionNameModifier("Error"), LVAppDesignKitTheme.l(gapComposerH).m));
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qe(modifierE, i2, 12);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void c(GridModes gridModes, ArrayList arrayList, int i2, Function1 function1, Function1 function2, Function2 function3, final Function2 function4, Composer composer, int i3) {
        GapComposer gapComposer;
        float f2;
        int i4;
        final int i5;
        Modifier modifier;
        final int i6;
        GapComposer gapComposerH = composer.h(226612521);
        Function1 function5 = function2;
        Function2 function6 = function3;
        int i7 = i3 | (gapComposerH.K(gridModes) ? 4 : 2) | (gapComposerH.y(arrayList) ? 32 : 16) | (gapComposerH.d(i2) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function5) ? 16384 : 8192) | (gapComposerH.y(function6) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288);
        if (gapComposerH.p(i7 & 1, (599187 & i7) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (Intrinsics.c(gridModes, GridModes.Full.f55430b)) {
                gapComposerH.L(-1268684622);
                f2 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                gapComposerH.Z(false);
            } else {
                if (!Intrinsics.c(gridModes, GridModes.Reduced.f55431b)) {
                    throw d21.u(gapComposerH, -1268686812, false);
                }
                gapComposerH.L(-1268682447);
                f2 = LVAppDesignKitTheme.l(gapComposerH).f48415c;
                gapComposerH.Z(false);
            }
            Modifier modifierA = IntrinsicKt.a(tr.d("ProductLineGrid", 1.0f), IntrinsicSize.Max);
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(f2);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
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
            Object objX = gapComposerH.x();
            Object obj = Composer.Companion.f7939a;
            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
            if (objX == obj) {
                i4 = 1;
                objX = SizeKt.c(rowScopeInstance.a(new DTFunctionNameModifier("ProductLineGrid"), 1.0f, true), 1.0f);
                gapComposerH.q(objX);
            } else {
                i4 = 1;
            }
            Modifier modifier2 = (Modifier) objX;
            gapComposerH.L(1770524514);
            int i8 = 0;
            GapComposer gapComposer2 = gapComposerH;
            for (Object obj2 : arrayList) {
                int i9 = i8 + 1;
                if (i8 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                final PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj2;
                final int i10 = i8 + i2;
                if (Intrinsics.c(gridModes, GridModes.Full.f55430b)) {
                    gapComposer2.L(-151790924);
                    boolean zY = ((i7 & 3670016) == 1048576) | gapComposer2.y(plpProductUiModel) | gapComposer2.d(i10);
                    Object objX2 = gapComposer2.x();
                    if (zY || objX2 == obj) {
                        i6 = 0;
                        objX2 = new Function0() { // from class: kk0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i11 = i6;
                                int i12 = i10;
                                PlpProductUiModel plpProductUiModel2 = plpProductUiModel;
                                Function2 function7 = function4;
                                switch (i11) {
                                    case 0:
                                        function7.invoke(plpProductUiModel2, Integer.valueOf(i12));
                                        break;
                                    default:
                                        function7.invoke(plpProductUiModel2, Integer.valueOf(i12));
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX2);
                    } else {
                        i6 = 0;
                    }
                    int i11 = i7 << 6;
                    GapComposer gapComposer3 = gapComposer2;
                    modifier = modifier2;
                    boolean z = i6;
                    i5 = 1;
                    ProductCellFullKt.e(modifier, plpProductUiModel, 0, 0, (Function0) objX2, function1, function5, function6, gapComposer3, (i11 & ImageMetadata.JPEG_GPS_COORDINATES) | 6 | (i11 & 3670016) | (i11 & 29360128), 12);
                    gapComposer2 = gapComposer3;
                    gapComposer2.Z(z);
                } else {
                    i5 = 1;
                    modifier = modifier2;
                    if (!Intrinsics.c(gridModes, GridModes.Reduced.f55431b)) {
                        throw d21.u(gapComposer2, -151792102, false);
                    }
                    gapComposer2.L(-151777577);
                    boolean zY2 = ((i7 & 3670016) == 1048576) | gapComposer2.y(plpProductUiModel) | gapComposer2.d(i10);
                    Object objX3 = gapComposer2.x();
                    if (zY2 || objX3 == obj) {
                        objX3 = new Function0() { // from class: kk0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i12 = i5;
                                int i13 = i10;
                                PlpProductUiModel plpProductUiModel2 = plpProductUiModel;
                                Function2 function7 = function4;
                                switch (i12) {
                                    case 0:
                                        function7.invoke(plpProductUiModel2, Integer.valueOf(i13));
                                        break;
                                    default:
                                        function7.invoke(plpProductUiModel2, Integer.valueOf(i13));
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX3);
                    }
                    ProductCellReducedKt.a(modifier, plpProductUiModel, (Function0) objX3, function1, function2, function3, gapComposer2, (i7 & 7168) | 6 | (57344 & i7) | (i7 & ImageMetadata.JPEG_GPS_COORDINATES));
                    gapComposer2.Z(false);
                }
                function5 = function2;
                function6 = function3;
                i4 = i5;
                modifier2 = modifier;
                i8 = i9;
                rowScopeInstance = rowScopeInstance;
                gapComposer2 = gapComposer2;
            }
            RowScopeInstance rowScopeInstance2 = rowScopeInstance;
            boolean z2 = i4;
            gapComposer2.Z(false);
            int size = gridModes.f55429a - arrayList.size();
            gapComposer2.L(1770559902);
            for (int i12 = 0; i12 < size; i12++) {
                SpacerKt.a(gapComposer2, rowScopeInstance2.a(new DTFunctionNameModifier("ProductLineGrid"), 1.0f, z2));
            }
            gapComposer2.Z(false);
            gapComposer2.Z(z2);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            gapComposer = gapComposer2;
        } else {
            gapComposerH.D();
            gapComposer = gapComposerH;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z2(gridModes, arrayList, i2, function1, function2, function3, function4, i3);
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.vuitton.android.presentation.screen.plp.components.subcomponents.a] */
    public static final void d(LazyListScope lazyListScope, final GridModes gridModes, final LazyPagingItems lazyPagingItems, final Function1 function1, final Function2 function2, final Function1 function3, final Function2 function4, final Function1 function5) {
        lazyListScope.getClass();
        gridModes.getClass();
        lazyPagingItems.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        List list = lazyPagingItems.c().f18632e;
        int i2 = gridModes.f55429a;
        final ArrayList arrayList = new ArrayList();
        int i3 = 0;
        int size = 0;
        for (Object obj : list) {
            int i4 = i3 + 1;
            if (i3 < 0) {
                CollectionsKt.t0();
                throw null;
            }
            PlpSectionUiModel plpSectionUiModel = (PlpSectionUiModel) obj;
            if (plpSectionUiModel instanceof PlpSectionUiModel.Products) {
                int size2 = 0;
                while (true) {
                    List list2 = ((PlpSectionUiModel.Products) plpSectionUiModel).f62933b;
                    if (size2 < list2.size()) {
                        List listY0 = CollectionsKt.y0(RangesKt.j(size2, Math.min(size2 + i2, list2.size())));
                        arrayList.add(new GridLineComposeModel.ProductLine(i3, listY0, size));
                        size += listY0.size();
                        size2 += listY0.size();
                    }
                }
            } else {
                arrayList.add(new GridLineComposeModel.BrandContentLine(i3));
            }
            i3 = i4;
        }
        LazyListScope.j(lazyListScope, arrayList.size(), null, new Function1() { // from class: com.vuitton.android.presentation.screen.plp.components.subcomponents.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                GridLineComposeModel gridLineComposeModel = (GridLineComposeModel) arrayList.get(((Integer) obj2).intValue());
                if (gridLineComposeModel instanceof GridLineComposeModel.BrandContentLine) {
                    return ((PlpSectionUiModel) lazyPagingItems.c().get(((GridLineComposeModel.BrandContentLine) gridLineComposeModel).f62815a)) instanceof PlpSectionUiModel.ProductSlider ? "productSlider" : "brandContent";
                }
                if (gridLineComposeModel instanceof GridLineComposeModel.ProductLine) {
                    return "productLine";
                }
                v40.g();
                return null;
            }
        }, new ComposableLambdaImpl(363186738, true, new Function4() { // from class: com.vuitton.android.presentation.screen.plp.components.subcomponents.b
            @Override // kotlin.jvm.functions.Function4
            public final Object g(Object obj2, Object obj3, Object obj4, Object obj5) {
                int iIntValue = ((Integer) obj3).intValue();
                Composer composer = (Composer) obj4;
                int iIntValue2 = ((Integer) obj5).intValue();
                ((LazyItemScope) obj2).getClass();
                if ((iIntValue2 & 48) == 0) {
                    iIntValue2 |= composer.d(iIntValue) ? 32 : 16;
                }
                if (composer.p(iIntValue2 & 1, (iIntValue2 & 145) != 144)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    GridLineComposeModel gridLineComposeModel = (GridLineComposeModel) arrayList.get(iIntValue);
                    boolean z = gridLineComposeModel instanceof GridLineComposeModel.BrandContentLine;
                    LazyPagingItems lazyPagingItems2 = lazyPagingItems;
                    Function1 function6 = function1;
                    Function1 function7 = function3;
                    if (z) {
                        composer.L(673666519);
                        PlpSectionUiModel plpSectionUiModel2 = (PlpSectionUiModel) lazyPagingItems2.a(((GridLineComposeModel.BrandContentLine) gridLineComposeModel).f62815a);
                        boolean z2 = plpSectionUiModel2 instanceof PlpSectionUiModel.HalfEdito;
                        Function1 function8 = function5;
                        if (z2) {
                            composer.L(1130111793);
                            PLPHalfEditoComposableKt.b(null, (PlpSectionUiModel.HalfEdito) plpSectionUiModel2, function8, composer, 0);
                            composer.F();
                        } else if (plpSectionUiModel2 instanceof PlpSectionUiModel.ProductSlider) {
                            composer.L(1130118911);
                            PLPProductSliderComposableKt.a(null, (PlpSectionUiModel.ProductSlider) plpSectionUiModel2, function8, function6, function7, composer, 0);
                            composer.F();
                        } else if (plpSectionUiModel2 instanceof PlpSectionUiModel.ProductHighlight) {
                            composer.L(1130130530);
                            PLPProductHighlightComposableKt.a(null, (PlpSectionUiModel.ProductHighlight) plpSectionUiModel2, function8, function6, function7, composer, 0);
                            composer.F();
                        } else if (plpSectionUiModel2 instanceof PlpSectionUiModel.CuratedText) {
                            composer.L(1130141873);
                            PLPCuratedTextComposableKt.b(null, (PlpSectionUiModel.CuratedText) plpSectionUiModel2, composer, 0);
                            composer.F();
                        } else if (plpSectionUiModel2 instanceof PlpSectionUiModel.ProductFullscreen) {
                            composer.L(1130147139);
                            PLPProductFullscreenComposableKt.c(null, (PlpSectionUiModel.ProductFullscreen) plpSectionUiModel2, function8, function6, function7, composer, 0);
                            composer.F();
                        } else {
                            composer.L(1130157526);
                            composer.F();
                        }
                        composer.F();
                    } else {
                        if (!(gridLineComposeModel instanceof GridLineComposeModel.ProductLine)) {
                            throw o60.v(composer, 1130107258);
                        }
                        composer.L(675253657);
                        GridLineComposeModel.ProductLine productLine = (GridLineComposeModel.ProductLine) gridLineComposeModel;
                        Object objA = lazyPagingItems2.a(productLine.f62816a);
                        PlpSectionUiModel.Products products = objA instanceof PlpSectionUiModel.Products ? (PlpSectionUiModel.Products) objA : null;
                        if (products != null) {
                            composer.L(675367582);
                            List list3 = productLine.f62817b;
                            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list3, 10));
                            Iterator it = list3.iterator();
                            while (it.hasNext()) {
                                arrayList2.add((PlpProductUiModel) products.f62933b.get(((Number) it.next()).intValue()));
                            }
                            PLPItemsKt.c(gridModes, arrayList2, productLine.f62818c, function6, function7, function2, function4, composer, 0);
                            composer = composer;
                            composer.F();
                        } else {
                            composer.L(675876912);
                            composer.F();
                        }
                        composer.F();
                    }
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            }
        }), 2);
    }
}

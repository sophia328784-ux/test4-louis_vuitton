package com.vuitton.android.presentation.screen.storemode.filters;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.DividerKt;
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
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.NestedScrollInteropConnectionKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductBooleanFilterUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterDataTypeUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterValueUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersCategoryTypeUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersCategoryUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductListOptionUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductSortUiModel;
import com.vuitton.android.presentation.screen.storemode.filters.components.ApplyFiltersButtonKt;
import com.vuitton.android.presentation.screen.storemode.filters.components.BooleanFilterComponentKt;
import com.vuitton.android.presentation.screen.storemode.filters.components.FilterCategoryExpandableRowKt;
import com.vuitton.android.presentation.screen.storemode.filters.components.SortCategoryExpandableRowKt;
import com.vuitton.android.presentation.screen.storemode.filters.model.ProductFilterViewState;
import com.vuitton.android.presentation.screen.storemode.filters.model.ResetFilterTag;
import defpackage.c30;
import defpackage.cj;
import defpackage.jm0;
import defpackage.kj0;
import defpackage.n00;
import defpackage.pq0;
import defpackage.r;
import defpackage.rp0;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000e\n\u0002\b\u0002¨\u0006\u0002²\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "expandedIndex", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProductFilterBottomSheetContentKt {
    /* JADX WARN: Code duplicated, block: B:129:0x0211  */
    /* JADX WARN: Code duplicated, block: B:142:0x023e  */
    /* JADX WARN: Code duplicated, block: B:145:0x0247  */
    /* JADX WARN: Code duplicated, block: B:149:0x026a  */
    /* JADX WARN: Code duplicated, block: B:154:0x0290  */
    /* JADX WARN: Code duplicated, block: B:155:0x029b  */
    /* JADX WARN: Code duplicated, block: B:158:0x02f3  */
    /* JADX WARN: Code duplicated, block: B:160:0x02fa  */
    /* JADX WARN: Code duplicated, block: B:161:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:164:0x0327  */
    /* JADX WARN: Code duplicated, block: B:166:0x0350  */
    /* JADX WARN: Code duplicated, block: B:168:0x0357  */
    /* JADX WARN: Code duplicated, block: B:169:0x035b  */
    /* JADX WARN: Code duplicated, block: B:171:0x0399  */
    /* JADX WARN: Code duplicated, block: B:173:0x039f  */
    /* JADX WARN: Code duplicated, block: B:175:0x04a3  */
    /* JADX WARN: Code duplicated, block: B:177:0x04aa  */
    /* JADX WARN: Code duplicated, block: B:178:0x04ae  */
    /* JADX WARN: Code duplicated, block: B:182:0x04d5  */
    /* JADX WARN: Code duplicated, block: B:184:0x04e1  */
    /* JADX WARN: Code duplicated, block: B:185:0x04e3  */
    /* JADX WARN: Code duplicated, block: B:188:0x04ef  */
    /* JADX WARN: Code duplicated, block: B:191:0x04f4  */
    /* JADX WARN: Code duplicated, block: B:192:0x04f7  */
    /* JADX WARN: Code duplicated, block: B:197:0x0532  */
    /* JADX WARN: Code duplicated, block: B:199:0x054e  */
    /* JADX WARN: Code duplicated, block: B:200:0x055b  */
    /* JADX WARN: Code duplicated, block: B:203:0x0563  */
    /* JADX WARN: Code duplicated, block: B:204:0x0565  */
    /* JADX WARN: Code duplicated, block: B:208:0x056e  */
    /* JADX WARN: Code duplicated, block: B:210:0x05ab  */
    /* JADX WARN: Code duplicated, block: B:214:0x05cd  */
    /* JADX WARN: Code duplicated, block: B:217:0x05ed  */
    /* JADX WARN: Code duplicated, block: B:220:0x05fc  */
    /* JADX WARN: Code duplicated, block: B:221:0x05fe  */
    /* JADX WARN: Code duplicated, block: B:225:0x0607  */
    /* JADX WARN: Code duplicated, block: B:230:0x0688  */
    /* JADX WARN: Code duplicated, block: B:232:0x068f  */
    /* JADX WARN: Code duplicated, block: B:233:0x0693  */
    /* JADX WARN: Code duplicated, block: B:235:0x06d0  */
    /* JADX WARN: Code duplicated, block: B:237:0x06d4  */
    /* JADX WARN: Code duplicated, block: B:239:0x06d8  */
    /* JADX WARN: Code duplicated, block: B:258:0x0214 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r10v28 */
    /* JADX WARN: Type inference failed for: r10v29 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v3 */
    public static final void a(ProductFilterViewState productFilterViewState, Function0 function0, Function0 function1, Function2 function2, Function5 function5, Composer composer, int i2) {
        final Function5 function6;
        GapComposer gapComposer;
        List list;
        Iterable iterable;
        boolean z;
        List list2;
        ProductListOptionUiModel productListOptionUiModel;
        boolean z2;
        NestedScrollDispatcher nestedScrollDispatcher;
        Collection collectionR;
        ?? r10;
        Collection collection;
        ?? r8;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Object obj;
        MutableState mutableState;
        boolean zY;
        Object objX2;
        MutableState mutableState2;
        List list3;
        List list4;
        String strF;
        Arrangement$Top$1 arrangement$Top$1;
        BiasAlignment.Horizontal horizontal;
        ColumnMeasurePolicy columnMeasurePolicyA;
        MutableState mutableState3;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function3;
        Function2 function4;
        Function2 function7;
        Function2 function8;
        Function1 function9;
        Function2 function10;
        ColumnScopeInstance columnScopeInstance;
        int i3;
        Throwable th;
        Applier applier;
        Composer$Companion$Empty$1 composer$Companion$Empty$2;
        String str;
        boolean z3;
        boolean z4;
        GapComposer gapComposer2;
        boolean z5;
        ColumnMeasurePolicy columnMeasurePolicyA2;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        Composer$Companion$Empty$1 composer$Companion$Empty$3;
        int i4;
        MutableState mutableState4;
        GapComposer gapComposer3;
        GapComposer gapComposer4;
        float f2;
        boolean zK;
        Object objX3;
        Object obj2;
        boolean z6;
        Object objX4;
        Object objX5;
        MutableState mutableState5;
        Object obj3;
        boolean z7;
        Object obj4;
        boolean z8;
        boolean zY2;
        Object objX6;
        Composer$Companion$Empty$1 composer$Companion$Empty$4;
        GapComposer gapComposer5;
        MeasurePolicy measurePolicyD;
        int iHashCode3;
        PersistentCompositionLocalMap persistentCompositionLocalMapU3;
        Modifier modifierC3;
        Function0 function11;
        MeasurePolicy measurePolicyD2;
        int iHashCode4;
        PersistentCompositionLocalMap persistentCompositionLocalMapU4;
        Modifier modifierC4;
        boolean z9;
        Collection collection2;
        List list5;
        ProductListOptionUiModel productListOptionUiModel2;
        Iterator it;
        ResetFilterTag resetFilterTag;
        boolean z10;
        int i5;
        Object next;
        String str2;
        int i6;
        ProductFiltersUiModel productFiltersUiModel;
        List list6;
        ProductFiltersUiModel productFiltersUiModel2;
        boolean z11;
        ProductFilterViewState productFilterViewState2 = productFilterViewState;
        productFilterViewState2.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function5.getClass();
        GapComposer gapComposerH = composer.h(369262070);
        Applier applier2 = gapComposerH.f7976a;
        int i7 = i2 | (gapComposerH.y(productFilterViewState2) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function5) ? 16384 : 8192);
        if (gapComposerH.p(i7 & 1, (i7 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ProductListOptionUiModel productListOptionUiModel3 = productFilterViewState2.f65024c;
            boolean z12 = productFilterViewState2.f65022a;
            if (productListOptionUiModel3 == null || (list = productListOptionUiModel3.f62976a) == null) {
                list = EmptyList.f71768b;
            }
            if (productListOptionUiModel3 == null || (productFiltersUiModel2 = productListOptionUiModel3.f62977b) == null || (iterable = productFiltersUiModel2.f62975c) == null) {
                iterable = EmptyList.f71768b;
            }
            Iterable<ProductBooleanFilterUiModel> iterable2 = iterable;
            if (productListOptionUiModel3 == null || (productFiltersUiModel = productListOptionUiModel3.f62977b) == null || (list6 = productFiltersUiModel.f62974b) == null) {
                z = z12;
                list2 = EmptyList.f71768b;
            } else {
                ArrayList arrayList = new ArrayList();
                for (Object obj5 : list6) {
                    ProductFiltersCategoryUiModel productFiltersCategoryUiModel = (ProductFiltersCategoryUiModel) obj5;
                    boolean z13 = z12;
                    if (productFiltersCategoryUiModel.f62972c == ProductFiltersCategoryTypeUiModel.SIMPLE) {
                        ProductFilterDataTypeUiModel productFilterDataTypeUiModel = productFiltersCategoryUiModel.d;
                        if ((productFilterDataTypeUiModel instanceof ProductFilterDataTypeUiModel.Simple) && !((ProductFilterDataTypeUiModel.Simple) productFilterDataTypeUiModel).f62961a.isEmpty()) {
                            arrayList.add(obj5);
                        }
                    }
                    z12 = z13;
                }
                z = z12;
                list2 = arrayList;
            }
            List<ProductFiltersCategoryUiModel> list7 = list2;
            if (productListOptionUiModel3 != null) {
                ListBuilder listBuilderV = CollectionsKt.v();
                List list8 = productListOptionUiModel3.f62976a;
                ArrayList arrayList2 = new ArrayList();
                for (Iterator it2 = list8.iterator(); it2.hasNext(); it2 = it2) {
                    ProductSortUiModel productSortUiModel = (ProductSortUiModel) it2.next();
                    ResetFilterTag resetFilterTag2 = productSortUiModel.f62995c ? new ResetFilterTag(productSortUiModel.f62994b, productSortUiModel.f62993a, true) : null;
                    if (resetFilterTag2 != null) {
                        arrayList2.add(resetFilterTag2);
                    }
                }
                nestedScrollDispatcher = null;
                listBuilderV.addAll(arrayList2);
                ProductFiltersUiModel productFiltersUiModel3 = productListOptionUiModel3.f62977b;
                if (productFiltersUiModel3 == null || (list5 = productFiltersUiModel3.f62974b) == null) {
                    productListOptionUiModel = productListOptionUiModel3;
                    z9 = false;
                    collection2 = EmptyList.f71768b;
                } else {
                    ArrayList arrayList3 = new ArrayList();
                    Iterator it3 = list5.iterator();
                    while (it3.hasNext()) {
                        ProductFiltersCategoryUiModel productFiltersCategoryUiModel2 = (ProductFiltersCategoryUiModel) it3.next();
                        ProductFilterDataTypeUiModel productFilterDataTypeUiModel2 = productFiltersCategoryUiModel2.d;
                        if (productFilterDataTypeUiModel2 instanceof ProductFilterDataTypeUiModel.Simple) {
                            ProductFilterDataTypeUiModel.Simple simple = (ProductFilterDataTypeUiModel.Simple) productFilterDataTypeUiModel2;
                            List list9 = simple.f62961a;
                            productListOptionUiModel2 = productListOptionUiModel3;
                            boolean z14 = list9 instanceof Collection;
                            if (z14 && list9.isEmpty()) {
                                z10 = z14;
                                i5 = 0;
                            } else {
                                Iterator it4 = list9.iterator();
                                int i8 = 0;
                                while (it4.hasNext()) {
                                    boolean z15 = z14;
                                    if (((ProductFilterValueUiModel) it4.next()).f62968e && (i8 = i8 + 1) < 0) {
                                        CollectionsKt.s0();
                                        throw null;
                                    }
                                    z14 = z15;
                                }
                                z10 = z14;
                                i5 = i8;
                            }
                            it = it3;
                            if (i5 > 1) {
                                String str3 = productFiltersCategoryUiModel2.f62971b;
                                if (z10 && list9.isEmpty()) {
                                    i6 = 0;
                                } else {
                                    Iterator it5 = list9.iterator();
                                    i6 = 0;
                                    while (it5.hasNext()) {
                                        if (((ProductFilterValueUiModel) it5.next()).f62968e && (i6 = i6 + 1) < 0) {
                                            CollectionsKt.s0();
                                            throw null;
                                        }
                                    }
                                }
                                resetFilterTag = new ResetFilterTag(str3 + " (" + i6 + ")", simple.f62963c, false);
                            } else {
                                Iterator it6 = list9.iterator();
                                do {
                                    if (!it6.hasNext()) {
                                        next = null;
                                        break;
                                    }
                                    next = it6.next();
                                } while (!((ProductFilterValueUiModel) next).f62968e);
                                ProductFilterValueUiModel productFilterValueUiModel = (ProductFilterValueUiModel) next;
                                if (productFilterValueUiModel != null && (str2 = productFilterValueUiModel.d) != null) {
                                    resetFilterTag = new ResetFilterTag(productFilterValueUiModel.f62966b, str2, false);
                                }
                            }
                            if (resetFilterTag != null) {
                                arrayList3.add(resetFilterTag);
                            }
                            productListOptionUiModel3 = productListOptionUiModel2;
                            it3 = it;
                        } else {
                            productListOptionUiModel2 = productListOptionUiModel3;
                            it = it3;
                        }
                        resetFilterTag = null;
                        if (resetFilterTag != null) {
                            arrayList3.add(resetFilterTag);
                        }
                        productListOptionUiModel3 = productListOptionUiModel2;
                        it3 = it;
                    }
                    productListOptionUiModel = productListOptionUiModel3;
                    z9 = false;
                    collection2 = arrayList3;
                }
                listBuilderV.addAll(collection2);
                collectionR = CollectionsKt.r(listBuilderV);
                r10 = z9;
                z2 = z9;
                if (collectionR == null) {
                }
                collection = collectionR;
                if (z || productListOptionUiModel != null) {
                    r8 = r10;
                } else {
                    r8 = 1;
                }
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                obj = objX;
                if (objX == composer$Companion$Empty$1) {
                    MutableState mutableStateG = SnapshotStateKt.g(nestedScrollDispatcher);
                    gapComposerH.q(mutableStateG);
                    obj = mutableStateG;
                }
                mutableState = (MutableState) obj;
                Boolean boolValueOf = Boolean.valueOf(z);
                zY = gapComposerH.y(productFilterViewState2) | gapComposerH.y(list) | gapComposerH.y(list7);
                objX2 = gapComposerH.x();
                if (!zY || objX2 == composer$Companion$Empty$1) {
                    List list10 = list;
                    mutableState2 = mutableState;
                    ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1 productFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1 = new ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1(productFilterViewState2, list10, list7, mutableState2, null);
                    list3 = list10;
                    gapComposerH.q(productFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1);
                    objX2 = productFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1;
                } else {
                    list3 = list;
                    mutableState2 = mutableState;
                }
                EffectsKt.e(gapComposerH, boolValueOf, (Function2) objX2);
                list4 = list3;
                if (list4.isEmpty()) {
                    strF = cj.f(gapComposerH, 1276506921, R.string.catalogue_filters, gapComposerH, r10);
                } else {
                    strF = cj.f(gapComposerH, 1276429700, R.string.filters_and_sort_title, gapComposerH, r10);
                }
                Modifier modifierA = NestedScrollModifierKt.a(SizeKt.c(SizeKt.d(WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("ProductFilterBottomSheetContent")), 1.0f), 0.9f), NestedScrollInteropConnectionKt.e(gapComposerH), nestedScrollDispatcher);
                arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                horizontal = Alignment.Companion.n;
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, r10);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                mutableState3 = mutableState2;
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
                ComposeUiNode.b0.getClass();
                function3 = ComposeUiNode.Companion.f9641b;
                if (applier2 != null) {
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
                function7 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function7);
                Integer numValueOf = Integer.valueOf(iHashCode);
                function8 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function8);
                function9 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function9);
                function10 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function10);
                columnScopeInstance = ColumnScopeInstance.f4944a;
                if (r8 != 0) {
                    Modifier modifierD = SizeKt.d(columnScopeInstance.a(n00.i(gapComposerH, -1071374327, "ProductFilterBottomSheetContent"), 1.0f, true), 1.0f);
                    measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                    iHashCode4 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU4 = gapComposerH.U();
                    modifierC4 = ComposedModifierKt.c(gapComposerH, modifierD);
                    if (applier2 != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function3);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD2, function4);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU4, function7);
                    cj.t(iHashCode4, gapComposerH, function8, gapComposerH, function9);
                    Updater.c(gapComposerH, modifierC4, function10);
                    i3 = i7;
                    th = null;
                    ProgressViewKt.a(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("ProductFilterBottomSheetContent"), Alignment.Companion.f8587f), 0L, false, gapComposerH, 0, 6);
                    gapComposerH.Z(true);
                    gapComposerH.Z(false);
                    function6 = function5;
                    applier = applier2;
                    f2 = 1.0f;
                    z3 = true;
                    z5 = false;
                    str = "ProductFilterBottomSheetContent";
                    productFilterViewState2 = productFilterViewState;
                    gapComposer5 = gapComposerH;
                } else {
                    i3 = i7;
                    th = null;
                    gapComposerH.L(-1071027685);
                    applier = applier2;
                    composer$Companion$Empty$2 = composer$Companion$Empty$1;
                    TextKt.c(strF, PaddingKt.j(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48425e, gapComposerH, 0, 0, 131064);
                    str = "ProductFilterBottomSheetContent";
                    z3 = true;
                    z4 = z;
                    AnimatedVisibilityKt.c(columnScopeInstance, !collection.isEmpty(), null, null, null, null, ComposableLambdaKt.b(1804456936, new r((Object) collection, (Object) productFilterViewState, (Object) function2, (Function) function1, 26), gapComposerH), gapComposerH, 1572870, 30);
                    z5 = false;
                    z11 = false;
                    Modifier modifierD2 = ScrollKt.d(columnScopeInstance.a(new DTFunctionNameModifier(str), 1.0f, true), ScrollKt.b(gapComposer2), false, 14);
                    columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer2, 0);
                    iHashCode2 = Long.hashCode(gapComposer2.T);
                    persistentCompositionLocalMapU2 = gapComposer2.U();
                    modifierC2 = ComposedModifierKt.c(gapComposer2, modifierD2);
                    if (applier != null) {
                        gapComposer2 = gapComposerH;
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposer2.B();
                    if (gapComposer2.S) {
                        gapComposer2 = gapComposerH;
                        gapComposer2.C(function3);
                    } else {
                        gapComposer2 = gapComposerH;
                        gapComposer2.o();
                    }
                    Updater.c(gapComposer2, columnMeasurePolicyA2, function4);
                    Updater.c(gapComposer2, persistentCompositionLocalMapU2, function7);
                    cj.t(iHashCode2, gapComposer2, function8, gapComposer2, function9);
                    Updater.c(gapComposer2, modifierC2, function10);
                    gapComposer2.L(245016901);
                    for (ProductBooleanFilterUiModel productBooleanFilterUiModel : iterable2) {
                        if ((i3 & 57344) == 16384) {
                            z8 = true;
                        } else {
                            z8 = false;
                        }
                        zY2 = gapComposer2.y(productBooleanFilterUiModel) | z8;
                        objX6 = gapComposer2.x();
                        if (zY2) {
                            composer$Companion$Empty$4 = composer$Companion$Empty$2;
                        } else {
                            composer$Companion$Empty$4 = composer$Companion$Empty$2;
                            if (objX6 == composer$Companion$Empty$4) {
                            }
                            boolean z16 = z4;
                            BooleanFilterComponentKt.a(z16, productBooleanFilterUiModel, (Function0) objX6, gapComposer2, 0);
                            DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer2).f48361b.q, gapComposer2, 0, 3);
                            composer$Companion$Empty$2 = composer$Companion$Empty$4;
                            z4 = z16;
                        }
                        objX6 = new jm0(function5, productBooleanFilterUiModel, 12);
                        gapComposer2.q(objX6);
                        boolean z17 = z4;
                        BooleanFilterComponentKt.a(z17, productBooleanFilterUiModel, (Function0) objX6, gapComposer2, 0);
                        DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer2).f48361b.q, gapComposer2, 0, 3);
                        composer$Companion$Empty$2 = composer$Companion$Empty$4;
                        z4 = z17;
                    }
                    function6 = function5;
                    composer$Companion$Empty$3 = composer$Companion$Empty$2;
                    gapComposer2.Z(false);
                    if (list4.isEmpty()) {
                        i4 = 2;
                        productFilterViewState2 = productFilterViewState;
                        mutableState4 = mutableState3;
                        gapComposer2.L(-992818468);
                        gapComposer2.Z(false);
                        gapComposer3 = gapComposer2;
                    } else {
                        gapComposer2.L(-993813103);
                        productFilterViewState2 = productFilterViewState;
                        boolean z18 = productFilterViewState2.f65022a;
                        boolean zC = Intrinsics.c((String) mutableState3.getF10755b(), "sort-by");
                        objX5 = gapComposer2.x();
                        if (objX5 == composer$Companion$Empty$3) {
                            mutableState5 = mutableState3;
                            c30 c30Var = new c30(28, mutableState5);
                            gapComposer2.q(c30Var);
                            obj3 = c30Var;
                        } else {
                            mutableState5 = mutableState3;
                            obj3 = objX5;
                        }
                        Function1 function12 = (Function1) obj3;
                        if ((i3 & 57344) == 16384) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        Object objX7 = gapComposer2.x();
                        obj4 = objX7;
                        if (z7 || objX7 == composer$Companion$Empty$3) {
                            final boolean z19 = z11 ? 1 : 0;
                            Function4 function13 = new Function4() { // from class: zp0
                                @Override // kotlin.jvm.functions.Function4
                                public final Object g(Object obj6, Object obj7, Object obj8, Object obj9) {
                                    switch (z19) {
                                        case 0:
                                            String str4 = (String) obj6;
                                            String str5 = (String) obj7;
                                            str4.getClass();
                                            str5.getClass();
                                            Boolean bool = Boolean.TRUE;
                                            function6.D(str4, str5, (String) obj8, (String) obj9, bool);
                                            break;
                                        default:
                                            String str6 = (String) obj6;
                                            String str7 = (String) obj7;
                                            str6.getClass();
                                            str7.getClass();
                                            Boolean bool2 = Boolean.FALSE;
                                            function6.D(str6, str7, (String) obj8, (String) obj9, bool2);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(function13);
                            obj4 = function13;
                        }
                        mutableState4 = mutableState5;
                        SortCategoryExpandableRowKt.a(list3, z18, zC, function12, (Function4) obj4, gapComposer2, 3072);
                        GapComposer gapComposer6 = gapComposer2;
                        i4 = 2;
                        DividerKt.a(PaddingKt.k(new DTFunctionNameModifier(str), LVAppDesignKitTheme.l(gapComposer6).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer6).f48361b.q, gapComposer6, 0, 2);
                        gapComposer6.Z(false);
                        gapComposer3 = gapComposer6;
                    }
                    gapComposer3.L(245070244);
                    gapComposer4 = gapComposer3;
                    for (ProductFiltersCategoryUiModel productFiltersCategoryUiModel3 : list7) {
                        boolean z20 = productFilterViewState2.f65022a;
                        boolean zC2 = Intrinsics.c((String) mutableState4.getF10755b(), productFiltersCategoryUiModel3.f62970a);
                        zK = gapComposer4.K(productFiltersCategoryUiModel3);
                        objX3 = gapComposer4.x();
                        if (zK || objX3 == composer$Companion$Empty$3) {
                            obj2 = objX3;
                            rp0 rp0Var = new rp0(productFiltersCategoryUiModel3, mutableState4, i4);
                            gapComposer4.q(rp0Var);
                            obj2 = rp0Var;
                        }
                        Function1 function14 = (Function1) obj2;
                        if ((i3 & 57344) == 16384) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        objX4 = gapComposer4.x();
                        if (z6 || objX4 == composer$Companion$Empty$3) {
                            final int i9 = z3 ? 1 : 0;
                            objX4 = new Function4() { // from class: zp0
                                @Override // kotlin.jvm.functions.Function4
                                public final Object g(Object obj6, Object obj7, Object obj8, Object obj9) {
                                    switch (i9) {
                                        case 0:
                                            String str4 = (String) obj6;
                                            String str5 = (String) obj7;
                                            str4.getClass();
                                            str5.getClass();
                                            Boolean bool = Boolean.TRUE;
                                            function6.D(str4, str5, (String) obj8, (String) obj9, bool);
                                            break;
                                        default:
                                            String str6 = (String) obj6;
                                            String str7 = (String) obj7;
                                            str6.getClass();
                                            str7.getClass();
                                            Boolean bool2 = Boolean.FALSE;
                                            function6.D(str6, str7, (String) obj8, (String) obj9, bool2);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer4.q(objX4);
                        }
                        Function4 function15 = (Function4) objX4;
                        GapComposer gapComposer7 = gapComposer4;
                        FilterCategoryExpandableRowKt.a(productFiltersCategoryUiModel3, z20, zC2, function14, function15, gapComposer7, 0);
                        GapComposer gapComposer8 = gapComposer7;
                        DividerKt.a(PaddingKt.k(new DTFunctionNameModifier(str), LVAppDesignKitTheme.l(gapComposer8).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, i4), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer8).f48361b.q, gapComposer8, 0, 2);
                        gapComposer4 = gapComposer8;
                    }
                    pq0.x(gapComposer4, false, true, false);
                    f2 = 1.0f;
                    gapComposer5 = gapComposer4;
                }
                Modifier modifierJ = PaddingKt.j(BackgroundKt.b(tr.d(str, f2), LVAppDesignKitTheme.c(gapComposer5).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposer5).f48417f, LVAppDesignKitTheme.l(gapComposer5).f48415c);
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, z5);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                iHashCode3 = Long.hashCode(gapComposer5.T);
                persistentCompositionLocalMapU3 = gapComposer5.U();
                modifierC3 = ComposedModifierKt.c(gapComposer5, modifierJ);
                ComposeUiNode.b0.getClass();
                function11 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw th;
                }
                gapComposer5.B();
                if (gapComposer5.S) {
                    gapComposer5.C(function11);
                } else {
                    gapComposer5.o();
                }
                Updater.c(gapComposer5, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposer5, persistentCompositionLocalMapU3, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposer5, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                Updater.b(gapComposer5, ComposeUiNode.Companion.f9645h);
                GapComposer gapComposer9 = gapComposer5;
                ApplyFiltersButtonKt.a(n00.e(gapComposer5, modifierC3, ComposeUiNode.Companion.d, str, 1.0f), productFilterViewState2.f65025e, productFilterViewState2.d, productFilterViewState2.f65022a, function0, gapComposer9, ((i3 << 9) & 57344) | 6);
                GapComposer gapComposer10 = gapComposer9;
                gapComposer10.Z(z3);
                gapComposer10.Z(z3);
                gapComposer = gapComposer10;
            } else {
                productListOptionUiModel = productListOptionUiModel3;
                z2 = false;
                nestedScrollDispatcher = null;
            }
            collectionR = EmptyList.f71768b;
            r10 = z2;
            collection = collectionR;
            if (z) {
                r8 = r10;
            } else {
                r8 = r10;
            }
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            obj = objX;
            if (objX == composer$Companion$Empty$1) {
                MutableState mutableStateG2 = SnapshotStateKt.g(nestedScrollDispatcher);
                gapComposerH.q(mutableStateG2);
                obj = mutableStateG2;
            }
            mutableState = (MutableState) obj;
            Boolean boolValueOf2 = Boolean.valueOf(z);
            zY = gapComposerH.y(productFilterViewState2) | gapComposerH.y(list) | gapComposerH.y(list7);
            objX2 = gapComposerH.x();
            if (zY) {
                List list11 = list;
                mutableState2 = mutableState;
                ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1 productFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$2 = new ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1(productFilterViewState2, list11, list7, mutableState2, null);
                list3 = list11;
                gapComposerH.q(productFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$2);
                objX2 = productFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$2;
            } else {
                List list12 = list;
                mutableState2 = mutableState;
                ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1 productFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$3 = new ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1(productFilterViewState2, list12, list7, mutableState2, null);
                list3 = list12;
                gapComposerH.q(productFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$3);
                objX2 = productFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$3;
            }
            EffectsKt.e(gapComposerH, boolValueOf2, (Function2) objX2);
            list4 = list3;
            if (list4.isEmpty()) {
                strF = cj.f(gapComposerH, 1276429700, R.string.filters_and_sort_title, gapComposerH, r10);
            } else {
                strF = cj.f(gapComposerH, 1276506921, R.string.catalogue_filters, gapComposerH, r10);
            }
            Modifier modifierA2 = NestedScrollModifierKt.a(SizeKt.c(SizeKt.d(WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("ProductFilterBottomSheetContent")), 1.0f), 0.9f), NestedScrollInteropConnectionKt.e(gapComposerH), nestedScrollDispatcher);
            arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            horizontal = Alignment.Companion.n;
            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, r10);
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            mutableState3 = mutableState2;
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierA2);
            ComposeUiNode.b0.getClass();
            function3 = ComposeUiNode.Companion.f9641b;
            if (applier2 != null) {
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
            function7 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function7);
            Integer numValueOf2 = Integer.valueOf(iHashCode);
            function8 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf2, function8);
            function9 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function9);
            function10 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function10);
            columnScopeInstance = ColumnScopeInstance.f4944a;
            if (r8 != 0) {
                Modifier modifierD3 = SizeKt.d(columnScopeInstance.a(n00.i(gapComposerH, -1071374327, "ProductFilterBottomSheetContent"), 1.0f, true), 1.0f);
                measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                iHashCode4 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU4 = gapComposerH.U();
                modifierC4 = ComposedModifierKt.c(gapComposerH, modifierD3);
                if (applier2 != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function3);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD2, function4);
                Updater.c(gapComposerH, persistentCompositionLocalMapU4, function7);
                cj.t(iHashCode4, gapComposerH, function8, gapComposerH, function9);
                Updater.c(gapComposerH, modifierC4, function10);
                i3 = i7;
                th = null;
                ProgressViewKt.a(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("ProductFilterBottomSheetContent"), Alignment.Companion.f8587f), 0L, false, gapComposerH, 0, 6);
                gapComposerH.Z(true);
                gapComposerH.Z(false);
                function6 = function5;
                applier = applier2;
                f2 = 1.0f;
                z3 = true;
                z5 = false;
                str = "ProductFilterBottomSheetContent";
                productFilterViewState2 = productFilterViewState;
                gapComposer5 = gapComposerH;
            } else {
                i3 = i7;
                th = null;
                gapComposerH.L(-1071027685);
                applier = applier2;
                composer$Companion$Empty$2 = composer$Companion$Empty$1;
                TextKt.c(strF, PaddingKt.j(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48425e, gapComposerH, 0, 0, 131064);
                str = "ProductFilterBottomSheetContent";
                z3 = true;
                z4 = z;
                AnimatedVisibilityKt.c(columnScopeInstance, !collection.isEmpty(), null, null, null, null, ComposableLambdaKt.b(1804456936, new r((Object) collection, (Object) productFilterViewState, (Object) function2, (Function) function1, 26), gapComposerH), gapComposerH, 1572870, 30);
                z5 = false;
                z11 = false;
                Modifier modifierD4 = ScrollKt.d(columnScopeInstance.a(new DTFunctionNameModifier(str), 1.0f, true), ScrollKt.b(gapComposer2), false, 14);
                columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer2, 0);
                iHashCode2 = Long.hashCode(gapComposer2.T);
                persistentCompositionLocalMapU2 = gapComposer2.U();
                modifierC2 = ComposedModifierKt.c(gapComposer2, modifierD4);
                if (applier != null) {
                    gapComposer2 = gapComposerH;
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer2.B();
                if (gapComposer2.S) {
                    gapComposer2 = gapComposerH;
                    gapComposer2.C(function3);
                } else {
                    gapComposer2 = gapComposerH;
                    gapComposer2.o();
                }
                Updater.c(gapComposer2, columnMeasurePolicyA2, function4);
                Updater.c(gapComposer2, persistentCompositionLocalMapU2, function7);
                cj.t(iHashCode2, gapComposer2, function8, gapComposer2, function9);
                Updater.c(gapComposer2, modifierC2, function10);
                gapComposer2.L(245016901);
                while (r1.hasNext()) {
                    if ((i3 & 57344) == 16384) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    zY2 = gapComposer2.y(productBooleanFilterUiModel) | z8;
                    objX6 = gapComposer2.x();
                    if (zY2) {
                        composer$Companion$Empty$4 = composer$Companion$Empty$2;
                        if (objX6 == composer$Companion$Empty$4) {
                        }
                        boolean z110 = z4;
                        BooleanFilterComponentKt.a(z110, productBooleanFilterUiModel, (Function0) objX6, gapComposer2, 0);
                        DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer2).f48361b.q, gapComposer2, 0, 3);
                        composer$Companion$Empty$2 = composer$Companion$Empty$4;
                        z4 = z110;
                    } else {
                        composer$Companion$Empty$4 = composer$Companion$Empty$2;
                    }
                    objX6 = new jm0(function5, productBooleanFilterUiModel, 12);
                    gapComposer2.q(objX6);
                    boolean z111 = z4;
                    BooleanFilterComponentKt.a(z111, productBooleanFilterUiModel, (Function0) objX6, gapComposer2, 0);
                    DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer2).f48361b.q, gapComposer2, 0, 3);
                    composer$Companion$Empty$2 = composer$Companion$Empty$4;
                    z4 = z111;
                }
                function6 = function5;
                composer$Companion$Empty$3 = composer$Companion$Empty$2;
                gapComposer2.Z(false);
                if (list4.isEmpty()) {
                    gapComposer2.L(-993813103);
                    productFilterViewState2 = productFilterViewState;
                    boolean z112 = productFilterViewState2.f65022a;
                    boolean zC3 = Intrinsics.c((String) mutableState3.getF10755b(), "sort-by");
                    objX5 = gapComposer2.x();
                    if (objX5 == composer$Companion$Empty$3) {
                        mutableState5 = mutableState3;
                        c30 c30Var2 = new c30(28, mutableState5);
                        gapComposer2.q(c30Var2);
                        obj3 = c30Var2;
                    } else {
                        mutableState5 = mutableState3;
                        obj3 = objX5;
                    }
                    Function1 function16 = (Function1) obj3;
                    if ((i3 & 57344) == 16384) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    Object objX8 = gapComposer2.x();
                    obj4 = objX8;
                    if (z7) {
                        final int z113 = z11 ? 1 : 0;
                        Function4 function17 = new Function4() { // from class: zp0
                            @Override // kotlin.jvm.functions.Function4
                            public final Object g(Object obj6, Object obj7, Object obj8, Object obj9) {
                                switch (z113) {
                                    case 0:
                                        String str4 = (String) obj6;
                                        String str5 = (String) obj7;
                                        str4.getClass();
                                        str5.getClass();
                                        Boolean bool = Boolean.TRUE;
                                        function6.D(str4, str5, (String) obj8, (String) obj9, bool);
                                        break;
                                    default:
                                        String str6 = (String) obj6;
                                        String str7 = (String) obj7;
                                        str6.getClass();
                                        str7.getClass();
                                        Boolean bool2 = Boolean.FALSE;
                                        function6.D(str6, str7, (String) obj8, (String) obj9, bool2);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(function17);
                        obj4 = function17;
                    } else {
                        final int z114 = z11 ? 1 : 0;
                        Function4 function18 = new Function4() { // from class: zp0
                            @Override // kotlin.jvm.functions.Function4
                            public final Object g(Object obj6, Object obj7, Object obj8, Object obj9) {
                                switch (z114) {
                                    case 0:
                                        String str4 = (String) obj6;
                                        String str5 = (String) obj7;
                                        str4.getClass();
                                        str5.getClass();
                                        Boolean bool = Boolean.TRUE;
                                        function6.D(str4, str5, (String) obj8, (String) obj9, bool);
                                        break;
                                    default:
                                        String str6 = (String) obj6;
                                        String str7 = (String) obj7;
                                        str6.getClass();
                                        str7.getClass();
                                        Boolean bool2 = Boolean.FALSE;
                                        function6.D(str6, str7, (String) obj8, (String) obj9, bool2);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(function18);
                        obj4 = function18;
                    }
                    mutableState4 = mutableState5;
                    SortCategoryExpandableRowKt.a(list3, z112, zC3, function16, (Function4) obj4, gapComposer2, 3072);
                    GapComposer gapComposer11 = gapComposer2;
                    i4 = 2;
                    DividerKt.a(PaddingKt.k(new DTFunctionNameModifier(str), LVAppDesignKitTheme.l(gapComposer11).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer11).f48361b.q, gapComposer11, 0, 2);
                    gapComposer11.Z(false);
                    gapComposer3 = gapComposer11;
                } else {
                    i4 = 2;
                    productFilterViewState2 = productFilterViewState;
                    mutableState4 = mutableState3;
                    gapComposer2.L(-992818468);
                    gapComposer2.Z(false);
                    gapComposer3 = gapComposer2;
                }
                gapComposer3.L(245070244);
                gapComposer4 = gapComposer3;
                while (r16.hasNext()) {
                    boolean z21 = productFilterViewState2.f65022a;
                    boolean zC4 = Intrinsics.c((String) mutableState4.getF10755b(), productFiltersCategoryUiModel3.f62970a);
                    zK = gapComposer4.K(productFiltersCategoryUiModel3);
                    objX3 = gapComposer4.x();
                    if (zK) {
                        obj2 = objX3;
                        rp0 rp0Var2 = new rp0(productFiltersCategoryUiModel3, mutableState4, i4);
                        gapComposer4.q(rp0Var2);
                        obj2 = rp0Var2;
                    } else {
                        obj2 = objX3;
                        rp0 rp0Var3 = new rp0(productFiltersCategoryUiModel3, mutableState4, i4);
                        gapComposer4.q(rp0Var3);
                        obj2 = rp0Var3;
                    }
                    Function1 function19 = (Function1) obj2;
                    if ((i3 & 57344) == 16384) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    objX4 = gapComposer4.x();
                    if (z6) {
                        final int i10 = z3 ? 1 : 0;
                        objX4 = new Function4() { // from class: zp0
                            @Override // kotlin.jvm.functions.Function4
                            public final Object g(Object obj6, Object obj7, Object obj8, Object obj9) {
                                switch (i10) {
                                    case 0:
                                        String str4 = (String) obj6;
                                        String str5 = (String) obj7;
                                        str4.getClass();
                                        str5.getClass();
                                        Boolean bool = Boolean.TRUE;
                                        function6.D(str4, str5, (String) obj8, (String) obj9, bool);
                                        break;
                                    default:
                                        String str6 = (String) obj6;
                                        String str7 = (String) obj7;
                                        str6.getClass();
                                        str7.getClass();
                                        Boolean bool2 = Boolean.FALSE;
                                        function6.D(str6, str7, (String) obj8, (String) obj9, bool2);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer4.q(objX4);
                    } else {
                        final int i11 = z3 ? 1 : 0;
                        objX4 = new Function4() { // from class: zp0
                            @Override // kotlin.jvm.functions.Function4
                            public final Object g(Object obj6, Object obj7, Object obj8, Object obj9) {
                                switch (i11) {
                                    case 0:
                                        String str4 = (String) obj6;
                                        String str5 = (String) obj7;
                                        str4.getClass();
                                        str5.getClass();
                                        Boolean bool = Boolean.TRUE;
                                        function6.D(str4, str5, (String) obj8, (String) obj9, bool);
                                        break;
                                    default:
                                        String str6 = (String) obj6;
                                        String str7 = (String) obj7;
                                        str6.getClass();
                                        str7.getClass();
                                        Boolean bool2 = Boolean.FALSE;
                                        function6.D(str6, str7, (String) obj8, (String) obj9, bool2);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer4.q(objX4);
                    }
                    Function4 function110 = (Function4) objX4;
                    GapComposer gapComposer12 = gapComposer4;
                    FilterCategoryExpandableRowKt.a(productFiltersCategoryUiModel3, z21, zC4, function19, function110, gapComposer12, 0);
                    GapComposer gapComposer13 = gapComposer12;
                    DividerKt.a(PaddingKt.k(new DTFunctionNameModifier(str), LVAppDesignKitTheme.l(gapComposer13).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, i4), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer13).f48361b.q, gapComposer13, 0, 2);
                    gapComposer4 = gapComposer13;
                }
                pq0.x(gapComposer4, false, true, false);
                f2 = 1.0f;
                gapComposer5 = gapComposer4;
            }
            Modifier modifierJ2 = PaddingKt.j(BackgroundKt.b(tr.d(str, f2), LVAppDesignKitTheme.c(gapComposer5).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposer5).f48417f, LVAppDesignKitTheme.l(gapComposer5).f48415c);
            Alignment.f8582a.getClass();
            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, z5);
            OpaqueKey opaqueKey5 = ComposerKt.f7940a;
            iHashCode3 = Long.hashCode(gapComposer5.T);
            persistentCompositionLocalMapU3 = gapComposer5.U();
            modifierC3 = ComposedModifierKt.c(gapComposer5, modifierJ2);
            ComposeUiNode.b0.getClass();
            function11 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
                ComposablesKt.b();
                throw th;
            }
            gapComposer5.B();
            if (gapComposer5.S) {
                gapComposer5.C(function11);
            } else {
                gapComposer5.o();
            }
            Updater.c(gapComposer5, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposer5, persistentCompositionLocalMapU3, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposer5, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
            Updater.b(gapComposer5, ComposeUiNode.Companion.f9645h);
            GapComposer gapComposer14 = gapComposer5;
            ApplyFiltersButtonKt.a(n00.e(gapComposer5, modifierC3, ComposeUiNode.Companion.d, str, 1.0f), productFilterViewState2.f65025e, productFilterViewState2.d, productFilterViewState2.f65022a, function0, gapComposer14, ((i3 << 9) & 57344) | 6);
            GapComposer gapComposer15 = gapComposer14;
            gapComposer15.Z(z3);
            gapComposer15.Z(z3);
            gapComposer = gapComposer15;
        } else {
            function6 = function5;
            gapComposerH.D();
            gapComposer = gapComposerH;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kj0(productFilterViewState2, function0, function1, function2, function6, i2, 11);
        }
    }
}

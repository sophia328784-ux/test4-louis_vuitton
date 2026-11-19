package com.vuitton.android.presentation.screen.orders.components.list;

import androidx.compose.foundation.BackgroundKt;
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
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
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
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVTagConfigs;
import com.vuitton.android.designkit.ui.theme.atoms.LVTagKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTag;
import com.vuitton.android.presentation.screen.orders.components.list.OrderListScreenKt;
import com.vuitton.android.presentation.screen.orders.models.ChannelUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderPageUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderStatusUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderViewState;
import com.vuitton.android.presentation.screen.orders.models.PurchasedChannelKt;
import com.vuitton.android.presentation.screen.orders.models.PurchasedOrderUiModel;
import com.vuitton.android.presentation.screen.orders.models.TimelineUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionUiModel;
import defpackage.a;
import defpackage.a1;
import defpackage.ae0;
import defpackage.ch0;
import defpackage.cj;
import defpackage.d21;
import defpackage.fb0;
import defpackage.ii0;
import defpackage.lt;
import defpackage.n00;
import defpackage.n50;
import defpackage.ni0;
import defpackage.o60;
import defpackage.oi0;
import defpackage.pi0;
import defpackage.pq0;
import defpackage.tr;
import defpackage.xg0;
import defpackage.xz;
import defpackage.yh0;
import defpackage.z3;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002¨\u0006\u0003²\u0006\u0012\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "", "visibleItems", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OrderListScreenKt {
    public static final void a(Modifier modifier, OrderPageUiModel orderPageUiModel, boolean z, boolean z2, Function3 function3, Composer composer, int i2, int i3) {
        int i4;
        Set set;
        int i5;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "OrderList");
        }
        GapComposer gapComposerH = composer.h(-1941915910);
        int i6 = i3 & 1;
        if (i6 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        }
        int i7 = i4 | (gapComposerH.y(orderPageUiModel) ? 32 : 16);
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i7 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i7 |= gapComposerH.b(z2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i7 |= gapComposerH.y(function3) ? 16384 : 8192;
        }
        if (gapComposerH.p(i7 & 1, (i7 & 9363) != 9362)) {
            if (i6 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("OrderList");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            List listO0 = CollectionsKt.o0(CollectionsKt.Y(orderPageUiModel.f60281b.f60390a, orderPageUiModel.f60280a.f60390a), new Comparator() { // from class: com.vuitton.android.presentation.screen.orders.components.list.OrderListScreenKt$OrderList$$inlined$sortedByDescending$1
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return ComparisonsKt.a(((PurchasedOrderUiModel) obj2).f60394b, ((PurchasedOrderUiModel) obj).f60394b);
                }
            });
            LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            Object[] objArr = new Object[0];
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new ii0(1);
                gapComposerH.q(objX);
            }
            Set set2 = (Set) RememberSaveableKt.d(objArr, (Function0) objX, gapComposerH, 48);
            Unit unit = Unit.f71739a;
            boolean zK = gapComposerH.K(lazyListStateA) | gapComposerH.y(set2) | gapComposerH.y(listO0);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new OrderListScreenKt$OrderList$1$1(lazyListStateA, set2, listO0, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            if (set2.size() < listO0.size()) {
                gapComposerH.L(1593640719);
                boolean zK2 = gapComposerH.K(lazyListStateA);
                Object objX3 = gapComposerH.x();
                if (zK2 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new a1(lazyListStateA, 7);
                    gapComposerH.q(objX3);
                }
                set = set2;
                i5 = 16384;
                MutableState mutableStateA = SnapshotStateKt.a(SnapshotStateKt.m((Function0) objX3), EmptyList.f71768b, null, gapComposerH, 48, 2);
                Object[] objArr2 = new Object[0];
                Object objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$1) {
                    objX4 = new ii0(2);
                    gapComposerH.q(objX4);
                }
                Set set3 = (Set) RememberSaveableKt.d(objArr2, (Function0) objX4, gapComposerH, 48);
                List list = (List) mutableStateA.getF10755b();
                boolean zY = gapComposerH.y(set3) | gapComposerH.K(mutableStateA) | gapComposerH.y(set);
                Object objX5 = gapComposerH.x();
                if (zY || objX5 == composer$Companion$Empty$1) {
                    objX5 = new OrderListScreenKt$OrderList$2$1(set3, set, mutableStateA, null);
                    gapComposerH.q(objX5);
                }
                EffectsKt.e(gapComposerH, list, (Function2) objX5);
                gapComposerH.Z(false);
            } else {
                set = set2;
                i5 = 16384;
                gapComposerH.L(1594372040);
                gapComposerH.Z(false);
            }
            Modifier modifierK = PaddingKt.k(BackgroundKt.b(dTFunctionNameModifier.o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48417f);
            boolean zY2 = ((57344 & i7) == i5) | gapComposerH.y(listO0) | ((i7 & 7168) == 2048) | gapComposerH.y(set) | ((i7 & 896) == 256);
            Object objX6 = gapComposerH.x();
            if (zY2 || objX6 == composer$Companion$Empty$1) {
                xz xzVar = new xz(listO0, z, z2, set, function3);
                gapComposerH.q(xzVar);
                objX6 = xzVar;
            }
            LazyDslKt.a(modifierK, lazyListStateA, null, spacedAlignedF, null, null, false, null, (Function1) objX6, gapComposerH, 0, 492);
            gapComposerH = gapComposerH;
        } else {
            gapComposerH.D();
        }
        Modifier modifier2 = dTFunctionNameModifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new fb0(modifier2, orderPageUiModel, z, z2, function3, i2, i3);
        }
    }

    public static final void b(PurchasedOrderUiModel purchasedOrderUiModel, boolean z, boolean z2, Function2 function2, Composer composer, int i2) {
        boolean z3 = z;
        List list = purchasedOrderUiModel.d;
        GapComposer gapComposerH = composer.h(-1777863688);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.y(purchasedOrderUiModel) ? 4 : 2) | (gapComposerH.b(z3) ? 32 : 16) | (gapComposerH.b(z2) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = BackgroundKt.b(SizeKt.d(ClipKt.a(new DTFunctionNameModifier("OrderListOrderCard"), LVAppDesignKitTheme.j(gapComposerH).f48411c), 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function6 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function6);
            c(purchasedOrderUiModel, z3, gapComposerH, i3 & 126);
            Modifier modifierI = PaddingKt.i(new DTFunctionNameModifier("OrderListOrderCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
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
            Updater.c(gapComposerH, columnMeasurePolicyA2, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function6);
            gapComposerH.L(-998505809);
            int i4 = 0;
            for (Object obj : list) {
                int i5 = i4 + 1;
                if (i4 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                TransactionUiModel transactionUiModel = (TransactionUiModel) obj;
                Pair pair = new Pair(Integer.valueOf(i5), Integer.valueOf(list.size()));
                boolean z4 = purchasedOrderUiModel.g;
                boolean zY = ((i3 & 7168) == 2048) | gapComposerH.y(transactionUiModel);
                Object objX = gapComposerH.x();
                if (zY || objX == Composer.Companion.f7939a) {
                    objX = new xg0(function2, transactionUiModel, 4);
                    gapComposerH.q(objX);
                }
                e(transactionUiModel, pair, z4, z3, z2, (Function1) objX, gapComposerH, 64512 & (i3 << 6));
                z3 = z;
                i4 = i5;
            }
            pq0.x(gapComposerH, false, true, true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new pi0(purchasedOrderUiModel, z, z2, function2, i2);
        }
    }

    public static final void c(PurchasedOrderUiModel purchasedOrderUiModel, boolean z, Composer composer, int i2) {
        Function0 function0;
        PurchasedOrderUiModel purchasedOrderUiModel2 = purchasedOrderUiModel;
        GapComposer gapComposerH = composer.h(-1051429301);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.y(purchasedOrderUiModel2) ? 4 : 2) | (gapComposerH.b(z) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierI = PaddingKt.i(BackgroundKt.b(new DTFunctionNameModifier("OrderListOrderHeader"), LVAppDesignKitTheme.c(gapComposerH).f48361b.g, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Modifier modifierE = n00.e(gapComposerH, modifierC, function6, "OrderListOrderHeader", 1.0f);
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.l, gapComposerH, 54);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierE);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC2, function6);
            Modifier modifierE2 = ModifierExtKt.e(RowScopeInstance.f5040a.a(new DTFunctionNameModifier("OrderListOrderHeader"), 1.0f, true), "MyOrder_OrderReferenceNumber_text");
            String strJ = d21.j(StringResources_androidKt.c(gapComposerH, R.string.mylv_myorders_ordernr), purchasedOrderUiModel2.f60396e);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).g;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
            TextOverflow.f10989a.getClass();
            TextKt.c(strJ, modifierE2, j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposerH, 0, 24960, 110584);
            ChannelUiModel channelUiModel = purchasedOrderUiModel2.f60397f;
            Integer numA = channelUiModel != null ? PurchasedChannelKt.a(channelUiModel) : null;
            if (numA == null) {
                gapComposerH.L(-1408297327);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1408297326);
                LVTagKt.a(ModifierExtKt.e(PaddingKt.m(SizeKt.u(new DTFunctionNameModifier("OrderListOrderHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.d(gapComposerH).E, 1), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "MyOrder_OrderMethodName_text"), ConfigurationTag.a(((LVTagConfigs) gapComposerH.k(LVTagKt.f48516a)).f48513a, Color.b(LVAppDesignKitTheme.h(gapComposerH).f48404e, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 57), StringResources_androidKt.c(gapComposerH, numA.intValue()), gapComposerH, 64, 24);
                gapComposerH.Z(false);
            }
            Modifier modifierD = o60.d(gapComposerH, true, "OrderListOrderHeader", 1.0f);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new ch0(16);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierD, true, (Function1) objX);
            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.f8591k, gapComposerH, 6);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierB);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                function0 = function1;
                gapComposerH.C(function0);
            } else {
                function0 = function1;
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
            cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function5);
            Function0 function7 = function0;
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.order_total_label), n00.f(gapComposerH, modifierC3, function6, "OrderListOrderHeader", "MyOrder_TotalPrice_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.n, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
            BiasAlignment.Horizontal horizontal = Alignment.Companion.p;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("OrderListOrderHeader");
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f4920c, horizontal, gapComposerH, 48);
            int iHashCode4 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU4, function3);
            cj.t(iHashCode4, gapComposerH, function4, gapComposerH, function5);
            purchasedOrderUiModel2 = purchasedOrderUiModel;
            TextKt.c(purchasedOrderUiModel2.f60395c, n00.f(gapComposerH, modifierC4, function6, "OrderListOrderHeader", "MyOrder_TotalPriceNumber_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            if (z) {
                gapComposerH.L(1894678707);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.global_vat_included), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.n, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131066);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1894953150);
                gapComposerH.Z(false);
            }
            pq0.x(gapComposerH, true, true, true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z3(purchasedOrderUiModel2, i2, 9, z);
        }
    }

    public static final void d(OrderViewState orderViewState, SnackbarHostState snackbarHostState, ComposableLambdaImpl composableLambdaImpl, Function3 function3, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        orderViewState.getClass();
        snackbarHostState.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(1183930098);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(orderViewState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(snackbarHostState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function3) ? 2048 : 1024;
        }
        int i4 = 0;
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, composableLambdaImpl, null, ComposableLambdaKt.b(346677996, new ae0(snackbarHostState, 12), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-514306237, new ni0(orderViewState, function3, i4), gapComposerH), gapComposer, ((i3 >> 3) & 112) | 805309440, 501);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oi0(orderViewState, snackbarHostState, composableLambdaImpl, function3, i2, 0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0276  */
    /* JADX WARN: Code duplicated, block: B:105:0x0288  */
    /* JADX WARN: Code duplicated, block: B:108:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:109:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:115:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:121:0x031a  */
    /* JADX WARN: Code duplicated, block: B:123:0x031e  */
    /* JADX WARN: Code duplicated, block: B:124:0x0328  */
    /* JADX WARN: Code duplicated, block: B:130:0x037d  */
    /* JADX WARN: Code duplicated, block: B:132:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:142:0x036e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:96:0x0239  */
    /* JADX WARN: Code duplicated, block: B:98:0x0240  */
    /* JADX WARN: Code duplicated, block: B:99:0x0244  */
    public static final void e(final TransactionUiModel transactionUiModel, final Pair pair, final boolean z, final boolean z2, final boolean z3, final Function1 function1, Composer composer, final int i2) {
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        String str;
        boolean z4;
        List list;
        OrderStatusUiModel orderStatusUiModelA;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Iterator it;
        String str2;
        boolean z5;
        OrderStatusUiModel orderStatusUiModel;
        TransactionItemUiModel transactionItemUiModel;
        Object objX;
        boolean z6;
        boolean zY;
        Object objX2;
        Object obj = pair.f71705b;
        Object obj2 = pair.f71706c;
        GapComposer gapComposerH = composer.h(-1587511381);
        Applier applier = gapComposerH.f7976a;
        int i3 = (i2 & 6) == 0 ? (gapComposerH.y(transactionUiModel) ? 4 : 2) | i2 : i2;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(pair) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        boolean z7 = z2;
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(z7) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.b(z3) ? 16384 : 8192;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i3 |= gapComposerH.y(function1) ? 131072 : 65536;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (i4 & 74899) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX3 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (objX3 == composer$Companion$Empty$2) {
                objX3 = Boolean.valueOf(((Number) obj2).intValue() > 1 && z);
                gapComposerH.q(objX3);
            }
            boolean zBooleanValue = ((Boolean) objX3).booleanValue();
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$2) {
                objX4 = Boolean.valueOf(((Number) obj).intValue() < ((Number) obj2).intValue());
                gapComposerH.q(objX4);
            }
            boolean zBooleanValue2 = ((Boolean) objX4).booleanValue();
            String str3 = "OrderListShippingGroup";
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("OrderListShippingGroup");
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            Updater.c(gapComposerH, columnMeasurePolicyA2, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
            if (zBooleanValue) {
                gapComposerH.L(127598274);
                f(((Number) obj).intValue(), ((Number) obj2).intValue(), transactionUiModel.f60424e.size(), gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(127824109);
                gapComposerH.Z(false);
            }
            boolean zK = gapComposerH.K(transactionUiModel.f60424e);
            Object objX5 = gapComposerH.x();
            if (zK) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                if (objX5 == composer$Companion$Empty$1) {
                }
                gapComposerH.L(-1381340490);
                for (Map.Entry entry : ((Map) objX5).entrySet()) {
                    TimelineUiModel timelineUiModel = (TimelineUiModel) entry.getKey();
                    list = (List) entry.getValue();
                    OrderStatusUiModel.f60323f.getClass();
                    orderStatusUiModelA = OrderStatusUiModel.Companion.a(timelineUiModel, null, gapComposerH, 2);
                    Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier(str3), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
                    Alignment.f8582a.getClass();
                    columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
                    ComposeUiNode.b0.getClass();
                    function0 = ComposeUiNode.Companion.f9641b;
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
                    Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    gapComposerH.L(2137669117);
                    it = list.iterator();
                    while (it.hasNext()) {
                        transactionItemUiModel = (TransactionItemUiModel) it.next();
                        DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier(str3);
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new ch0(17);
                            gapComposerH.q(objX);
                        }
                        Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifier2, true, (Function1) objX);
                        if ((i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        zY = z6 | gapComposerH.y(transactionItemUiModel);
                        objX2 = gapComposerH.x();
                        if (zY || objX2 == composer$Companion$Empty$1) {
                            objX2 = new yh0(function1, transactionItemUiModel, 1);
                            gapComposerH.q(objX2);
                        }
                        OrderItemKt.a(ModifierExtKt.c(modifierB, false, null, null, (Function0) objX2, 27), transactionItemUiModel, null, null, z7, true, gapComposerH, ((i4 << 3) & 57344) | ImageMetadata.EDGE_MODE, 12);
                        z7 = z2;
                        it = it;
                        zBooleanValue2 = zBooleanValue2;
                        str3 = str3;
                        composer$Companion$Empty$1 = composer$Companion$Empty$1;
                    }
                    Composer$Companion$Empty$1 composer$Companion$Empty$3 = composer$Companion$Empty$1;
                    str2 = str3;
                    z5 = zBooleanValue2;
                    gapComposerH.Z(false);
                    gapComposerH.Z(true);
                    if (orderStatusUiModelA == null && z) {
                        orderStatusUiModel = orderStatusUiModelA;
                    } else {
                        orderStatusUiModel = null;
                    }
                    if (orderStatusUiModel == null) {
                        gapComposerH.L(1309854658);
                        gapComposerH.Z(false);
                    } else {
                        OrderShippingGroupStatusKt.a(com.vuitton.android.designkit.components.ModifierExtKt.b(PaddingKt.m(n00.i(gapComposerH, 1309854659, str2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), z5, new n50(28), gapComposerH, 48), orderStatusUiModel, null, z3, 0L, gapComposerH, (i4 >> 3) & 7168, 20);
                        gapComposerH.Z(false);
                    }
                    z7 = z2;
                    zBooleanValue2 = z5;
                    str3 = str2;
                    composer$Companion$Empty$1 = composer$Companion$Empty$3;
                }
                str = str3;
                z4 = zBooleanValue2;
                gapComposerH.Z(false);
                if (z4) {
                    DividerKt.a(PaddingKt.m(o60.c(gapComposerH, 129613863, str, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 5), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(129988653);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(true);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            }
            List list2 = transactionUiModel.f60424e;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj3 : list2) {
                TimelineUiModel timelineUiModel2 = ((TransactionItemUiModel) obj3).f60414c;
                Object arrayList = linkedHashMap.get(timelineUiModel2);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    linkedHashMap.put(timelineUiModel2, arrayList);
                }
                ((List) arrayList).add(obj3);
            }
            gapComposerH.q(linkedHashMap);
            objX5 = linkedHashMap;
            gapComposerH.L(-1381340490);
            while (r4.hasNext()) {
                TimelineUiModel timelineUiModel3 = (TimelineUiModel) entry.getKey();
                list = (List) entry.getValue();
                OrderStatusUiModel.f60323f.getClass();
                orderStatusUiModelA = OrderStatusUiModel.Companion.a(timelineUiModel3, null, gapComposerH, 2);
                Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier(str3), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                Arrangement$Start$1 arrangement$Start$2 = Arrangement.f4918a;
                Arrangement.SpacedAligned spacedAlignedF2 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(spacedAlignedF2, Alignment.Companion.n, gapComposerH, 0);
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierM2);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
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
                Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                gapComposerH.L(2137669117);
                it = list.iterator();
                while (it.hasNext()) {
                    transactionItemUiModel = (TransactionItemUiModel) it.next();
                    DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier(str3);
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new ch0(17);
                        gapComposerH.q(objX);
                    }
                    Modifier modifierB2 = SemanticsModifierKt.b(dTFunctionNameModifier3, true, (Function1) objX);
                    if ((i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    zY = z6 | gapComposerH.y(transactionItemUiModel);
                    objX2 = gapComposerH.x();
                    if (zY) {
                        objX2 = new yh0(function1, transactionItemUiModel, 1);
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new yh0(function1, transactionItemUiModel, 1);
                        gapComposerH.q(objX2);
                    }
                    OrderItemKt.a(ModifierExtKt.c(modifierB2, false, null, null, (Function0) objX2, 27), transactionItemUiModel, null, null, z7, true, gapComposerH, ((i4 << 3) & 57344) | ImageMetadata.EDGE_MODE, 12);
                    z7 = z2;
                    it = it;
                    zBooleanValue2 = zBooleanValue2;
                    str3 = str3;
                    composer$Companion$Empty$1 = composer$Companion$Empty$1;
                }
                Composer$Companion$Empty$1 composer$Companion$Empty$4 = composer$Companion$Empty$1;
                str2 = str3;
                z5 = zBooleanValue2;
                gapComposerH.Z(false);
                gapComposerH.Z(true);
                if (orderStatusUiModelA == null) {
                    orderStatusUiModel = null;
                } else {
                    orderStatusUiModel = null;
                }
                if (orderStatusUiModel == null) {
                    gapComposerH.L(1309854658);
                    gapComposerH.Z(false);
                } else {
                    OrderShippingGroupStatusKt.a(com.vuitton.android.designkit.components.ModifierExtKt.b(PaddingKt.m(n00.i(gapComposerH, 1309854659, str2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), z5, new n50(28), gapComposerH, 48), orderStatusUiModel, null, z3, 0L, gapComposerH, (i4 >> 3) & 7168, 20);
                    gapComposerH.Z(false);
                }
                z7 = z2;
                zBooleanValue2 = z5;
                str3 = str2;
                composer$Companion$Empty$1 = composer$Companion$Empty$4;
            }
            str = str3;
            z4 = zBooleanValue2;
            gapComposerH.Z(false);
            if (z4) {
                DividerKt.a(PaddingKt.m(o60.c(gapComposerH, 129613863, str, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 5), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(129988653);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            OpaqueKey opaqueKey5 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: qi0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj4, Object obj5) {
                    ((Integer) obj5).getClass();
                    OrderListScreenKt.e(transactionUiModel, pair, z, z2, z3, function1, (Composer) obj4, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void f(final int i2, final int i3, final int i4, Composer composer, final int i5) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-1860500575);
        int i6 = (gapComposerH.d(i2) ? 4 : 2) | i5 | (gapComposerH.d(i3) ? 32 : 16) | (gapComposerH.d(i4) ? 256 : 128);
        if (gapComposerH.p(i6 & 1, (i6 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strB = StringResources_androidKt.b(R.string.alt_parcel_number, new Object[]{Integer.valueOf(i2), Integer.valueOf(i3)}, gapComposerH);
            Modifier modifierD = tr.d("ParcelComposable", 1.0f);
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.f8591k, gapComposerH, 6);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
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
            Modifier modifierF = n00.f(gapComposerH, modifierC, ComposeUiNode.Companion.d, "ParcelComposable", "MyOrder_ParcelNumber_text");
            boolean zK = gapComposerH.K(strB);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new lt(strB, 27);
                gapComposerH.q(objX);
            }
            TextKt.c(StringResources_androidKt.b(R.string.my_orders_parcel_number, new Object[]{Integer.valueOf(i2), Integer.valueOf(i3)}, gapComposerH), SemanticsModifierKt.b(modifierF, false, (Function1) objX), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
            TextKt.c(StringResources_androidKt.a(R.plurals.my_orders_number_of_products, i4, new Object[]{Integer.valueOf(i4)}, gapComposerH), n00.g("ParcelComposable", "lMyOrder_ParcelsNumberProduct_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(i2, i3, i4, i5) { // from class: mi0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ int f76283b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ int f76284c;
                public final /* synthetic */ int d;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    OrderListScreenKt.f(this.f76283b, this.f76284c, this.d, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}

package com.vuitton.android.presentation.screen.orders.components.exchange;

import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVDisclaimerKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSetupProductUiModel;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSetupShippingMethodUiModel;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSetupUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnReasonUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import defpackage.ae0;
import defpackage.cj;
import defpackage.d21;
import defpackage.fm;
import defpackage.g2;
import defpackage.gi0;
import defpackage.kw;
import defpackage.n00;
import defpackage.n50;
import defpackage.o60;
import defpackage.om;
import defpackage.r;
import defpackage.tr;
import defpackage.va;
import defpackage.w;
import defpackage.z2;
import java.util.ArrayList;
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
public abstract class OrderExchangeReviewScreenKt {
    public static final void a(Modifier modifier, ExchangeSetupUiModel exchangeSetupUiModel, OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel, Function0 function0, Function0 function1, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "Content");
        }
        GapComposer gapComposerH = composer.h(-799872889);
        int i3 = i2 | (gapComposerH.y(exchangeSetupUiModel) ? 32 : 16) | (gapComposerH.y(orderReturnOrExchangeItemUiModel) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = ScrollKt.d(PaddingKt.k(modifierE, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), ScrollKt.b(gapComposerH), false, 14);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            OrderReturnOrExchangeComponentsKt.d(PaddingKt.k(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "Content"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 1), StringResources_androidKt.c(gapComposerH, R.string.exchange_review_title), StringResources_androidKt.c(gapComposerH, R.string.exchange_review_description), gapComposerH, 0, 0);
            int i4 = i3 >> 6;
            c(orderReturnOrExchangeItemUiModel, gapComposerH, i4 & 14);
            g(gapComposerH, 0);
            ExchangeSetupProductUiModel exchangeSetupProductUiModel = exchangeSetupUiModel.f60259a;
            ExchangeSetupShippingMethodUiModel exchangeSetupShippingMethodUiModel = exchangeSetupUiModel.f60261c;
            b(exchangeSetupProductUiModel, function0, gapComposerH, i4 & 112);
            g(gapComposerH, 0);
            if (exchangeSetupShippingMethodUiModel instanceof ExchangeSetupShippingMethodUiModel.Standard) {
                gapComposerH.L(-1516873761);
                e(exchangeSetupUiModel.f60260b, ((ExchangeSetupShippingMethodUiModel.Standard) exchangeSetupShippingMethodUiModel).f60258a, gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                if (!(exchangeSetupShippingMethodUiModel instanceof ExchangeSetupShippingMethodUiModel.ClickAndCollect)) {
                    throw d21.u(gapComposerH, -1516876325, false);
                }
                gapComposerH.L(-1516866911);
                ExchangeSetupShippingMethodUiModel.ClickAndCollect clickAndCollect = (ExchangeSetupShippingMethodUiModel.ClickAndCollect) exchangeSetupShippingMethodUiModel;
                String str = clickAndCollect.f60257c;
                if (str == null) {
                    str = "";
                }
                f(str, clickAndCollect.f60255a, clickAndCollect.f60256b, gapComposerH, 0);
                gapComposerH.Z(false);
            }
            LVDisclaimerKt.a(PaddingKt.k(tr.d("Content", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1), StringResources_androidKt.c(gapComposerH, R.string.exchange_help_banner_review_disclaimer), null, 0L, StringResources_androidKt.c(gapComposerH, R.string.exchange_help_banner_link), function1, gapComposerH, (i3 << 3) & ImageMetadata.JPEG_GPS_COORDINATES, 12);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w(modifierE, exchangeSetupUiModel, orderReturnOrExchangeItemUiModel, function0, function1, i2, 27);
        }
    }

    public static final void b(ExchangeSetupProductUiModel exchangeSetupProductUiModel, Function0 function0, Composer composer, int i2) {
        int i3;
        float f2;
        boolean z;
        Function0 function1 = function0;
        GapComposer gapComposerH = composer.h(1889370);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(exchangeSetupProductUiModel) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("OrderExchangeItemToRequest");
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            Function2 function3 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            Modifier modifierE = n00.e(gapComposerH, modifierC, function7, "OrderExchangeItemToRequest", 1.0f);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.f8591k, gapComposerH, 6);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierE);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
            Updater.c(gapComposerH, modifierC2, function7);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.exchange_review_exchanged_for_label), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131066);
            if (function1 != null) {
                gapComposerH.L(-585796703);
                f2 = 1.0f;
                z = true;
                LVLinkKt.a(null, StringResources_androidKt.c(gapComposerH, R.string.exchange_review_modify_cta), false, null, false, function1, gapComposerH, (i3 << 12) & ImageMetadata.JPEG_GPS_COORDINATES, 29);
                gapComposerH.Z(false);
            } else {
                f2 = 1.0f;
                z = true;
                gapComposerH.L(-585611230);
                gapComposerH.Z(false);
            }
            Modifier modifierD = o60.d(gapComposerH, z, "OrderExchangeItemToRequest", f2);
            String str = exchangeSetupProductUiModel.f60250c;
            String str2 = exchangeSetupProductUiModel.f60249b;
            Dp.Companion companion = Dp.f11004c;
            OrderReturnOrExchangeComponentsKt.f(modifierD, str, str2, 96.0f, exchangeSetupProductUiModel.d, gapComposerH, 3078, 0);
            OrderReturnOrExchangeComponentsKt.l(StringResources_androidKt.c(gapComposerH, R.string.mylv_myorders_sku), exchangeSetupProductUiModel.f60248a, null, gapComposerH, 0, 4);
            gapComposerH = gapComposerH;
            gapComposerH.Z(z);
        } else {
            function1 = function1;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(exchangeSetupProductUiModel, function1, i2, 23);
        }
    }

    public static final void c(OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(668267261);
        int i3 = (i2 & 6) == 0 ? i2 | (gapComposerH.y(orderReturnOrExchangeItemUiModel) ? 4 : 2) : i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("OrderExchangeItemToReturn");
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.exchange_review_item_to_return), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131066);
            Modifier modifierD = SizeKt.d(ClipKt.a(new DTFunctionNameModifier("OrderExchangeItemToReturn"), LVAppDesignKitTheme.j(gapComposerH).f48411c), 1.0f);
            TransactionItemUiModel transactionItemUiModel = orderReturnOrExchangeItemUiModel.f60302a;
            String str = transactionItemUiModel.f60416f;
            String str2 = transactionItemUiModel.f60418i;
            ArrayList arrayListV = ArraysKt.v(new String[]{transactionItemUiModel.l, transactionItemUiModel.m});
            ArrayList arrayList = new ArrayList();
            for (Object obj : arrayListV) {
                if (!StringsKt.w((String) obj)) {
                    arrayList.add(obj);
                }
            }
            OrderReturnOrExchangeComponentsKt.h(modifierD, str, str2, arrayList, gapComposerH, 0);
            gapComposerH = gapComposerH;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.exchange_review_reason_label);
            OrderReturnReasonUiModel orderReturnReasonUiModel = orderReturnOrExchangeItemUiModel.f60305e;
            String str3 = orderReturnReasonUiModel != null ? orderReturnReasonUiModel.f60317c : null;
            if (str3 == null) {
                str3 = "";
            }
            OrderReturnOrExchangeComponentsKt.l(strC, str3, null, gapComposerH, 0, 4);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new om(orderReturnOrExchangeItemUiModel, i2, 8);
        }
    }

    public static final void d(OrderReturnOrExchangeViewState orderReturnOrExchangeViewState, SnackbarHostState snackbarHostState, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        orderReturnOrExchangeViewState.getClass();
        snackbarHostState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-111285559);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(orderReturnOrExchangeViewState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(snackbarHostState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function3) ? 131072 : 65536;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zK = gapComposerH.K(orderReturnOrExchangeViewState.m);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = orderReturnOrExchangeViewState.l;
                gapComposerH.q(objX);
            }
            OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel = (OrderReturnOrExchangeItemUiModel) objX;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(-1529454715, new kw(function3, 16), gapComposerH), ComposableLambdaKt.b(-1700294172, new gi0(orderReturnOrExchangeViewState, orderReturnOrExchangeItemUiModel, function0, 1), gapComposerH), ComposableLambdaKt.b(-1871133629, new ae0(snackbarHostState, 7), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(981159130, new r((Object) orderReturnOrExchangeViewState, (Object) orderReturnOrExchangeItemUiModel, (Object) function1, (Object) function2, 19), gapComposerH), gapComposer, 805309872, 497);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z2((Object) orderReturnOrExchangeViewState, (Object) snackbarHostState, function0, function1, function2, function3, i2, 11);
        }
    }

    public static final void e(String str, String str2, Composer composer, int i2) {
        String str3;
        GapComposer gapComposerH = composer.h(-1263342772);
        int i3 = (gapComposerH.K(str) ? 4 : 2) | i2 | (gapComposerH.K(str2) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48417f);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("OrderExchangeShippingHome");
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            OrderReturnOrExchangeComponentsKt.b(StringResources_androidKt.c(gapComposerH, R.string.mylv_myorders_shippingaddress), null, str, gapComposerH, (i3 << 6) & 896, 2);
            str3 = str2;
            OrderReturnOrExchangeComponentsKt.b(StringResources_androidKt.c(gapComposerH, R.string.mylv_myorders_shippingmethod), null, str3, gapComposerH, (i3 << 3) & 896, 2);
            gapComposerH.Z(true);
        } else {
            str3 = str2;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new va(str, str3, i2, 3);
        }
    }

    public static final void f(String str, String str2, String str3, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(907492801);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.K(str2) ? 32 : 16) | (gapComposerH.K(str3) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48417f);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("OrderExchangeShippingStore");
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            OrderReturnOrExchangeComponentsKt.b(StringResources_androidKt.c(gapComposerH, R.string.mylv_myorders_shippingmethod), str2, str, gapComposerH, (i3 & 112) | ((i3 << 6) & 896), 0);
            OrderReturnOrExchangeComponentsKt.b(StringResources_androidKt.c(gapComposerH, R.string.my_orders_store_label), null, str3, gapComposerH, i3 & 896, 2);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new fm(i2, 1, str, str2, str3);
        }
    }

    public static final void g(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-1895500343);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DividerKt.a(PaddingKt.k(tr.d("Separator", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 1), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new n50(i2, 26);
        }
    }
}

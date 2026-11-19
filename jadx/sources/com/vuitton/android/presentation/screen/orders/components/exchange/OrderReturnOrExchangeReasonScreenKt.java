package com.vuitton.android.presentation.screen.orders.components.exchange;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.ShadowKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVCheckboxKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVDisclaimerKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnReasonUiModel;
import com.vuitton.android.presentation.screen.orders.models.ReasonsResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import defpackage.bj0;
import defpackage.cj;
import defpackage.fg;
import defpackage.ii0;
import defpackage.il;
import defpackage.k3;
import defpackage.kw;
import defpackage.ly;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import defpackage.uv;
import defpackage.w;
import defpackage.xg0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "sectionToScroll", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OrderReturnOrExchangeReasonScreenKt {
    public static final void a(boolean z, boolean z2, Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-66723533);
        int i3 = i2 | (gapComposerH.b(z) ? 4 : 2) | (gapComposerH.b(z2) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = WindowInsetsPadding_androidKt.b(PaddingKt.k(PaddingKt.k(BackgroundKt.b(ShadowKt.c(new DTFunctionNameModifier("BottomBar"), gapComposerH, 6, 3), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1));
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c), horizontal, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48446a;
            Modifier modifierD = tr.d("BottomBar", 1.0f);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.cta_continue);
            boolean z3 = ((i3 & 896) == 256) | ((i3 & 7168) == 2048);
            Object objX = gapComposerH.x();
            if (z3 || objX == Composer.Companion.f7939a) {
                objX = new il(function0, function1, 4);
                gapComposerH.q(objX);
            }
            LVButtonKt.b(6 | ((i3 << 18) & 29360128), 376, gapComposerH, modifierD, configurationButton, null, null, strC, (Function0) objX, false, z2, false);
            LVLinkKt.a(null, StringResources_androidKt.c(gapComposerH, z ? R.string.exchange_view_policy_link : R.string.return_view_policy_link), false, null, false, function2, gapComposerH, (i3 << 3) & ImageMetadata.JPEG_GPS_COORDINATES, 29);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ly(z, z2, function0, function1, function2, i2);
        }
    }

    public static final void b(Function0 function0, Composer composer, int i2) {
        Function0 function1;
        GapComposer gapComposerH = composer.h(1259325253);
        int i3 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("FooterSection"), LVAppDesignKitTheme.l(gapComposerH).g));
            function1 = function0;
            LVDisclaimerKt.a(SizeKt.d(new DTFunctionNameModifier("FooterSection"), 1.0f), StringResources_androidKt.c(gapComposerH, R.string.exchange_help_banner_description), null, 0L, StringResources_androidKt.c(gapComposerH, R.string.exchange_help_banner_link), function1, gapComposerH, ((i3 << 15) & ImageMetadata.JPEG_GPS_COORDINATES) | 6, 12);
        } else {
            function1 = function0;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kw(i2, 20, function1);
        }
    }

    public static final void c(OrderReturnOrExchangeViewState orderReturnOrExchangeViewState, Function0 function0, Composer composer, int i2) {
        int i3;
        String str;
        GapComposer gapComposerH = composer.h(542774955);
        int i4 = (gapComposerH.y(orderReturnOrExchangeViewState) ? 4 : 2) | i2 | (gapComposerH.y(function0) ? 32 : 16);
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("HeaderSection"), LVAppDesignKitTheme.l(gapComposerH).f48415c));
            OrderReturnOrExchangeComponentsKt.d(null, StringResources_androidKt.c(gapComposerH, R.string.exchange_select_reason_title), StringResources_androidKt.c(gapComposerH, R.string.exchange_select_reason_description), gapComposerH, 0, 1);
            String str2 = orderReturnOrExchangeViewState.o;
            if (str2 == null) {
                gapComposerH.L(-742759466);
                gapComposerH.Z(false);
                str = "HeaderSection";
                i3 = 0;
            } else {
                SpacerKt.a(gapComposerH, SizeKt.f(n00.i(gapComposerH, -742759465, "HeaderSection"), LVAppDesignKitTheme.l(gapComposerH).g));
                i3 = 0;
                str = "HeaderSection";
                LVDisclaimerKt.a(SizeKt.d(new DTFunctionNameModifier("HeaderSection"), 1.0f), str2, null, 0L, StringResources_androidKt.c(gapComposerH, R.string.exchange_help_banner_link), function0, gapComposerH, ((i4 << 12) & ImageMetadata.JPEG_GPS_COORDINATES) | 6, 12);
                gapComposerH.Z(false);
            }
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier(str), LVAppDesignKitTheme.l(gapComposerH).g));
        } else {
            i3 = 0;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new bj0(orderReturnOrExchangeViewState, function0, i2, i3);
        }
    }

    public static final void d(final OrderReturnOrExchangeViewState orderReturnOrExchangeViewState, final Function2 function2, final Function2 function3, Function0 function0, Function0 function1, final Function0 function4, Function0 function5, Function0 function6, Composer composer, int i2) {
        int i3;
        Function0 function7;
        GapComposer gapComposer;
        orderReturnOrExchangeViewState.getClass();
        function2.getClass();
        function3.getClass();
        function1.getClass();
        function4.getClass();
        GapComposer gapComposerC = defpackage.a.c(function5, function6, composer, -1515160389);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerC.y(orderReturnOrExchangeViewState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerC.y(function2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerC.y(function3) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            function7 = function0;
            i3 |= gapComposerC.y(function7) ? 2048 : 1024;
        } else {
            function7 = function0;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerC.y(function1) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerC.y(function4) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerC.y(function5) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposerC.y(function6) ? 8388608 : 4194304;
        }
        if (gapComposerC.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerC, 3);
            Object[] objArr = new Object[0];
            Object objX = gapComposerC.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new ii0(5);
                gapComposerC.q(objX);
            }
            MutableIntState mutableIntState = (MutableIntState) RememberSaveableKt.d(objArr, (Function0) objX, gapComposerC, 48);
            Integer numValueOf = Integer.valueOf(mutableIntState.f());
            boolean zK = gapComposerC.K(mutableIntState) | gapComposerC.K(lazyListStateA);
            Object objX2 = gapComposerC.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new OrderReturnOrExchangeReasonScreenKt$OrderReturnOrExchangeReasonScreen$1$1(lazyListStateA, mutableIntState, null);
                gapComposerC.q(objX2);
            }
            EffectsKt.e(gapComposerC, numValueOf, (Function2) objX2);
            gapComposer = gapComposerC;
            ScaffoldKt.a(null, ComposableLambdaKt.b(2002698103, new bj0(orderReturnOrExchangeViewState, function6, 1), gapComposerC), ComposableLambdaKt.b(1761000790, new w(orderReturnOrExchangeViewState, function7, mutableIntState, function1, function5, 29), gapComposerC), null, null, 0, 0L, 0L, null, ComposableLambdaKt.b(-1659565236, new Function3() { // from class: com.vuitton.android.presentation.screen.orders.components.exchange.e
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    PaddingValues paddingValues = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    paddingValues.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("OrderReturnOrExchangeReasonScreen$lambda$6");
                        FillElement fillElement = SizeKt.f5052c;
                        Modifier modifierH = PaddingKt.h(dTFunctionNameModifier.o(fillElement), paddingValues);
                        Alignment.f8582a.getClass();
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                        ComposeUiNode.b0.getClass();
                        Function0 function8 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function8);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                        Modifier modifierI = PaddingKt.i(BackgroundKt.b(new DTFunctionNameModifier("OrderReturnOrExchangeReasonScreen$lambda$6").o(fillElement), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(composer2).f48417f);
                        OrderReturnOrExchangeViewState orderReturnOrExchangeViewState2 = orderReturnOrExchangeViewState;
                        Arrangement.Vertical vertical = orderReturnOrExchangeViewState2.o == null ? TopWithFooter.f60174a : Arrangement.f4920c;
                        boolean zY = composer2.y(orderReturnOrExchangeViewState2);
                        Function0 function9 = function4;
                        boolean zK2 = zY | composer2.K(function9);
                        Function2 function10 = function3;
                        boolean zK3 = zK2 | composer2.K(function10);
                        Function2 function11 = function2;
                        boolean zK4 = zK3 | composer2.K(function11);
                        Object objX3 = composer2.x();
                        if (zK4 || objX3 == Composer.Companion.f7939a) {
                            objX3 = new k3(orderReturnOrExchangeViewState2, function9, function10, function11);
                            composer2.q(objX3);
                        }
                        LazyDslKt.a(modifierI, lazyListStateA, null, vertical, null, null, false, null, (Function1) objX3, composer2, 0, 492);
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerC), gapComposer, 805306800, 505);
        } else {
            gapComposer = gapComposerC;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new fg(orderReturnOrExchangeViewState, function2, function3, function0, function1, function4, function5, function6, i2);
        }
    }

    public static final void e(OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel, OrderReturnOrExchangeViewState orderReturnOrExchangeViewState, Function2 function2, Function2 function3, Composer composer, int i2) {
        boolean z;
        GapComposer gapComposerH = composer.h(184694642);
        int i3 = i2 | (gapComposerH.y(orderReturnOrExchangeItemUiModel) ? 4 : 2) | (gapComposerH.y(orderReturnOrExchangeViewState) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128) | (gapComposerH.y(function3) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = tr.d("ReturnableItemRow", 1.0f);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.f8591k, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            String strA = null;
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
            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
            Modifier modifierB = cj.b("ReturnableItemRow", rowScopeInstance, 1.0f, true);
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
            List list = transactionItemUiModel.q;
            Collection collection = arrayList;
            if (list != null && !list.isEmpty()) {
                collection = arrayList;
                collection = null;
            }
            if (collection == null) {
                collection = EmptyList.f71768b;
            }
            OrderReturnOrExchangeComponentsKt.f(modifierB, str, str2, Call.Parameters.DEFAULT_CAMERA_ZOOM, CollectionsKt.X(transactionItemUiModel.f60419j.f60384c, collection), gapComposerH, 0, 8);
            if (orderReturnOrExchangeViewState.f60310e.size() > 1) {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, -1015329531, "ReturnableItemRow");
                Alignment.f8582a.getClass();
                Modifier modifierB2 = rowScopeInstance.b(dTFunctionNameModifierI, Alignment.Companion.f8591k);
                boolean z2 = orderReturnOrExchangeItemUiModel.d;
                boolean zY = ((i3 & 896) == 256) | gapComposerH.y(orderReturnOrExchangeItemUiModel);
                Object objX = gapComposerH.x();
                if (zY || objX == Composer.Companion.f7939a) {
                    objX = new xg0(function2, orderReturnOrExchangeItemUiModel, 5);
                    gapComposerH.q(objX);
                }
                LVCheckboxKt.a(modifierB2, false, z2, null, false, (Function1) objX, gapComposerH, 0, 26);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1015046036);
                gapComposerH.Z(false);
            }
            SpacerKt.a(gapComposerH, SizeKt.f(o60.f(gapComposerH, true, "ReturnableItemRow"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
            Modifier modifierD2 = SizeKt.d(new DTFunctionNameModifier("ReturnableItemRow"), 1.0f);
            OrderReturnReasonUiModel orderReturnReasonUiModel = orderReturnOrExchangeItemUiModel.f60305e;
            ReasonsResponseUiModel reasonsResponseUiModel = orderReturnOrExchangeViewState.f60308b;
            ReasonsResponseUiModel.Result result = reasonsResponseUiModel instanceof ReasonsResponseUiModel.Result ? (ReasonsResponseUiModel.Result) reasonsResponseUiModel : null;
            List list2 = result != null ? result.f60402a : null;
            ReasonsResponseUiModel.Error error = reasonsResponseUiModel instanceof ReasonsResponseUiModel.Error ? (ReasonsResponseUiModel.Error) reasonsResponseUiModel : null;
            String str3 = error != null ? error.f60400a : null;
            if (str3 == null) {
                gapComposerH.L(386673905);
                StringResourceUiModel stringResourceUiModel = orderReturnOrExchangeItemUiModel.f60306f;
                if (orderReturnOrExchangeItemUiModel.f60305e != null) {
                    stringResourceUiModel = null;
                }
                if (stringResourceUiModel == null) {
                    gapComposerH.L(386673904);
                    z = false;
                } else {
                    z = false;
                    gapComposerH.L(1397946673);
                    strA = StringResourceUiModelKt.a(stringResourceUiModel, (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b));
                }
                gapComposerH.Z(z);
                gapComposerH.Z(z);
                str3 = strA;
            } else {
                gapComposerH.L(1397941961);
                gapComposerH.Z(false);
            }
            OrderReturnOrExchangeComponentsKt.i(modifierD2, orderReturnReasonUiModel, list2, str3, orderReturnOrExchangeItemUiModel, function3, gapComposerH, ((i3 << 12) & 57344) | 6 | ((i3 << 6) & ImageMetadata.JPEG_GPS_COORDINATES));
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv(orderReturnOrExchangeItemUiModel, orderReturnOrExchangeViewState, function2, function3, i2, 17);
        }
    }

    public static final void f(OrderReturnOrExchangeViewState orderReturnOrExchangeViewState, Function0 function0, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-337874071);
        int i3 = i2 | (gapComposerH.y(orderReturnOrExchangeViewState) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(gapComposerH, orderReturnOrExchangeViewState.p ? R.string.exchange_select_reason_header : R.string.return_select_reason_header), null, null, function0, null, null, null, null, gapComposerH, (i3 << 15) & 3670016, 0, 4023);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new bj0(orderReturnOrExchangeViewState, function0, i2, 2);
        }
    }
}

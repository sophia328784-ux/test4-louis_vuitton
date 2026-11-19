package com.vuitton.android.presentation.screen.orders.components.exchange;

import androidx.compose.animation.AnimationModifierKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
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
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.presentation.screen.orders.models.CategoryOptionUiModel;
import com.vuitton.android.presentation.screen.orders.models.CategoryTypeUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.models.ProductExchangeCategoryUiModel;
import defpackage.ae0;
import defpackage.j8;
import defpackage.kw;
import defpackage.n00;
import defpackage.r;
import defpackage.rh0;
import defpackage.s0;
import defpackage.w;
import defpackage.w3;
import defpackage.wd0;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OrderExchangeVariantSelectionScreenKt {
    public static final void a(Modifier modifier, List list, CategoryOptionUiModel categoryOptionUiModel, Function1 function1, boolean z, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        float f2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "CategoryOptionsRow");
        }
        Modifier modifier2 = modifierE;
        list.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-915741893);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(list) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(categoryOptionUiModel) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.b(z) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            Modifier modifierD = SizeKt.d(modifier2, 1.0f);
            PaddingValuesImpl paddingValuesImplC = PaddingKt.c(LVAppDesignKitTheme.l(gapComposerH).f48417f, 2);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            if (z) {
                gapComposerH.L(766098433);
                f2 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(766173794);
                f2 = LVAppDesignKitTheme.l(gapComposerH).f48415c;
                gapComposerH.Z(false);
            }
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(f2);
            boolean zY = gapComposerH.y(list) | gapComposerH.y(categoryOptionUiModel) | ((i3 & 57344) == 16384) | ((i3 & 7168) == 2048);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new s0(list, categoryOptionUiModel, z, function1);
                gapComposerH.q(objX);
            }
            gapComposer = gapComposerH;
            LazyDslKt.b(modifierD, lazyListStateA, paddingValuesImplC, spacedAlignedF, null, null, false, null, (Function1) objX, gapComposer, 0, 488);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new j8(modifier2, list, categoryOptionUiModel, function1, z, i2);
        }
    }

    public static final void b(OrderReturnOrExchangeViewState orderReturnOrExchangeViewState, SnackbarHostState snackbarHostState, Function1 function1, Function3 function3, Function0 function0, Function1 function2, Function0 function4, Composer composer, int i2) {
        int i3;
        Object obj;
        Object obj2;
        GapComposer gapComposer;
        orderReturnOrExchangeViewState.getClass();
        snackbarHostState.getClass();
        function1.getClass();
        function3.getClass();
        function0.getClass();
        function2.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(182101564);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(orderReturnOrExchangeViewState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(snackbarHostState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            obj = function3;
            i3 |= gapComposerH.y(obj) ? 2048 : 1024;
        } else {
            obj = function3;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function0) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            obj2 = function2;
            i3 |= gapComposerH.y(obj2) ? 131072 : 65536;
        } else {
            obj2 = function2;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function4) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(704850424, new kw(function4, 17), gapComposerH), ComposableLambdaKt.b(361966615, new wd0((Object) orderReturnOrExchangeViewState, function1, 7), gapComposerH), ComposableLambdaKt.b(19082806, new ae0(snackbarHostState, 8), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-1152002931, new r((Object) orderReturnOrExchangeViewState, obj, obj2, (Function) function0, 20), gapComposerH), gapComposer, 805309872, 497);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w3(orderReturnOrExchangeViewState, snackbarHostState, function1, function3, function0, function2, function4, i2);
        }
    }

    public static final void c(Modifier modifier, ProductExchangeCategoryUiModel productExchangeCategoryUiModel, CategoryOptionUiModel categoryOptionUiModel, Function1 function1, Function1 function2, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ProductExchangeCategory");
        }
        function2.getClass();
        GapComposer gapComposerH = composer.h(16833805);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.y(productExchangeCategoryUiModel) ? 32 : 16) | (gapComposerH.y(categoryOptionUiModel) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
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
            TextKt.c(productExchangeCategoryUiModel.f60386b, PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("ProductExchangeCategory"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).g, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            a(AnimationModifierKt.b(new DTFunctionNameModifier("ProductExchangeCategory"), null, 3), productExchangeCategoryUiModel.f60389f, categoryOptionUiModel, function1, productExchangeCategoryUiModel.f60387c == CategoryTypeUiModel.IMAGE, gapComposerH, i3 & 8064);
            if (productExchangeCategoryUiModel.f60388e != null) {
                Modifier modifierK = PaddingKt.k(n00.i(gapComposerH, -840174032, "ProductExchangeCategory"), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                String strC = StringResources_androidKt.c(gapComposerH, R.string.exchange_select_product_variation_size_guide_link);
                boolean zY = gapComposerH.y(productExchangeCategoryUiModel) | ((57344 & i3) == 16384);
                Object objX = gapComposerH.x();
                if (zY || objX == Composer.Companion.f7939a) {
                    objX = new rh0(function2, productExchangeCategoryUiModel, 6);
                    gapComposerH.q(objX);
                }
                LVLinkKt.a(modifierK, strC, false, null, false, (Function0) objX, gapComposerH, 0, 28);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-839821345);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w(modifierE, (Object) productExchangeCategoryUiModel, (Object) categoryOptionUiModel, function1, function2, i2, 28);
        }
    }
}

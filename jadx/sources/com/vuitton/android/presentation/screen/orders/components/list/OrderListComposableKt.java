package com.vuitton.android.presentation.screen.orders.components.list;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.presentation.screen.orders.models.OrderViewState;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModel;
import defpackage.kw;
import defpackage.n00;
import defpackage.uv;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OrderListComposableKt {
    public static final void a(OrderViewModel orderViewModel, Function0 function0, Function3 function3, Function0 function1, Composer composer, int i2) {
        orderViewModel.getClass();
        function0.getClass();
        function3.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1029533033);
        int i3 = i2 | (gapComposerH.K(orderViewModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function3) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(872923953, new kw(function1, 18), gapComposerH);
            MutableState mutableStateB = SnapshotStateKt.b(orderViewModel.getE(), gapComposerH);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX;
            if (((OrderViewState) mutableStateB.getF10755b()).f60378f) {
                gapComposerH.L(1538783992);
                OrderListErrorScreenKt.a(snackbarHostState, composableLambdaImplB, gapComposerH, 54);
                gapComposerH.Z(false);
            } else if (((OrderViewState) mutableStateB.getF10755b()).f60377e) {
                gapComposerH.L(1538788698);
                OrderListLoadingScreenKt.a(snackbarHostState, composableLambdaImplB, gapComposerH, 54);
                gapComposerH.Z(false);
            } else if (((OrderViewState) mutableStateB.getF10755b()).f60381j) {
                gapComposerH.L(1538793489);
                OrderListEmptyScreenKt.a(snackbarHostState, composableLambdaImplB, function0, gapComposerH, ((i3 << 3) & 896) | 54);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(458144339);
                OrderListScreenKt.d((OrderViewState) mutableStateB.getF10755b(), snackbarHostState, composableLambdaImplB, function3, gapComposerH, ((i3 << 3) & 7168) | 432);
                gapComposerH.Z(false);
            }
            Unit unit = Unit.f71739a;
            boolean zY = gapComposerH.y(context) | ((i3 & 14) == 4);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new OrderListComposableKt$OrderListComposable$1$1(orderViewModel, snackbarHostState, context, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv((Object) orderViewModel, (Object) function0, (Object) function3, (Object) function1, i2, 14);
        }
    }

    public static final void b(Function0 function0, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-151984869);
        int i3 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(gapComposerH, R.string.mylv_dashboard_myorders), null, null, function0, null, null, null, null, gapComposerH, (i3 << 18) & 3670016, 0, 4023);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kw(i2, 19, function0);
        }
    }
}

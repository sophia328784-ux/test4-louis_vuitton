package com.vuitton.android.presentation.screen.orders.components.detail;

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
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.vuitton.android.presentation.screen.orders.models.OrderViewState;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModel;
import defpackage.n00;
import defpackage.w;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OrderDetailComposableKt {
    public static final void a(OrderViewModel orderViewModel, Function0 function0, Function4 function4, Function3 function3, Function4 function5, Composer composer, int i2) {
        orderViewModel.getClass();
        function0.getClass();
        function4.getClass();
        function3.getClass();
        function5.getClass();
        GapComposer gapComposerH = composer.h(-1775013238);
        int i3 = i2 | (gapComposerH.K(orderViewModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function4) ? 256 : 128) | (gapComposerH.y(function3) ? 2048 : 1024) | (gapComposerH.y(function5) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(orderViewModel.getE(), gapComposerH);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX;
            Unit unit = Unit.f71739a;
            int i4 = i3 & 14;
            boolean zY = (i4 == 4) | gapComposerH.y(context);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new OrderDetailComposableKt$OrderDetailComposable$1$1(orderViewModel, snackbarHostState, context, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            OrderViewState orderViewState = (OrderViewState) mutableStateB.getF10755b();
            boolean z = i4 == 4;
            Object objX3 = gapComposerH.x();
            if (z || objX3 == composer$Companion$Empty$1) {
                objX3 = new OrderDetailComposableKt$OrderDetailComposable$2$1(2, orderViewModel, OrderViewModel.class, "getInvoice", "getInvoice(Ljava/lang/String;Ljava/lang/String;)V", 0);
                gapComposerH.q(objX3);
            }
            Function2 function2 = (Function2) ((KFunction) objX3);
            int i5 = i3 << 3;
            int i6 = i3 << 6;
            OrderDetailScreenKt.d(orderViewState, snackbarHostState, function0, function4, function2, function3, function5, gapComposerH, (i5 & 7168) | (i5 & 896) | 48 | (458752 & i6) | (i6 & 3670016));
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w(orderViewModel, function0, function4, function3, function5, i2, 26);
        }
    }
}

package com.vuitton.android.presentation.screen.orders.components.exchange;

import android.content.Context;
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
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavHostControllerKt;
import androidx.navigation.compose.NavHostKt;
import com.vuitton.android.presentation.screen.orders.models.ConfirmReturnResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSubmitResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeBottomSheet;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.models.OrderTrackingUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.ch0;
import defpackage.d1;
import defpackage.d21;
import defpackage.ef;
import defpackage.ui0;
import defpackage.uv;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0003\u001a\u0004\u0018\u00010\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet;", "currentBottomSheet", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OrderReturnOrExchangeNavHostKt {
    public static final void a(final OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel, final Function0 function0, final Function0 function1, Function0 function2, Composer composer, int i2) {
        Object d1Var;
        final MutableState mutableState;
        Context context;
        final int i3;
        final int i4;
        Function0 function3 = function2;
        orderReturnOrExchangeViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(2015941091);
        int i5 = i2 | (gapComposerH.K(orderReturnOrExchangeViewModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function3) ? 2048 : 1024);
        if (gapComposerH.p(i5 & 1, (i5 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context2 = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            MutableState mutableStateB = SnapshotStateKt.b(orderReturnOrExchangeViewModel.getH(), gapComposerH);
            MutableState mutableStateB2 = SnapshotStateKt.b(orderReturnOrExchangeViewModel.e(), gapComposerH);
            NavHostController navHostControllerA = NavHostControllerKt.a(new Navigator[0], gapComposerH);
            ReturnOrExchangeRoute.Reason reason = ReturnOrExchangeRoute.Reason.INSTANCE;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new ch0(24);
                gapComposerH.q(objX);
            }
            Function1 function4 = (Function1) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new ch0(25);
                gapComposerH.q(objX2);
            }
            Function1 function5 = (Function1) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new ch0(26);
                gapComposerH.q(objX3);
            }
            Function1 function6 = (Function1) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new ch0(27);
                gapComposerH.q(objX4);
            }
            Function1 function7 = (Function1) objX4;
            int i6 = i5 & 14;
            int i7 = i5 & 7168;
            boolean zK = (i6 == 4) | gapComposerH.K(mutableStateB) | gapComposerH.y(navHostControllerA) | gapComposerH.y(context2) | (i7 == 2048);
            Object objX5 = gapComposerH.x();
            if (zK || objX5 == composer$Companion$Empty$1) {
                d1Var = new d1(orderReturnOrExchangeViewModel, mutableStateB, navHostControllerA, context2, function2, 11);
                mutableState = mutableStateB;
                context = context2;
                function3 = function2;
                navHostControllerA = navHostControllerA;
                gapComposerH.q(d1Var);
            } else {
                context = context2;
                d1Var = objX5;
                mutableState = mutableStateB;
            }
            NavHostKt.b(navHostControllerA, reason, null, null, null, function4, function5, function6, function7, (Function1) d1Var, gapComposerH, 920125488, 1084);
            gapComposerH = gapComposerH;
            OrderReturnOrExchangeBottomSheet orderReturnOrExchangeBottomSheet = (OrderReturnOrExchangeBottomSheet) mutableStateB2.getF10755b();
            if (orderReturnOrExchangeBottomSheet == null) {
                gapComposerH.L(381122828);
                i3 = 0;
                gapComposerH.Z(false);
                i4 = 1;
            } else {
                i3 = 0;
                gapComposerH.L(381122829);
                if (orderReturnOrExchangeBottomSheet instanceof OrderReturnOrExchangeBottomSheet.Policy) {
                    gapComposerH.L(1997914756);
                    boolean z = ((OrderReturnOrExchangeViewState) mutableState.getF10755b()).f60313i.f60301c;
                    boolean zY = gapComposerH.y(context);
                    Object objX6 = gapComposerH.x();
                    if (zY || objX6 == composer$Companion$Empty$1) {
                        objX6 = new ef(context, 11);
                        gapComposerH.q(objX6);
                    }
                    Function1 function8 = (Function1) objX6;
                    boolean z2 = i6 == 4;
                    Object objX7 = gapComposerH.x();
                    if (z2 || objX7 == composer$Companion$Empty$1) {
                        objX7 = new ui0(orderReturnOrExchangeViewModel, 3);
                        gapComposerH.q(objX7);
                    }
                    OrderReturnOrExchangeComponentsKt.e(z, function8, (Function0) objX7, gapComposerH, 0);
                    gapComposerH.Z(false);
                } else {
                    if (orderReturnOrExchangeBottomSheet instanceof OrderReturnOrExchangeBottomSheet.ReturnRequest) {
                        gapComposerH.L(1997926360);
                        ConfirmReturnResponseUiModel confirmReturnResponseUiModel = ((OrderReturnOrExchangeViewState) mutableState.getF10755b()).d;
                        boolean zK2 = gapComposerH.K(mutableState) | (i6 == 4) | ((i5 & 112) == 32);
                        Object objX8 = gapComposerH.x();
                        if (zK2 || objX8 == composer$Companion$Empty$1) {
                            objX8 = new Function0() { // from class: zi0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    String str;
                                    TransactionItemUiModel transactionItemUiModel;
                                    int i8 = i3;
                                    MutableState mutableState2 = mutableState;
                                    Function0 function9 = function0;
                                    OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel2 = orderReturnOrExchangeViewModel;
                                    switch (i8) {
                                        case 0:
                                            orderReturnOrExchangeViewModel2.X7(null);
                                            List<OrderReturnOrExchangeItemUiModel> list = ((OrderReturnOrExchangeViewState) mutableState2.getF10755b()).f60311f;
                                            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                                            for (OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel : list) {
                                                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                                                String str2 = orderReturnOrExchangeItemUiModel.f60302a.g;
                                                companion.getClass();
                                                SkuIdUiModel.Companion.b(str2);
                                                arrayList.add(new SkuId(str2));
                                            }
                                            orderReturnOrExchangeViewModel2.c0(new OrderTrackingUiModel.ReturnValidationClick(arrayList));
                                            function9.mo47invoke();
                                            break;
                                        default:
                                            OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel2 = ((OrderReturnOrExchangeViewState) mutableState2.getF10755b()).l;
                                            if (orderReturnOrExchangeItemUiModel2 == null || (transactionItemUiModel = orderReturnOrExchangeItemUiModel2.f60302a) == null) {
                                                str = null;
                                            } else {
                                                str = transactionItemUiModel.g;
                                                SkuIdUiModel.f61763c.getClass();
                                                SkuIdUiModel.Companion.b(str);
                                            }
                                            orderReturnOrExchangeViewModel2.c0(new OrderTrackingUiModel.ValidateBottomSheetClick(CollectionsKt.Q(str != null ? new SkuId(str) : null)));
                                            orderReturnOrExchangeViewModel2.X7(null);
                                            function9.mo47invoke();
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX8);
                        }
                        OrderReturnOrExchangeComponentsKt.j(confirmReturnResponseUiModel, (Function0) objX8, gapComposerH, 0);
                        gapComposerH.Z(false);
                    } else if (orderReturnOrExchangeBottomSheet instanceof OrderReturnOrExchangeBottomSheet.ExchangeRequest) {
                        gapComposerH.L(1806756609);
                        ExchangeSubmitResponseUiModel exchangeSubmitResponseUiModel = ((OrderReturnOrExchangeViewState) mutableState.getF10755b()).n;
                        boolean zK3 = gapComposerH.K(mutableState) | (i6 == 4);
                        Object objX9 = gapComposerH.x();
                        if (zK3 || objX9 == composer$Companion$Empty$1) {
                            objX9 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$6$4$1(orderReturnOrExchangeViewModel, mutableState, null);
                            gapComposerH.q(objX9);
                        }
                        EffectsKt.e(gapComposerH, exchangeSubmitResponseUiModel, (Function2) objX9);
                        ExchangeSubmitResponseUiModel exchangeSubmitResponseUiModel2 = ((OrderReturnOrExchangeViewState) mutableState.getF10755b()).n;
                        boolean zK4 = gapComposerH.K(mutableState) | (i6 == 4) | ((i5 & 896) == 256);
                        Object objX10 = gapComposerH.x();
                        if (zK4 || objX10 == composer$Companion$Empty$1) {
                            i4 = 1;
                            objX10 = new Function0() { // from class: zi0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    String str;
                                    TransactionItemUiModel transactionItemUiModel;
                                    int i8 = i4;
                                    MutableState mutableState2 = mutableState;
                                    Function0 function9 = function1;
                                    OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel2 = orderReturnOrExchangeViewModel;
                                    switch (i8) {
                                        case 0:
                                            orderReturnOrExchangeViewModel2.X7(null);
                                            List<OrderReturnOrExchangeItemUiModel> list = ((OrderReturnOrExchangeViewState) mutableState2.getF10755b()).f60311f;
                                            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                                            for (OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel : list) {
                                                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                                                String str2 = orderReturnOrExchangeItemUiModel.f60302a.g;
                                                companion.getClass();
                                                SkuIdUiModel.Companion.b(str2);
                                                arrayList.add(new SkuId(str2));
                                            }
                                            orderReturnOrExchangeViewModel2.c0(new OrderTrackingUiModel.ReturnValidationClick(arrayList));
                                            function9.mo47invoke();
                                            break;
                                        default:
                                            OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel2 = ((OrderReturnOrExchangeViewState) mutableState2.getF10755b()).l;
                                            if (orderReturnOrExchangeItemUiModel2 == null || (transactionItemUiModel = orderReturnOrExchangeItemUiModel2.f60302a) == null) {
                                                str = null;
                                            } else {
                                                str = transactionItemUiModel.g;
                                                SkuIdUiModel.f61763c.getClass();
                                                SkuIdUiModel.Companion.b(str);
                                            }
                                            orderReturnOrExchangeViewModel2.c0(new OrderTrackingUiModel.ValidateBottomSheetClick(CollectionsKt.Q(str != null ? new SkuId(str) : null)));
                                            orderReturnOrExchangeViewModel2.X7(null);
                                            function9.mo47invoke();
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX10);
                        } else {
                            i4 = 1;
                        }
                        OrderReturnOrExchangeComponentsKt.c(exchangeSubmitResponseUiModel2, (Function0) objX10, gapComposerH, 0);
                        gapComposerH.Z(false);
                    } else {
                        i4 = 1;
                        if (!(orderReturnOrExchangeBottomSheet instanceof OrderReturnOrExchangeBottomSheet.SizeGuide)) {
                            throw d21.u(gapComposerH, 1997914193, false);
                        }
                        gapComposerH.L(1997978043);
                        OrderReturnOrExchangeBottomSheet.SizeGuide.SizeGuideRequest sizeGuideRequest = ((OrderReturnOrExchangeBottomSheet.SizeGuide) orderReturnOrExchangeBottomSheet).f60294a;
                        boolean z3 = i6 == 4;
                        Object objX11 = gapComposerH.x();
                        if (z3 || objX11 == composer$Companion$Empty$1) {
                            objX11 = new ui0(orderReturnOrExchangeViewModel, 0);
                            gapComposerH.q(objX11);
                        }
                        OrderReturnOrExchangeComponentsKt.k(sizeGuideRequest, (Function0) objX11, gapComposerH, 0);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(false);
                }
                i4 = 1;
                gapComposerH.Z(false);
            }
            Unit unit = Unit.f71739a;
            int i8 = i6 != 4 ? i3 : i4;
            if (i7 == 2048) {
                i3 = i4;
            }
            int i9 = i8 | i3;
            Object objX12 = gapComposerH.x();
            if (i9 != 0 || objX12 == composer$Companion$Empty$1) {
                objX12 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$7$1(orderReturnOrExchangeViewModel, function3, null);
                gapComposerH.q(objX12);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX12);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv((Object) orderReturnOrExchangeViewModel, (Object) function0, (Object) function1, (Object) function3, i2, 16);
        }
    }
}

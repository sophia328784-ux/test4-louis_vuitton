package defpackage;

import androidx.compose.runtime.State;
import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import com.vuitton.android.presentation.screen.orders.components.exchange.ReturnOrExchangeRoute;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.models.OrderTrackingUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.VariationsResponseUiModel;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class vi0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80588b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OrderReturnOrExchangeViewModel f80589c;
    public final /* synthetic */ NavHostController d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ State f80590e;

    public /* synthetic */ vi0(OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel, NavHostController navHostController, State state, int i2) {
        this.f80588b = i2;
        this.f80589c = orderReturnOrExchangeViewModel;
        this.d = navHostController;
        this.f80590e = state;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        String str;
        Object exchangeReview;
        TransactionItemUiModel transactionItemUiModel;
        TransactionItemUiModel transactionItemUiModel2;
        String str2;
        TransactionItemUiModel transactionItemUiModel3;
        String str3;
        TransactionItemUiModel transactionItemUiModel4;
        int i2 = this.f80588b;
        State state = this.f80590e;
        NavHostController navHostController = this.d;
        OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel = this.f80589c;
        switch (i2) {
            case 0:
                orderReturnOrExchangeViewModel.o3();
                List<OrderReturnOrExchangeItemUiModel> list = ((OrderReturnOrExchangeViewState) state.getF10755b()).f60311f;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                for (OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel : list) {
                    SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                    String str4 = orderReturnOrExchangeItemUiModel.f60302a.g;
                    companion.getClass();
                    SkuIdUiModel.Companion.b(str4);
                    arrayList.add(new SkuId(str4));
                }
                orderReturnOrExchangeViewModel.c0(new OrderTrackingUiModel.ReturnContinueClick(arrayList));
                NavController.d(navHostController, ((OrderReturnOrExchangeViewState) state.getF10755b()).p ? ReturnOrExchangeRoute.Selection.INSTANCE : ReturnOrExchangeRoute.ReturnSummary.INSTANCE, null, 6);
                break;
            case 1:
                OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel2 = ((OrderReturnOrExchangeViewState) state.getF10755b()).l;
                if (orderReturnOrExchangeItemUiModel2 == null || (transactionItemUiModel2 = orderReturnOrExchangeItemUiModel2.f60302a) == null) {
                    str = null;
                } else {
                    str = transactionItemUiModel2.g;
                    SkuIdUiModel.f61763c.getClass();
                    SkuIdUiModel.Companion.b(str);
                }
                orderReturnOrExchangeViewModel.c0(new OrderTrackingUiModel.RequestExchangeClick(CollectionsKt.Q(str != null ? new SkuId(str) : null)));
                if (((OrderReturnOrExchangeViewState) state.getF10755b()).f60309c instanceof VariationsResponseUiModel.Skip) {
                    orderReturnOrExchangeViewModel.E2();
                    OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel3 = ((OrderReturnOrExchangeViewState) state.getF10755b()).l;
                    String str5 = (orderReturnOrExchangeItemUiModel3 == null || (transactionItemUiModel = orderReturnOrExchangeItemUiModel3.f60302a) == null) ? null : transactionItemUiModel.g;
                    if (str5 == null) {
                        str5 = "";
                    }
                    exchangeReview = new ReturnOrExchangeRoute.ExchangeReview(str5);
                } else {
                    exchangeReview = ReturnOrExchangeRoute.ExchangeVariation.INSTANCE;
                }
                NavController.d(navHostController, exchangeReview, null, 6);
                break;
            case 2:
                OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel4 = ((OrderReturnOrExchangeViewState) state.getF10755b()).l;
                if (orderReturnOrExchangeItemUiModel4 == null || (transactionItemUiModel3 = orderReturnOrExchangeItemUiModel4.f60302a) == null) {
                    str2 = null;
                } else {
                    str2 = transactionItemUiModel3.g;
                    SkuIdUiModel.f61763c.getClass();
                    SkuIdUiModel.Companion.b(str2);
                }
                orderReturnOrExchangeViewModel.c0(new OrderTrackingUiModel.RequestReturnClick(CollectionsKt.Q(str2 != null ? new SkuId(str2) : null)));
                NavController.d(navHostController, ReturnOrExchangeRoute.ReturnSummary.INSTANCE, null, 6);
                break;
            default:
                OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel5 = ((OrderReturnOrExchangeViewState) state.getF10755b()).l;
                if (orderReturnOrExchangeItemUiModel5 == null || (transactionItemUiModel4 = orderReturnOrExchangeItemUiModel5.f60302a) == null) {
                    str3 = null;
                } else {
                    str3 = transactionItemUiModel4.g;
                    SkuIdUiModel.f61763c.getClass();
                    SkuIdUiModel.Companion.b(str3);
                }
                orderReturnOrExchangeViewModel.c0(new OrderTrackingUiModel.ModifyVariationClick(CollectionsKt.Q(str3 != null ? new SkuId(str3) : null)));
                navHostController.e();
                break;
        }
        return Unit.f71739a;
    }
}

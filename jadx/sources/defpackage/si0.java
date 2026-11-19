package defpackage;

import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import com.vuitton.android.presentation.screen.orders.OrderRoute$ReturnOrExchange;
import com.vuitton.android.presentation.screen.orders.models.OrderTrackingUiModel;
import com.vuitton.android.presentation.screen.orders.models.PurchasedOrderUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionUiModel;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class si0 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OrderViewModel f79803c;
    public final /* synthetic */ NavHostController d;

    public /* synthetic */ si0(OrderViewModel orderViewModel, NavHostController navHostController, int i2) {
        this.f79802b = i2;
        this.f79803c = orderViewModel;
        this.d = navHostController;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        String str;
        int i2 = this.f79802b;
        NavHostController navHostController = this.d;
        OrderViewModel orderViewModel = this.f79803c;
        switch (i2) {
            case 0:
                String str2 = (String) obj;
                TransactionItemUiModel transactionItemUiModel = (TransactionItemUiModel) obj2;
                boolean zBooleanValue = ((Boolean) obj3).booleanValue();
                str2.getClass();
                SkuId.Companion companion = SkuId.INSTANCE;
                if (transactionItemUiModel != null) {
                    str = transactionItemUiModel.g;
                    SkuIdUiModel.f61763c.getClass();
                    SkuIdUiModel.Companion.b(str);
                } else {
                    str = null;
                }
                companion.getClass();
                if (str == null) {
                    str = SkuId.f67932b;
                }
                orderViewModel.c0(new OrderTrackingUiModel.ReturnOrExchangeDetailClick(n00.v(str), zBooleanValue));
                NavController.d(navHostController, new OrderRoute$ReturnOrExchange(str2), null, 6);
                break;
            default:
                PurchasedOrderUiModel purchasedOrderUiModel = (PurchasedOrderUiModel) obj;
                TransactionUiModel transactionUiModel = (TransactionUiModel) obj2;
                TransactionItemUiModel transactionItemUiModel2 = (TransactionItemUiModel) obj3;
                purchasedOrderUiModel.getClass();
                transactionUiModel.getClass();
                transactionItemUiModel2.getClass();
                orderViewModel.c0(OrderTrackingUiModel.ReturnClick.f60359a);
                NavController.c(navHostController);
                orderViewModel.I4(purchasedOrderUiModel, transactionUiModel.f60421a, transactionItemUiModel2);
                break;
        }
        return Unit.f71739a;
    }
}

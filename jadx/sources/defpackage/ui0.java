package defpackage;

import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeBottomSheet;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ui0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OrderReturnOrExchangeViewModel f80327c;

    public /* synthetic */ ui0(OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel, int i2) {
        this.f80326b = i2;
        this.f80327c = orderReturnOrExchangeViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80326b;
        OrderReturnOrExchangeBottomSheet.Policy policy = OrderReturnOrExchangeBottomSheet.Policy.f60292a;
        OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel = this.f80327c;
        switch (i2) {
            case 0:
                orderReturnOrExchangeViewModel.X7(null);
                break;
            case 1:
                orderReturnOrExchangeViewModel.X7(policy);
                break;
            case 2:
                orderReturnOrExchangeViewModel.X7(policy);
                break;
            default:
                orderReturnOrExchangeViewModel.X7(null);
                break;
        }
        return Unit.f71739a;
    }
}

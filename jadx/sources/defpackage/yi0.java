package defpackage;

import androidx.navigation.NavHostController;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class yi0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81371b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OrderReturnOrExchangeViewModel f81372c;
    public final /* synthetic */ NavHostController d;

    public /* synthetic */ yi0(NavHostController navHostController, OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel) {
        this.f81371b = 0;
        this.d = navHostController;
        this.f81372c = orderReturnOrExchangeViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f81371b) {
            case 0:
                this.d.e();
                this.f81372c.P5();
                break;
            case 1:
                this.f81372c.Oa();
                this.d.e();
                break;
            default:
                this.f81372c.Oa();
                this.d.e();
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ yi0(OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel, NavHostController navHostController, int i2) {
        this.f81371b = i2;
        this.f81372c = orderReturnOrExchangeViewModel;
        this.d = navHostController;
    }
}

package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeReviewComposableKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeSelectionComposableKt;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ji0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71404b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OrderReturnOrExchangeViewModel f71405c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f71406e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f71407f;
    public final /* synthetic */ Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function0 f71408h;

    public /* synthetic */ ji0(OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, int i2, int i3) {
        this.f71404b = i3;
        this.f71405c = orderReturnOrExchangeViewModel;
        this.d = function0;
        this.f71406e = function1;
        this.f71407f = function2;
        this.g = function3;
        this.f71408h = function4;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f71404b) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                OrderExchangeReviewComposableKt.a(this.f71405c, this.d, this.f71406e, this.f71407f, this.g, this.f71408h, (Composer) obj, iA);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                OrderReturnOrExchangeSelectionComposableKt.a(this.f71405c, this.d, this.f71406e, this.f71407f, this.g, this.f71408h, (Composer) obj, iA2);
                break;
        }
        return Unit.f71739a;
    }
}

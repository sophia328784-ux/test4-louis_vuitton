package com.vuitton.android.presentation.screen.orders;

import androidx.navigation.NavHostController;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OrderNavHostKt$OrderNavHost$5$1$3$1$1 extends FunctionReferenceImpl implements Function0<Unit> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ NavHostController f60090b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OrderViewModel f60091c;
    public final /* synthetic */ Function1 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderNavHostKt$OrderNavHost$5$1$3$1$1(NavHostController navHostController, OrderViewModel orderViewModel, Function1 function1) {
        super(0, Intrinsics.Kotlin.class, "refreshOrdersAndRedirect", "OrderNavHost$refreshOrdersAndRedirect(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;Lkotlin/jvm/functions/Function1;)V", 0);
        this.f60090b = navHostController;
        this.f60091c = orderViewModel;
        this.d = function1;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        OrderNavHostKt.b(this.f60090b, this.f60091c, this.d);
        return Unit.f71739a;
    }
}

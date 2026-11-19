package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeReasonScreenKt;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class bj0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20890b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OrderReturnOrExchangeViewState f20891c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ bj0(OrderReturnOrExchangeViewState orderReturnOrExchangeViewState, Function0 function0, int i2) {
        this.f20890b = i2;
        this.f20891c = orderReturnOrExchangeViewState;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f20890b;
        Function0 function0 = this.d;
        OrderReturnOrExchangeViewState orderReturnOrExchangeViewState = this.f20891c;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                OrderReturnOrExchangeReasonScreenKt.c(orderReturnOrExchangeViewState, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 1:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    OrderReturnOrExchangeReasonScreenKt.f(orderReturnOrExchangeViewState, function0, composer, 0);
                } else {
                    composer.D();
                }
                break;
            case 2:
                ((Integer) obj2).getClass();
                OrderReturnOrExchangeReasonScreenKt.f(orderReturnOrExchangeViewState, function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            default:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer2, orderReturnOrExchangeViewState.f60313i.f60301c ? R.string.exchange_select_reason_header : R.string.return_select_reason_header), null, null, this.d, null, null, null, null, composer2, 0, 0, 4023);
                } else {
                    composer2.D();
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ bj0(OrderReturnOrExchangeViewState orderReturnOrExchangeViewState, Function0 function0, int i2, int i3) {
        this.f20890b = i3;
        this.f20891c = orderReturnOrExchangeViewState;
        this.d = function0;
    }
}

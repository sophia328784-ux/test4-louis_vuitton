package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeComponentsKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderResultScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ti0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80063b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f80064c;
    public final /* synthetic */ float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f80065e;

    public /* synthetic */ ti0(String str, float f2, int i2, int i3) {
        this.f80063b = i3;
        this.f80064c = str;
        this.d = f2;
        this.f80065e = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (this.f80063b) {
            case 0:
                num.intValue();
                OrderReturnOrExchangeComponentsKt.g(this.d, RecomposeScopeImplKt.a(this.f80065e | 1), composer, this.f80064c);
                break;
            default:
                num.getClass();
                ShadeFinderResultScreenKt.b(this.d, RecomposeScopeImplKt.a(this.f80065e | 1), composer, this.f80064c);
                break;
        }
        return Unit.f71739a;
    }
}

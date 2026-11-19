package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.booking.pass.components.PassHeaderKt;
import com.vuitton.android.presentation.screen.certificates.components.visionnaire.CertificateVisionnaireContentKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeReviewScreenKt;
import com.vuitton.android.presentation.screen.pdp.bottomsheet.ServerOverloadContentBottomSheetKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class fm implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69169b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f69170c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f69171e;

    public /* synthetic */ fm(int i2, int i3, String str, String str2, String str3) {
        this.f69169b = i3;
        this.f69170c = str;
        this.d = str2;
        this.f69171e = str3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69169b;
        String str = this.f69171e;
        String str2 = this.d;
        String str3 = this.f69170c;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                CertificateVisionnaireContentKt.d(str3, str2, str, composer, RecomposeScopeImplKt.a(1));
                break;
            case 1:
                OrderExchangeReviewScreenKt.f(str3, str2, str, composer, RecomposeScopeImplKt.a(1));
                break;
            case 2:
                PassHeaderKt.a(str3, str2, str, composer, RecomposeScopeImplKt.a(1));
                break;
            default:
                ServerOverloadContentBottomSheetKt.b(str3, str2, str, composer, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }
}

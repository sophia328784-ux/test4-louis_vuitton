package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import com.vuitton.android.presentation.screen.thankyou.models.CheckoutConfirmationDetailUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class o31 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76683b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f76684c;
    public final /* synthetic */ CheckoutConfirmationDetailUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f76685e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f76686f;

    public /* synthetic */ o31(Modifier modifier, CheckoutConfirmationDetailUiModel checkoutConfirmationDetailUiModel, boolean z, int i2, int i3) {
        this.f76683b = i3;
        this.f76684c = modifier;
        this.d = checkoutConfirmationDetailUiModel;
        this.f76685e = z;
        this.f76686f = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (this.f76683b) {
            case 0:
                num.intValue();
                ThankYouScreenKt.l(this.f76684c, this.d, this.f76685e, composer, RecomposeScopeImplKt.a(this.f76686f | 1));
                break;
            default:
                num.getClass();
                ThankYouScreenKt.g(this.f76684c, this.d, this.f76685e, composer, RecomposeScopeImplKt.a(this.f76686f | 1));
                break;
        }
        return Unit.f71739a;
    }
}

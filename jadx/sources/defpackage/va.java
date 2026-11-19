package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.tooling.ComposableInvoker;
import androidx.compose.ui.tooling.PreviewActivity;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideTextBottomSheetKt;
import com.vuitton.android.presentation.screen.certificates.components.transfer.TransferCertificateConfirmationComposableKt;
import com.vuitton.android.presentation.screen.certificates.components.visionnaire.CertificateVisionnaireContentKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeReviewScreenKt;
import com.vuitton.android.presentation.screen.pdp.bottomsheet.DisclaimerBottomSheetKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffScreenKt;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListBffScreenKt;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class va implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f80540c;
    public final /* synthetic */ String d;

    public /* synthetic */ va(String str, String str2) {
        this.f80539b = 4;
        this.f80540c = str;
        this.d = str2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) throws Exception {
        int i2 = this.f80539b;
        String str = this.d;
        String str2 = this.f80540c;
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (i2) {
            case 0:
                num.getClass();
                AudioGuideTextBottomSheetKt.a(str2, str, composer, RecomposeScopeImplKt.a(1));
                break;
            case 1:
                num.getClass();
                CertificateVisionnaireContentKt.c(str2, str, composer, RecomposeScopeImplKt.a(1));
                break;
            case 2:
                num.getClass();
                DisclaimerBottomSheetKt.a(str2, str, composer, RecomposeScopeImplKt.a(1));
                break;
            case 3:
                num.getClass();
                OrderExchangeReviewScreenKt.e(str2, str, composer, RecomposeScopeImplKt.a(1));
                break;
            case 4:
                int iIntValue = num.intValue();
                int i3 = PreviewActivity.f10996h;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ComposableInvoker.c(str2, str, composer, new Object[0]);
                } else {
                    composer.D();
                }
                break;
            case 5:
                num.getClass();
                RepairDetailBffScreenKt.g(str2, str, composer, RecomposeScopeImplKt.a(1));
                break;
            case 6:
                num.getClass();
                RepairListBffScreenKt.a(str2, str, composer, RecomposeScopeImplKt.a(1));
                break;
            case 7:
                num.getClass();
                RepairListScreenKt.a(str2, str, composer, RecomposeScopeImplKt.a(1));
                break;
            default:
                num.getClass();
                TransferCertificateConfirmationComposableKt.c(str2, str, composer, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ va(String str, String str2, int i2, int i3) {
        this.f80539b = i3;
        this.f80540c = str;
        this.d = str2;
    }
}

package defpackage;

import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import com.vuitton.android.presentation.screen.thankyou.models.CheckoutConfirmationDetailUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class n31 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76438b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CheckoutConfirmationDetailUiModel f76439c;

    public /* synthetic */ n31(CheckoutConfirmationDetailUiModel checkoutConfirmationDetailUiModel, int i2) {
        this.f76438b = i2;
        this.f76439c = checkoutConfirmationDetailUiModel;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76438b;
        CheckoutConfirmationDetailUiModel checkoutConfirmationDetailUiModel = this.f76439c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                float f2 = ThankYouScreenKt.f65243a;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    String str = checkoutConfirmationDetailUiModel.m;
                    if (str == null || !(!StringsKt.w(str))) {
                        composer.L(-1192687521);
                        composer.F();
                    } else {
                        composer.L(-1193015222);
                        ThankYouScreenKt.c(null, StringResources_androidKt.c(composer, R.string.checkout_gifting_card_title), null, 2131231098, checkoutConfirmationDetailUiModel.m, composer, 0, 5);
                        composer.F();
                    }
                    if (checkoutConfirmationDetailUiModel.l) {
                        composer.L(-1192619538);
                        ThankYouScreenKt.c(null, StringResources_androidKt.c(composer, R.string.checkout_shopping_bag_option), null, 2131231320, StringResources_androidKt.c(composer, R.string.checkout_selected_label), composer, 0, 5);
                        composer.F();
                    } else {
                        composer.L(-1192264929);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                break;
            case 1:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                float f3 = ThankYouScreenKt.f65243a;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    TextKt.c(checkoutConfirmationDetailUiModel.d.f65274a, n00.g("DeliveryAndPaymentExpandedContent$lambda$0$0", "thankYou_shippingMethodValue_text"), LVAppDesignKitTheme.c(composer2).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).l, composer2, 0, 0, 131064);
                } else {
                    composer2.D();
                }
                break;
            case 2:
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                float f4 = ThankYouScreenKt.f65243a;
                if (composer3.p(1 & iIntValue3, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    ThankYouScreenKt.b(null, checkoutConfirmationDetailUiModel.f65258e, composer3, 0);
                } else {
                    composer3.D();
                }
                break;
            case 3:
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                float f5 = ThankYouScreenKt.f65243a;
                if (composer4.p(1 & iIntValue4, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    ThankYouScreenKt.b(null, checkoutConfirmationDetailUiModel.f65259f, composer4, 0);
                } else {
                    composer4.D();
                }
                break;
            default:
                Composer composer5 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                float f6 = ThankYouScreenKt.f65243a;
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    TextKt.c(checkoutConfirmationDetailUiModel.n, n00.g("DeliveryAndPaymentExpandedContent$lambda$0$3", "thankYou_paymentMethodValue_text"), LVAppDesignKitTheme.c(composer5).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer5).l, composer5, 0, 0, 131064);
                } else {
                    composer5.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}

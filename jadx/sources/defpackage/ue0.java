package defpackage;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import com.vuitton.android.presentation.screen.cart.models.EmptyCartAction;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ue0 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80297b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f80298c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ ue0(SnackbarHostState snackbarHostState, Function0 function0, int i2) {
        this.f80297b = i2;
        this.f80298c = snackbarHostState;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        switch (this.f80297b) {
            case 0:
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer.K(paddingValues) ? 4 : 2;
                }
                if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    LVEmptyViewKt.d(ModifierExtKt.e(PaddingKt.h(new DTFunctionNameModifier("NativeCartEmptyScreen$lambda$0"), paddingValues), "cart_empty_view"), LVAppDesignKitTheme.g(composer).F0, this.f80298c, StringResources_androidKt.c(composer, R.string.global_empty_shopping_bag), null, null, true, null, StringResources_androidKt.c(composer, R.string.pf_start_shopping), this.d, EmptyCartAction.f55197a, null, composer, 1572864, 6, 2224);
                } else {
                    composer.D();
                }
                break;
            case 1:
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= composer2.K(paddingValues2) ? 4 : 2;
                }
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    LVEmptyViewKt.e(o60.e("NativeCartErrorScreen$lambda$0", paddingValues2), this.f80298c, StringResources_androidKt.c(composer2, R.string.mylv_error_ws_generic_label_title), null, null, StringResources_androidKt.c(composer2, R.string.button_try_again), this.d, composer2, 0, 120);
                } else {
                    composer2.D();
                }
                break;
            case 2:
                PaddingValues paddingValues3 = (PaddingValues) obj;
                Composer composer3 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                paddingValues3.getClass();
                if ((iIntValue3 & 6) == 0) {
                    iIntValue3 |= composer3.K(paddingValues3) ? 4 : 2;
                }
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 19) != 18)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    LVEmptyViewKt.d(o60.e("OrderListEmptyScreen$lambda$1", paddingValues3).o(SizeKt.f5052c), LVAppDesignKitTheme.g(composer3).E0, this.f80298c, StringResources_androidKt.c(composer3, R.string.mylv_myorders_noorderscreen_title), null, null, false, null, StringResources_androidKt.c(composer3, R.string.order_empty_discover_products), this.d, null, null, composer3, 0, 0, 3312);
                } else {
                    composer3.D();
                }
                break;
            case 3:
                PaddingValues paddingValues4 = (PaddingValues) obj;
                Composer composer4 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                paddingValues4.getClass();
                if ((iIntValue4 & 6) == 0) {
                    iIntValue4 |= composer4.K(paddingValues4) ? 4 : 2;
                }
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 19) != 18)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    LVEmptyViewKt.d(o60.e("OsaListEmptyScreen$lambda$0", paddingValues4), LVAppDesignKitTheme.g(composer4).I0, this.f80298c, StringResources_androidKt.c(composer4, R.string.osa_no_ongoing_appointment_subtitle), null, null, false, null, StringResources_androidKt.c(composer4, R.string.osa_mylv_cta_create_new_appointment), this.d, null, null, composer4, 0, 0, 3312);
                } else {
                    composer4.D();
                }
                break;
            case 4:
                PaddingValues paddingValues5 = (PaddingValues) obj;
                Composer composer5 = (Composer) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                paddingValues5.getClass();
                if ((iIntValue5 & 6) == 0) {
                    iIntValue5 |= composer5.K(paddingValues5) ? 4 : 2;
                }
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 19) != 18)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    LVEmptyViewKt.e(o60.e("OsaListErrorScreen$lambda$0", paddingValues5), this.f80298c, StringResources_androidKt.c(composer5, R.string.osa_error_ws_title), StringResources_androidKt.c(composer5, R.string.osa_error_ws_subtitle), null, StringResources_androidKt.c(composer5, R.string.button_try_again), this.d, composer5, 0, 112);
                } else {
                    composer5.D();
                }
                break;
            default:
                PaddingValues paddingValues6 = (PaddingValues) obj;
                Composer composer6 = (Composer) obj2;
                int iIntValue6 = ((Integer) obj3).intValue();
                paddingValues6.getClass();
                if ((iIntValue6 & 6) == 0) {
                    iIntValue6 |= composer6.K(paddingValues6) ? 4 : 2;
                }
                if (composer6.p(iIntValue6 & 1, (iIntValue6 & 19) != 18)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    LVEmptyViewKt.e(o60.e("WishlistErrorScreen$lambda$0", paddingValues6), this.f80298c, StringResources_androidKt.c(composer6, R.string.error_generic), null, null, StringResources_androidKt.c(composer6, R.string.button_try_again), this.d, composer6, 0, 120);
                } else {
                    composer6.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}

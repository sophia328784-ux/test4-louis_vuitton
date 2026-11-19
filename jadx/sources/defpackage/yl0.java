package defpackage;

import androidx.compose.runtime.MutableState;
import androidx.core.content.ContextCompat;
import com.vuitton.android.platform.extensions.IntentExtensionKt;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import com.vuitton.android.presentation.screen.pdp.PdpAddToCartCommonKt;
import com.vuitton.android.presentation.screen.pdp.PdpDestinations;
import com.vuitton.android.presentation.screen.pdp.PdpDestinationsKt;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class yl0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81389b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PdpActivity f81390c;
    public final /* synthetic */ MutableState d;

    public /* synthetic */ yl0(MutableState mutableState, PdpActivity pdpActivity, int i2) {
        this.f81389b = i2;
        this.d = mutableState;
        this.f81390c = pdpActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f81389b;
        MutableState mutableState = this.d;
        PdpActivity pdpActivity = this.f81390c;
        switch (i2) {
            case 0:
                PdpActivity.Companion companion = PdpActivity.D;
                ProductUiModel productUiModel = ((PdpViewState) mutableState.getF10755b()).f61566b;
                if (productUiModel != null) {
                    pdpActivity.startActivity(PdpDestinationsKt.a(new PdpDestinations.ToBeautyVtoPage(productUiModel), pdpActivity));
                }
                break;
            case 1:
                PdpActivity.Companion companion2 = PdpActivity.D;
                PdpAddToCartCommonKt.a(pdpActivity, ((PdpViewState) mutableState.getF10755b()).f61572j.f61549a);
                break;
            case 2:
                PdpActivity.Companion companion3 = PdpActivity.D;
                if (!((PdpViewState) mutableState.getF10755b()).m || pdpActivity.I().F()) {
                    pdpActivity.finish();
                }
                break;
            case 3:
                PdpActivity.Companion companion4 = PdpActivity.D;
                ProductUiModel productUiModel2 = ((PdpViewState) mutableState.getF10755b()).f61566b;
                if (productUiModel2 != null) {
                    pdpActivity.startActivity(PdpDestinationsKt.a(new PdpDestinations.ToArPage(productUiModel2.f61735b, null), pdpActivity));
                }
                break;
            case 4:
                PdpActivity.Companion companion5 = PdpActivity.D;
                ProductUiModel productUiModel3 = ((PdpViewState) mutableState.getF10755b()).f61566b;
                if (productUiModel3 != null) {
                    if (ContextCompat.checkSelfPermission(pdpActivity, "android.permission.CAMERA") == 0) {
                        pdpActivity.J(productUiModel3);
                    } else {
                        pdpActivity.C = new rh0(pdpActivity, productUiModel3, 27);
                        pdpActivity.B.a("android.permission.CAMERA");
                    }
                }
                break;
            case 5:
                PdpActivity.Companion companion6 = PdpActivity.D;
                String str = ((PdpViewState) mutableState.getF10755b()).f61572j.f61552e;
                if (str != null) {
                    ActivityExtKt.j(pdpActivity, str, null, 6);
                }
                break;
            case 6:
                PdpActivity.Companion companion7 = PdpActivity.D;
                if (((PdpViewState) mutableState.getF10755b()).f61571i.f61559h) {
                    pdpActivity.startActivity(PdpDestinationsKt.a(PdpDestinations.ToNativeCartPage.f61109a, pdpActivity));
                } else {
                    pdpActivity.startActivity(PdpDestinationsKt.a(new PdpDestinations.ToWebViewPage(((PdpViewState) mutableState.getF10755b()).f61572j.f61550b, true), pdpActivity));
                }
                break;
            default:
                PdpActivity.Companion companion8 = PdpActivity.D;
                if (((PdpViewState) mutableState.getF10755b()).t) {
                    pdpActivity.I().F0();
                } else {
                    pdpActivity.x = new xl0(pdpActivity, 11);
                    IntentExtensionKt.b(PdpDestinationsKt.a(new PdpDestinations.ToWelcomePage(LoginContext.WISHLIST), pdpActivity), pdpActivity.y);
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ yl0(PdpActivity pdpActivity, MutableState mutableState, int i2) {
        this.f81389b = i2;
        this.f81390c = pdpActivity;
        this.d = mutableState;
    }
}

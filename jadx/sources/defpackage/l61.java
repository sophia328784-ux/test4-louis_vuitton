package defpackage;

import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.presentation.screen.cart.models.CartPreviousScreen;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
import com.vuitton.android.presentation.screen.webview.WebViewFragment;
import com.vuitton.android.presentation.screen.webview.WebViewTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class l61 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75957b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WebViewFragment f75958c;

    public /* synthetic */ l61(WebViewFragment webViewFragment, int i2) {
        this.f75957b = i2;
        this.f75958c = webViewFragment;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        String string;
        CustomizationType customizationTypeValueOf;
        int i2 = this.f75957b;
        WebViewFragment webViewFragment = this.f75958c;
        switch (i2) {
            case 0:
                WebViewFragment.Companion companion = WebViewFragment.n1;
                Bundle arguments = webViewFragment.getArguments();
                return Boolean.valueOf(arguments != null ? arguments.getBoolean("KEY_IS_DISTANT_REPAIR_PBL") : false);
            case 1:
                WebViewFragment.Companion companion2 = WebViewFragment.n1;
                Bundle arguments2 = webViewFragment.getArguments();
                return Boolean.valueOf(arguments2 != null ? arguments2.getBoolean("KEY_SHOW_CONTACT_US") : false);
            case 2:
                WebViewFragment.Companion companion3 = WebViewFragment.n1;
                Bundle arguments3 = webViewFragment.getArguments();
                return (arguments3 == null || (string = arguments3.getString("CUSTOMIZATION_TYPE")) == null || (customizationTypeValueOf = CustomizationType.valueOf(string)) == null) ? CustomizationType.NO_CUSTOMIZATION : customizationTypeValueOf;
            case 3:
                WebViewFragment.Companion companion4 = WebViewFragment.n1;
                if (((Boolean) webViewFragment.e1.getF71699b()).booleanValue()) {
                    webViewFragment.l1.setValue(Boolean.TRUE);
                } else if (webViewFragment.V()) {
                    webViewFragment.m1.setValue(Boolean.TRUE);
                } else {
                    FragmentActivity activity = webViewFragment.getActivity();
                    if (activity != null) {
                        if (activity.getSupportFragmentManager().J() > 0) {
                            activity.getSupportFragmentManager().V();
                        } else {
                            activity.finish();
                        }
                    }
                }
                return Unit.f71739a;
            case 4:
                WebViewFragment.Companion companion5 = WebViewFragment.n1;
                FragmentActivity activity2 = webViewFragment.getActivity();
                if (activity2 != null) {
                    activity2.setResult(-1, new Intent().putExtra("BOOKING_PAYMENT_SUCCESS", true));
                    activity2.finish();
                }
                return Unit.f71739a;
            case 5:
                WebViewFragment.Companion companion6 = WebViewFragment.n1;
                Bundle arguments4 = webViewFragment.getArguments();
                if (arguments4 != null) {
                    return arguments4.getString("URL");
                }
                return null;
            case 6:
                webViewFragment.m1.setValue(Boolean.TRUE);
                return Unit.f71739a;
            case 7:
                webViewFragment.m1.setValue(Boolean.FALSE);
                return Unit.f71739a;
            case 8:
                webViewFragment.l1.setValue(Boolean.TRUE);
                return Unit.f71739a;
            case 9:
                webViewFragment.l1.setValue(Boolean.FALSE);
                return Unit.f71739a;
            case 10:
                WebViewFragment.Companion companion7 = WebViewFragment.n1;
                return Boolean.valueOf(webViewFragment.Q() != CustomizationType.NO_CUSTOMIZATION);
            case 11:
                WebViewFragment.Companion companion8 = WebViewFragment.n1;
                switch (WebViewFragment.WhenMappings.f65468a[webViewFragment.Q().ordinal()]) {
                    case 1:
                        webViewFragment.T().zc(WebViewTrackingUiModel.OnMyMonogramWebViewBottomSheetConfirmEvent.f65527a);
                        break;
                    case 2:
                        webViewFragment.T().zc(WebViewTrackingUiModel.OnBeautyEngravingWebViewBottomSheetConfirmEvent.f65515a);
                        break;
                    case 3:
                        webViewFragment.T().zc(WebViewTrackingUiModel.OnHotstampingWebViewBottomSheetConfirmEvent.f65523a);
                        break;
                    case 4:
                        webViewFragment.T().zc(WebViewTrackingUiModel.OnPerfumeEngravingWebViewBottomSheetConfirmEvent.f65531a);
                        break;
                    case 5:
                        webViewFragment.T().zc(WebViewTrackingUiModel.OnDiamondEngravingWebViewBottomSheetConfirmEvent.f65519a);
                        break;
                    case 6:
                        break;
                    default:
                        v40.g();
                        return null;
                }
                webViewFragment.requireActivity().finish();
                return Unit.f71739a;
            case 12:
                WebViewFragment.Companion companion9 = WebViewFragment.n1;
                FragmentActivity activity3 = webViewFragment.getActivity();
                if (activity3 != null) {
                    activity3.setResult(-1, new Intent().putExtra("BOOKING_PAYMENT_EXIT", true));
                    activity3.finish();
                }
                return Unit.f71739a;
            case 13:
                webViewFragment.k1.setValue(Boolean.TRUE);
                return Unit.f71739a;
            case 14:
                WebViewFragment.Companion companion10 = WebViewFragment.n1;
                Bundle arguments5 = webViewFragment.getArguments();
                return Boolean.valueOf(arguments5 != null ? arguments5.getBoolean("KEY_IS_BOOKING_PAYMENT") : false);
            case 15:
                webViewFragment.l1.setValue(Boolean.FALSE);
                return Unit.f71739a;
            case 16:
                webViewFragment.m1.setValue(Boolean.FALSE);
                return Unit.f71739a;
            case 17:
                WebViewFragment.Companion companion11 = WebViewFragment.n1;
                Bundle arguments6 = webViewFragment.getArguments();
                return Boolean.valueOf(arguments6 != null ? arguments6.getBoolean("DISPLAY_TOOLBAR") : true);
            case 18:
                WebViewFragment.Companion companion12 = WebViewFragment.n1;
                Bundle arguments7 = webViewFragment.getArguments();
                return Boolean.valueOf(arguments7 != null ? arguments7.getBoolean("IS_CART") : false);
            case 19:
                WebViewFragment.Companion companion13 = WebViewFragment.n1;
                Bundle arguments8 = webViewFragment.getArguments();
                return Boolean.valueOf(arguments8 != null ? arguments8.getBoolean("IS_PLP_STORY") : false);
            case 20:
                WebViewFragment.Companion companion14 = WebViewFragment.n1;
                Bundle arguments9 = webViewFragment.getArguments();
                String string2 = arguments9 != null ? arguments9.getString("STORY_TITLE") : null;
                return string2 == null ? "" : string2;
            case 21:
                WebViewFragment.Companion companion15 = WebViewFragment.n1;
                Bundle arguments10 = webViewFragment.getArguments();
                if (arguments10 == null || !arguments10.containsKey("NATIVE_CHECKOUT_PREVIOUS_SCREEN")) {
                    return null;
                }
                return (CartPreviousScreen) CartPreviousScreen.a().get(webViewFragment.requireArguments().getInt("NATIVE_CHECKOUT_PREVIOUS_SCREEN"));
            default:
                WebViewFragment.Companion companion16 = WebViewFragment.n1;
                Bundle arguments11 = webViewFragment.getArguments();
                if (arguments11 != null) {
                    return arguments11.getString("KEY_CART_ID");
                }
                return null;
        }
    }
}

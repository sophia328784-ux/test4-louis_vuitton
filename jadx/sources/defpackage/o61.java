package defpackage;

import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.webview.WebViewFragment;
import com.vuitton.android.presentation.screen.webview.WebViewTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class o61 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76708b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LVModalBottomSheetState f76709c;
    public final /* synthetic */ WebViewFragment d;

    public /* synthetic */ o61(LVModalBottomSheetState lVModalBottomSheetState, WebViewFragment webViewFragment) {
        this.f76709c = lVModalBottomSheetState;
        this.d = webViewFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f76708b;
        WebViewFragment webViewFragment = this.d;
        LVModalBottomSheetState lVModalBottomSheetState = this.f76709c;
        switch (i2) {
            case 0:
                WebViewFragment.Companion companion = WebViewFragment.n1;
                switch (WebViewFragment.WhenMappings.f65468a[webViewFragment.Q().ordinal()]) {
                    case 1:
                        webViewFragment.T().zc(WebViewTrackingUiModel.OnMyMonogramWebViewBottomSheetCancelEvent.f65526a);
                        break;
                    case 2:
                        webViewFragment.T().zc(WebViewTrackingUiModel.OnBeautyEngravingWebViewBottomSheetCancelEvent.f65514a);
                        break;
                    case 3:
                        webViewFragment.T().zc(WebViewTrackingUiModel.OnHotstampingWebViewBottomSheetCancelEvent.f65522a);
                        break;
                    case 4:
                        webViewFragment.T().zc(WebViewTrackingUiModel.OnPerfumeEngravingWebViewBottomSheetCancelEvent.f65530a);
                        break;
                    case 5:
                        webViewFragment.T().zc(WebViewTrackingUiModel.OnDiamondEngravingWebViewBottomSheetCancelEvent.f65518a);
                        break;
                    case 6:
                        break;
                    default:
                        v40.g();
                        return null;
                }
                lVModalBottomSheetState.b(new l61(webViewFragment, 15));
                return Unit.f71739a;
            default:
                WebViewFragment.Companion companion2 = WebViewFragment.n1;
                lVModalBottomSheetState.b(new l61(webViewFragment, 16));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ o61(WebViewFragment webViewFragment, LVModalBottomSheetState lVModalBottomSheetState) {
        this.d = webViewFragment;
        this.f76709c = lVModalBottomSheetState;
    }
}

package defpackage;

import android.os.Build;
import android.webkit.WebView;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import com.sightcall.universal.internal.view.MyScreenshareProducerWebView;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightScreenKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightSkuPagerKt;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ku0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75873b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f75874c;

    public /* synthetic */ ku0(int i2, MutableState mutableState) {
        this.f75873b = i2;
        this.f75874c = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f75873b;
        final MutableState mutableState = this.f75874c;
        switch (i2) {
            case 0:
                Float f2 = (Float) obj;
                f2.getClass();
                return Float.valueOf(((Number) ((Function1) mutableState.getF10755b()).invoke(f2)).floatValue());
            case 1:
                if (Build.VERSION.SDK_INT < 31) {
                    float f3 = SpotlightScreenKt.f64602a;
                    mutableState.setValue(Float.valueOf(((Number) mutableState.getF10755b()).floatValue() == 1.5f ? 0.5f : 1.5f));
                } else {
                    float f4 = SpotlightScreenKt.f64602a;
                }
                return Unit.f71739a;
            case 2:
                ((Integer) obj).getClass();
                float f5 = SpotlightSkuPagerKt.f64617a;
                return Integer.valueOf(((Number) mutableState.getF10755b()).intValue());
            case 3:
                ((Integer) obj).getClass();
                float f6 = SpotlightSkuPagerKt.f64617a;
                return Integer.valueOf(-((Number) mutableState.getF10755b()).intValue());
            case 4:
                String str = (String) obj;
                str.getClass();
                mutableState.setValue(str);
                return Unit.f71739a;
            case 5:
                Integer num = (Integer) obj;
                num.getClass();
                mutableState.setValue(new Pair(num, -1));
                return Unit.f71739a;
            case 6:
                ((Function1) mutableState.getF10755b()).invoke((Offset) obj);
                return Unit.f71739a;
            case 7:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                mutableState.setValue(bool);
                return Unit.f71739a;
            case 8:
                Boolean bool2 = (Boolean) obj;
                bool2.booleanValue();
                mutableState.setValue(bool2);
                return Unit.f71739a;
            case 9:
                Boolean bool3 = (Boolean) obj;
                bool3.booleanValue();
                mutableState.setValue(bool3);
                return Unit.f71739a;
            case 10:
                Boolean bool4 = (Boolean) obj;
                bool4.booleanValue();
                mutableState.setValue(bool4);
                return Unit.f71739a;
            case 11:
                Boolean bool5 = (Boolean) obj;
                bool5.booleanValue();
                mutableState.setValue(bool5);
                return Unit.f71739a;
            case 12:
                Boolean bool6 = (Boolean) obj;
                bool6.booleanValue();
                mutableState.setValue(bool6);
                return Unit.f71739a;
            case 13:
                Boolean bool7 = (Boolean) obj;
                bool7.booleanValue();
                mutableState.setValue(bool7);
                return Unit.f71739a;
            case 14:
                Boolean bool8 = (Boolean) obj;
                bool8.booleanValue();
                mutableState.setValue(bool8);
                return Unit.f71739a;
            case 15:
                mutableState.setValue((LayoutCoordinates) obj);
                return Unit.f71739a;
            case 16:
                ((DisposableEffectScope) obj).getClass();
                return new DisposableEffectResult() { // from class: com.vuitton.android.presentation.screen.authentication.base.WebViewAuthContentKt$WebViewAuthContent$lambda$5$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        WebView webView = (WebView) mutableState.getF10755b();
                        if (webView != null) {
                            JSHookAop.loadUrl(webView, MyScreenshareProducerWebView.BLANK);
                            webView.loadUrl(MyScreenshareProducerWebView.BLANK);
                            webView.clearHistory();
                            webView.clearCache(true);
                            webView.onPause();
                            webView.removeAllViews();
                            webView.destroy();
                        }
                    }
                };
            default:
                String str2 = (String) obj;
                str2.getClass();
                mutableState.setValue(StringsKt.J(str2, " ", ""));
                return Unit.f71739a;
        }
    }
}

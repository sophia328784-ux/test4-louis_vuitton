package defpackage;

import android.webkit.WebView;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class q61 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79026b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AuthenticationViewModel f79027c;

    public /* synthetic */ q61(AuthenticationViewModel authenticationViewModel, int i2) {
        this.f79026b = i2;
        this.f79027c = authenticationViewModel;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        WebView webView = (WebView) obj;
        switch (this.f79026b) {
            case 0:
                webView.getClass();
                this.f79027c.B9();
                break;
            default:
                webView.getClass();
                this.f79027c.B9();
                break;
        }
        return Unit.f71739a;
    }
}

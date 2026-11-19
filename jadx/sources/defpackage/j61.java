package defpackage;

import android.R;
import com.google.android.material.snackbar.Snackbar;
import com.vuitton.android.presentation.screen.webview.WebViewActivity;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class j61 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71313b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WebViewActivity f71314c;

    public /* synthetic */ j61(WebViewActivity webViewActivity, int i2) {
        this.f71313b = i2;
        this.f71314c = webViewActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f71313b;
        WebViewActivity webViewActivity = this.f71314c;
        switch (i2) {
            case 0:
                WebViewActivity.Companion companion = WebViewActivity.v;
                Snackbar.f(webViewActivity.findViewById(R.id.content), com.vuitton.android.R.string.error_no_location_permission, 0).h();
                break;
            default:
                WebViewActivity.Companion companion2 = WebViewActivity.v;
                Snackbar.f(webViewActivity.findViewById(R.id.content), com.vuitton.android.R.string.error_no_location_permission, 0).h();
                break;
        }
    }
}

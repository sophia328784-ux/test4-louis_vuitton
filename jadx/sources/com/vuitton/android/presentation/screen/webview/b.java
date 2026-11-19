package com.vuitton.android.presentation.screen.webview;

import android.net.http.SslError;
import android.webkit.ConsoleMessage;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.presentation.chat.ChatLifecycleObserver;
import com.vuitton.android.presentation.extensions.WebViewExtKt;
import defpackage.fc;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f65588b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f65589c;

    public /* synthetic */ b(Object obj, int i2) {
        this.f65588b = i2;
        this.f65589c = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f65588b;
        Object obj = this.f65589c;
        switch (i2) {
            case 0:
                WebViewFragment webViewFragment = (WebViewFragment) obj;
                WebViewFragment.Companion companion = WebViewFragment.n1;
                WebViewViewModel webViewViewModelT = webViewFragment.T();
                BuildersKt.c(ViewModelKt.a(webViewViewModelT), null, null, new WebViewViewModel$setUserChatConsentEnabled$1(null, webViewViewModelT), 3);
                ChatLifecycleObserver chatLifecycleObserver = webViewFragment.R;
                if (chatLifecycleObserver != null) {
                    if (chatLifecycleObserver == null) {
                        Intrinsics.h("chatLifecycleObserver");
                        throw null;
                    }
                    FragmentActivity fragmentActivityRequireActivity = webViewFragment.requireActivity();
                    fragmentActivityRequireActivity.getClass();
                    chatLifecycleObserver.c(fragmentActivityRequireActivity);
                }
                return Unit.f71739a;
            case 1:
                ConsoleMessage consoleMessage = (ConsoleMessage) obj;
                int i3 = WebViewFragment.LVWebChromeClient.f65463b;
                return consoleMessage.message() + " (" + consoleMessage.sourceId() + ":" + consoleMessage.lineNumber() + ")";
            default:
                SslError sslError = (SslError) obj;
                int i4 = WebViewFragment.LVWebViewClient.f65466b;
                return fc.i("SSL error on ", sslError.getUrl(), ": ", WebViewExtKt.a(sslError));
        }
    }
}

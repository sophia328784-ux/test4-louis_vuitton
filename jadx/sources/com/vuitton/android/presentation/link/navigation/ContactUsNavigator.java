package com.vuitton.android.presentation.link.navigation;

import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.presentation.chat.ChatAttachable;
import com.vuitton.android.presentation.contact.compose.ContactUsMethod;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import com.vuitton.android.presentation.screen.webview.WebViewRouter;
import defpackage.v40;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;", "", "Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;", "webViewRouter", "<init>", "(Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ContactUsNavigator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WebViewRouter f51688a;

    @Inject
    public ContactUsNavigator(WebViewRouter webViewRouter) {
        webViewRouter.getClass();
        this.f51688a = webViewRouter;
    }

    public final void a(FragmentActivity fragmentActivity, ContactUsMethod contactUsMethod, int i2, int i3, ChatAttachable chatAttachable) {
        fragmentActivity.getClass();
        contactUsMethod.getClass();
        chatAttachable.getClass();
        if (contactUsMethod instanceof ContactUsMethod.Sms) {
            ActivityExtKt.l(fragmentActivity, ((ContactUsMethod.Sms) contactUsMethod).f51137a);
            return;
        }
        if (contactUsMethod instanceof ContactUsMethod.PhoneCall) {
            ActivityExtKt.f(fragmentActivity, ((ContactUsMethod.PhoneCall) contactUsMethod).f51136a);
            return;
        }
        if (contactUsMethod instanceof ContactUsMethod.EmailForm) {
            WebViewRouter.b(this.f51688a, fragmentActivity, ((ContactUsMethod.EmailForm) contactUsMethod).f51132a, false, 124);
            return;
        }
        if (contactUsMethod instanceof ContactUsMethod.EmailNative) {
            ContactUsMethod.EmailNative emailNative = (ContactUsMethod.EmailNative) contactUsMethod;
            ActivityExtKt.j(fragmentActivity, emailNative.f51133a, emailNative.f51134b, 4);
        } else {
            if (contactUsMethod instanceof ContactUsMethod.WhatsApp) {
                ActivityExtKt.m(fragmentActivity, ((ContactUsMethod.WhatsApp) contactUsMethod).f51138a);
                return;
            }
            if (contactUsMethod.equals(ContactUsMethod.Chat.f51131a)) {
                chatAttachable.b(i2, i3);
            } else if (contactUsMethod instanceof ContactUsMethod.KakaoTalk) {
                ActivityExtKt.i(fragmentActivity, ((ContactUsMethod.KakaoTalk) contactUsMethod).f51135a);
            } else {
                v40.g();
            }
        }
    }
}

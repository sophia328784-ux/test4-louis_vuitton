package com.vuitton.android.presentation.screen.webview;

import com.vuitton.android.presentation.screen.cart.models.CartPreviousScreen;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations;", "", "ToWebViewPage", "ToStoreLocatorPage", "Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToStoreLocatorPage;", "Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface WebViewDestinations {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToStoreLocatorPage;", "Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations;", "", "storeLocatorUrl", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToStoreLocatorPage implements WebViewDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65457a;

        public ToStoreLocatorPage(String str) {
            str.getClass();
            this.f65457a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToStoreLocatorPage) && Intrinsics.c(this.f65457a, ((ToStoreLocatorPage) obj).f65457a);
        }

        public final int hashCode() {
            return this.f65457a.hashCode();
        }

        public final String toString() {
            return fc.h("ToStoreLocatorPage(storeLocatorUrl=", this.f65457a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001BE\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;", "Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations;", "", "urlWebView", "", "isCart", "isPLPStory", "storyTitle", "Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;", "nativeCheckoutPreviousScreen", "isDistantRepairPBL", "<init>", "(Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToWebViewPage implements WebViewDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65458a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f65459b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f65460c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final CartPreviousScreen f65461e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f65462f;

        public /* synthetic */ ToWebViewPage(String str, boolean z, boolean z2, String str2, CartPreviousScreen cartPreviousScreen, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? "" : str2, (i2 & 16) != 0 ? null : cartPreviousScreen, (i2 & 32) != 0 ? false : z3);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToWebViewPage)) {
                return false;
            }
            ToWebViewPage toWebViewPage = (ToWebViewPage) obj;
            return Intrinsics.c(this.f65458a, toWebViewPage.f65458a) && this.f65459b == toWebViewPage.f65459b && this.f65460c == toWebViewPage.f65460c && Intrinsics.c(this.d, toWebViewPage.d) && this.f65461e == toWebViewPage.f65461e && this.f65462f == toWebViewPage.f65462f;
        }

        public final int hashCode() {
            String str = this.f65458a;
            int iB = fc.b(o60.b(o60.b((str == null ? 0 : str.hashCode()) * 31, 31, this.f65459b), 31, this.f65460c), 31, this.d);
            CartPreviousScreen cartPreviousScreen = this.f65461e;
            return Boolean.hashCode(this.f65462f) + ((iB + (cartPreviousScreen != null ? cartPreviousScreen.hashCode() : 0)) * 31);
        }

        public final String toString() {
            StringBuilder sbS = d21.s("ToWebViewPage(urlWebView=", this.f65458a, ", isCart=", ", isPLPStory=", this.f65459b);
            cj.A(", storyTitle=", this.d, ", nativeCheckoutPreviousScreen=", sbS, this.f65460c);
            sbS.append(this.f65461e);
            sbS.append(", isDistantRepairPBL=");
            sbS.append(this.f65462f);
            sbS.append(")");
            return sbS.toString();
        }

        public ToWebViewPage(String str, boolean z, boolean z2, String str2, CartPreviousScreen cartPreviousScreen, boolean z3) {
            str2.getClass();
            this.f65458a = str;
            this.f65459b = z;
            this.f65460c = z2;
            this.d = str2;
            this.f65461e = cartPreviousScreen;
            this.f65462f = z3;
        }
    }
}

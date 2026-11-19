package com.vuitton.android.presentation.screen.cart;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/NativeCartDestinations;", "", "ToWishlistPage", "ToLoginPage", "ToWebViewPage", "Lcom/vuitton/android/presentation/screen/cart/NativeCartDestinations$ToLoginPage;", "Lcom/vuitton/android/presentation/screen/cart/NativeCartDestinations$ToWebViewPage;", "Lcom/vuitton/android/presentation/screen/cart/NativeCartDestinations$ToWishlistPage;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface NativeCartDestinations {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/NativeCartDestinations$ToLoginPage;", "Lcom/vuitton/android/presentation/screen/cart/NativeCartDestinations;", "Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;", "loginContext", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToLoginPage implements NativeCartDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LoginContext f54848a;

        public ToLoginPage(LoginContext loginContext) {
            loginContext.getClass();
            this.f54848a = loginContext;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToLoginPage) && this.f54848a == ((ToLoginPage) obj).f54848a;
        }

        public final int hashCode() {
            return this.f54848a.hashCode();
        }

        public final String toString() {
            return "ToLoginPage(loginContext=" + this.f54848a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/NativeCartDestinations$ToWebViewPage;", "Lcom/vuitton/android/presentation/screen/cart/NativeCartDestinations;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToWebViewPage implements NativeCartDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54849a;

        public ToWebViewPage(String str) {
            str.getClass();
            this.f54849a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToWebViewPage) && Intrinsics.c(this.f54849a, ((ToWebViewPage) obj).f54849a);
        }

        public final int hashCode() {
            return this.f54849a.hashCode();
        }

        public final String toString() {
            return fc.h("ToWebViewPage(url=", this.f54849a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/NativeCartDestinations$ToWishlistPage;", "Lcom/vuitton/android/presentation/screen/cart/NativeCartDestinations;", "", "isStoreModeContext", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToWishlistPage implements NativeCartDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f54850a;

        public /* synthetic */ ToWishlistPage(boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? false : z);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToWishlistPage) && this.f54850a == ((ToWishlistPage) obj).f54850a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f54850a);
        }

        public final String toString() {
            return tr.i("ToWishlistPage(isStoreModeContext=", ")", this.f54850a);
        }

        public ToWishlistPage(boolean z) {
            this.f54850a = z;
        }

        public ToWishlistPage() {
            this(false, 1, null);
        }
    }
}

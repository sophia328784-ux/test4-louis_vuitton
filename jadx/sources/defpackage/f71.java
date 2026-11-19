package defpackage;

import com.vuitton.android.presentation.chat.ChatLifecycleObserver;
import com.vuitton.android.presentation.screen.wishlist.WishlistActivity;
import com.vuitton.android.presentation.screen.wishlist.WishlistDestinations;
import com.vuitton.android.presentation.screen.wishlist.WishlistDestinationsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class f71 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69062b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WishlistActivity f69063c;

    public /* synthetic */ f71(WishlistActivity wishlistActivity, int i2) {
        this.f69062b = i2;
        this.f69063c = wishlistActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f69062b;
        WishlistDestinations.ToCatalogPage toCatalogPage = WishlistDestinations.ToCatalogPage.f65609a;
        WishlistActivity wishlistActivity = this.f69063c;
        switch (i2) {
            case 0:
                ChatLifecycleObserver chatLifecycleObserver = wishlistActivity.p;
                if (chatLifecycleObserver != null) {
                    if (chatLifecycleObserver == null) {
                        Intrinsics.h("chatLifecycleObserver");
                        throw null;
                    }
                    chatLifecycleObserver.c(wishlistActivity);
                }
                return Unit.f71739a;
            case 1:
                WishlistActivity.Companion companion = WishlistActivity.t;
                if (!wishlistActivity.getIntent().getBooleanExtra("IS_STORE_MODE_CONTEXT", false) || wishlistActivity.I().F()) {
                    wishlistActivity.finish();
                }
                return Unit.f71739a;
            case 2:
                ChatLifecycleObserver chatLifecycleObserver2 = wishlistActivity.p;
                if (chatLifecycleObserver2 != null) {
                    if (chatLifecycleObserver2 == null) {
                        Intrinsics.h("chatLifecycleObserver");
                        throw null;
                    }
                    chatLifecycleObserver2.c(wishlistActivity);
                }
                return Unit.f71739a;
            case 3:
                WishlistActivity.Companion companion2 = WishlistActivity.t;
                wishlistActivity.I().G();
                wishlistActivity.startActivity(WishlistDestinationsKt.a(toCatalogPage, wishlistActivity));
                return Unit.f71739a;
            case 4:
                ChatLifecycleObserver chatLifecycleObserver3 = wishlistActivity.p;
                if (chatLifecycleObserver3 != null) {
                    if (chatLifecycleObserver3 == null) {
                        Intrinsics.h("chatLifecycleObserver");
                        throw null;
                    }
                    chatLifecycleObserver3.c(wishlistActivity);
                }
                return Unit.f71739a;
            default:
                WishlistActivity.Companion companion3 = WishlistActivity.t;
                wishlistActivity.I().G();
                wishlistActivity.startActivity(WishlistDestinationsKt.a(toCatalogPage, wishlistActivity));
                return Unit.f71739a;
        }
    }
}

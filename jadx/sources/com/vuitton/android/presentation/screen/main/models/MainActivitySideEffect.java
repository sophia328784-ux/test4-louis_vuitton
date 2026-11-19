package com.vuitton.android.presentation.screen.main.models;

import android.net.Uri;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.redirectlink.LinkEffect;
import com.vuitton.android.presentation.screen.main.navigation.CatalogRoute;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect;", "", "Navigation", "RequestNotificationPermission", "ShowAlreadySignedBottomSheet", "ShowSightCallBottomSheet", "Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation;", "Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$RequestNotificationPermission;", "Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$ShowAlreadySignedBottomSheet;", "Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$ShowSightCallBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class MainActivitySideEffect {

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation;", "Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect;", "NavigateTo", "NavigateToDeepLink", "NavigateToAppLink", "Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation$NavigateTo;", "Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation$NavigateToAppLink;", "Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation$NavigateToDeepLink;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class Navigation extends MainActivitySideEffect {

        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation$NavigateTo;", "Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation;", "Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;", "destination", "Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;", "catalog", "<init>", "(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class NavigateTo extends Navigation {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final MainTopLevelDestination f59123a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final CatalogRoute f59124b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public NavigateTo(MainTopLevelDestination mainTopLevelDestination, CatalogRoute catalogRoute) {
                super(null);
                mainTopLevelDestination.getClass();
                this.f59123a = mainTopLevelDestination;
                this.f59124b = catalogRoute;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof NavigateTo)) {
                    return false;
                }
                NavigateTo navigateTo = (NavigateTo) obj;
                return this.f59123a == navigateTo.f59123a && Intrinsics.c(this.f59124b, navigateTo.f59124b);
            }

            public final int hashCode() {
                int iHashCode = this.f59123a.hashCode() * 31;
                CatalogRoute catalogRoute = this.f59124b;
                return iHashCode + (catalogRoute == null ? 0 : catalogRoute.hashCode());
            }

            public final String toString() {
                return "NavigateTo(destination=" + this.f59123a + ", catalog=" + this.f59124b + ")";
            }
        }

        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation$NavigateToAppLink;", "Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation;", "Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;", "destination", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class NavigateToAppLink extends Navigation {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final MainTopLevelDestination f59125a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f59126b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public NavigateToAppLink(MainTopLevelDestination mainTopLevelDestination, String str) {
                super(null);
                mainTopLevelDestination.getClass();
                str.getClass();
                this.f59125a = mainTopLevelDestination;
                this.f59126b = str;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof NavigateToAppLink)) {
                    return false;
                }
                NavigateToAppLink navigateToAppLink = (NavigateToAppLink) obj;
                return this.f59125a == navigateToAppLink.f59125a && Intrinsics.c(this.f59126b, navigateToAppLink.f59126b);
            }

            public final int hashCode() {
                return this.f59126b.hashCode() + (this.f59125a.hashCode() * 31);
            }

            public final String toString() {
                return "NavigateToAppLink(destination=" + this.f59125a + ", url=" + this.f59126b + ")";
            }
        }

        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation$NavigateToDeepLink;", "Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation;", "Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;", "destination", "Lkotlin/Pair;", "Landroid/net/Uri;", "", "uri", "<init>", "(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Lkotlin/Pair;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class NavigateToDeepLink extends Navigation {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final MainTopLevelDestination f59127a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Pair f59128b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public NavigateToDeepLink(MainTopLevelDestination mainTopLevelDestination, Pair<? extends Uri, String> pair) {
                super(null);
                mainTopLevelDestination.getClass();
                this.f59127a = mainTopLevelDestination;
                this.f59128b = pair;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof NavigateToDeepLink)) {
                    return false;
                }
                NavigateToDeepLink navigateToDeepLink = (NavigateToDeepLink) obj;
                return this.f59127a == navigateToDeepLink.f59127a && Intrinsics.c(this.f59128b, navigateToDeepLink.f59128b);
            }

            public final int hashCode() {
                int iHashCode = this.f59127a.hashCode() * 31;
                Pair pair = this.f59128b;
                return iHashCode + (pair == null ? 0 : pair.hashCode());
            }

            public final String toString() {
                return "NavigateToDeepLink(destination=" + this.f59127a + ", uri=" + this.f59128b + ")";
            }
        }

        public Navigation(DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$RequestNotificationPermission;", "Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RequestNotificationPermission extends MainActivitySideEffect {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RequestNotificationPermission f59129a = new RequestNotificationPermission(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RequestNotificationPermission);
        }

        public final int hashCode() {
            return 1435946745;
        }

        public final String toString() {
            return "RequestNotificationPermission";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$ShowAlreadySignedBottomSheet;", "Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn;", "effect", "<init>", "(Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ShowAlreadySignedBottomSheet extends MainActivitySideEffect {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LinkEffect.Dialog.AlreadySignedIn f59130a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ShowAlreadySignedBottomSheet(LinkEffect.Dialog.AlreadySignedIn alreadySignedIn) {
            super(null);
            alreadySignedIn.getClass();
            this.f59130a = alreadySignedIn;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ShowAlreadySignedBottomSheet) && Intrinsics.c(this.f59130a, ((ShowAlreadySignedBottomSheet) obj).f59130a);
        }

        public final int hashCode() {
            return this.f59130a.hashCode();
        }

        public final String toString() {
            return "ShowAlreadySignedBottomSheet(effect=" + this.f59130a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$ShowSightCallBottomSheet;", "Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ShowSightCallBottomSheet extends MainActivitySideEffect {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f59131a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ShowSightCallBottomSheet(String str) {
            super(null);
            str.getClass();
            this.f59131a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ShowSightCallBottomSheet) && Intrinsics.c(this.f59131a, ((ShowSightCallBottomSheet) obj).f59131a);
        }

        public final int hashCode() {
            return this.f59131a.hashCode();
        }

        public final String toString() {
            return fc.h("ShowSightCallBottomSheet(url=", this.f59131a, ")");
        }
    }

    public MainActivitySideEffect(DefaultConstructorMarker defaultConstructorMarker) {
    }
}

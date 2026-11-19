package com.vuitton.android.presentation.screen.main.models;

import android.net.Uri;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.redirectlink.LinkEffect;
import com.vuitton.android.presentation.screen.main.navigation.CatalogRoute;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent;", "", "NavigateToTopLevelDestination", "ShowAlreadySignedBottomSheet", "NavigateToDeepLink", "NavigateToAppLink", "Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToAppLink;", "Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToDeepLink;", "Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToTopLevelDestination;", "Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$ShowAlreadySignedBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class MainActivityUiEvent {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToAppLink;", "Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent;", "Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;", "destination", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NavigateToAppLink extends MainActivityUiEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MainTopLevelDestination f59132a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f59133b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NavigateToAppLink(MainTopLevelDestination mainTopLevelDestination, String str) {
            super(null);
            mainTopLevelDestination.getClass();
            str.getClass();
            this.f59132a = mainTopLevelDestination;
            this.f59133b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof NavigateToAppLink)) {
                return false;
            }
            NavigateToAppLink navigateToAppLink = (NavigateToAppLink) obj;
            return this.f59132a == navigateToAppLink.f59132a && Intrinsics.c(this.f59133b, navigateToAppLink.f59133b);
        }

        public final int hashCode() {
            return this.f59133b.hashCode() + (this.f59132a.hashCode() * 31);
        }

        public final String toString() {
            return "NavigateToAppLink(destination=" + this.f59132a + ", url=" + this.f59133b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToDeepLink;", "Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent;", "Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;", "destination", "Lkotlin/Pair;", "Landroid/net/Uri;", "", "uri", "<init>", "(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Lkotlin/Pair;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NavigateToDeepLink extends MainActivityUiEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MainTopLevelDestination f59134a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Pair f59135b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NavigateToDeepLink(MainTopLevelDestination mainTopLevelDestination, Pair<? extends Uri, String> pair) {
            super(null);
            mainTopLevelDestination.getClass();
            this.f59134a = mainTopLevelDestination;
            this.f59135b = pair;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof NavigateToDeepLink)) {
                return false;
            }
            NavigateToDeepLink navigateToDeepLink = (NavigateToDeepLink) obj;
            return this.f59134a == navigateToDeepLink.f59134a && Intrinsics.c(this.f59135b, navigateToDeepLink.f59135b);
        }

        public final int hashCode() {
            int iHashCode = this.f59134a.hashCode() * 31;
            Pair pair = this.f59135b;
            return iHashCode + (pair == null ? 0 : pair.hashCode());
        }

        public final String toString() {
            return "NavigateToDeepLink(destination=" + this.f59134a + ", uri=" + this.f59135b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToTopLevelDestination;", "Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent;", "Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;", "topLevelDestination", "Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;", "catalogRoute", "<init>", "(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NavigateToTopLevelDestination extends MainActivityUiEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MainTopLevelDestination f59136a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CatalogRoute f59137b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NavigateToTopLevelDestination(MainTopLevelDestination mainTopLevelDestination, CatalogRoute catalogRoute) {
            super(null);
            mainTopLevelDestination.getClass();
            this.f59136a = mainTopLevelDestination;
            this.f59137b = catalogRoute;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof NavigateToTopLevelDestination)) {
                return false;
            }
            NavigateToTopLevelDestination navigateToTopLevelDestination = (NavigateToTopLevelDestination) obj;
            return this.f59136a == navigateToTopLevelDestination.f59136a && Intrinsics.c(this.f59137b, navigateToTopLevelDestination.f59137b);
        }

        public final int hashCode() {
            int iHashCode = this.f59136a.hashCode() * 31;
            CatalogRoute catalogRoute = this.f59137b;
            return iHashCode + (catalogRoute == null ? 0 : catalogRoute.hashCode());
        }

        public final String toString() {
            return "NavigateToTopLevelDestination(topLevelDestination=" + this.f59136a + ", catalogRoute=" + this.f59137b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$ShowAlreadySignedBottomSheet;", "Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn;", "effect", "<init>", "(Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ShowAlreadySignedBottomSheet extends MainActivityUiEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LinkEffect.Dialog.AlreadySignedIn f59138a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ShowAlreadySignedBottomSheet(LinkEffect.Dialog.AlreadySignedIn alreadySignedIn) {
            super(null);
            alreadySignedIn.getClass();
            this.f59138a = alreadySignedIn;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ShowAlreadySignedBottomSheet) && Intrinsics.c(this.f59138a, ((ShowAlreadySignedBottomSheet) obj).f59138a);
        }

        public final int hashCode() {
            return this.f59138a.hashCode();
        }

        public final String toString() {
            return "ShowAlreadySignedBottomSheet(effect=" + this.f59138a + ")";
        }
    }

    public MainActivityUiEvent(DefaultConstructorMarker defaultConstructorMarker) {
    }
}

package com.vuitton.android.presentation.redirectlink;

import android.net.Uri;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.applink.SwapDispatchUiModel;
import com.vuitton.android.presentation.link.models.ParsedLink;
import com.vuitton.android.presentation.screen.authentication.LoginRedirection;
import com.vuitton.android.presentation.screen.connectivity.watch.PairWatchV2Ui;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeLaunchMode;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0001\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect;", "", "Navigation", "Dialog", "Tab", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface LinkEffect {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation;", "AlreadySignedIn", "ChangeLocaleBottomSheet", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$ChangeLocaleBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class Dialog implements Navigation {

        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog;", "ForAccountActivation", "ForLogin", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn$ForAccountActivation;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn$ForLogin;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static abstract class AlreadySignedIn extends Dialog {

            @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn$ForAccountActivation;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn;", "", "cid", "", "isNativeAccountActivationEnabled", "<init>", "(Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class ForAccountActivation extends AlreadySignedIn {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public final String f51959a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final boolean f51960b;

                public ForAccountActivation(String str, boolean z) {
                    super(null);
                    this.f51959a = str;
                    this.f51960b = z;
                }

                public final boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (!(obj instanceof ForAccountActivation)) {
                        return false;
                    }
                    ForAccountActivation forAccountActivation = (ForAccountActivation) obj;
                    return Intrinsics.c(this.f51959a, forAccountActivation.f51959a) && this.f51960b == forAccountActivation.f51960b;
                }

                public final int hashCode() {
                    String str = this.f51959a;
                    return Boolean.hashCode(this.f51960b) + ((str == null ? 0 : str.hashCode()) * 31);
                }

                public final String toString() {
                    return d21.m("ForAccountActivation(cid=", this.f51959a, ", isNativeAccountActivationEnabled=", ")", this.f51960b);
                }
            }

            @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn$ForLogin;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class ForLogin extends AlreadySignedIn {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public static final ForLogin f51961a = new ForLogin(null);

                public final boolean equals(Object obj) {
                    return this == obj || (obj instanceof ForLogin);
                }

                public final int hashCode() {
                    return -807153011;
                }

                public final String toString() {
                    return "ForLogin";
                }
            }

            public AlreadySignedIn(DefaultConstructorMarker defaultConstructorMarker) {
                super(null);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$ChangeLocaleBottomSheet;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog;", "Lcom/vuitton/android/presentation/applink/SwapDispatchUiModel;", "dispatch", "<init>", "(Lcom/vuitton/android/presentation/applink/SwapDispatchUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ChangeLocaleBottomSheet extends Dialog {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final SwapDispatchUiModel f51962a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public ChangeLocaleBottomSheet(SwapDispatchUiModel swapDispatchUiModel) {
                super(null);
                swapDispatchUiModel.getClass();
                this.f51962a = swapDispatchUiModel;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof ChangeLocaleBottomSheet) && Intrinsics.c(this.f51962a, ((ChangeLocaleBottomSheet) obj).f51962a);
            }

            public final int hashCode() {
                return this.f51962a.hashCode();
            }

            public final String toString() {
                return "ChangeLocaleBottomSheet(dispatch=" + this.f51962a + ")";
            }
        }

        public Dialog(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0004\u0004\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect;", "Direct", "RedirectAfterLogin", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$RedirectAfterLogin;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Navigation extends LinkEffect {

        @Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001 \u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#¨\u0006$À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation;", "FromDeeplink", "FromAppLink", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$Common$ToImmersiveArticle;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$Common$ToSharedWishlist;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$Common$ToWebView;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromAppLink;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromAppLink$ToBrowser;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromAppLink$ToOsaCreateAppointment;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromAppLink$ToSeoLandingPage;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAICompanion;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAdvisorCurationFromDeepLink;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAudioGuide;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAuthenticateDeeplinkV2;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAuthenticateFromTravel;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToCart;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToCheckout;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToConnectivityDeeplink;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToInStoreSelectionFromDeepLink;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToLVPassQRCode;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToLoginWithRedirection;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyAccount;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyAccountWithParsedLink;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyAppointments;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyWatchFromPairingWith;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToNativeStory;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToNotificationsPreferencesFromDeepLink;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToPortalSlider;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToPrivacyPolicyFromDeepLink;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToProductDetails;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToRegisterWithRedirection;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToSpotlightCollectionDeepLink;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToStoreLocator;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToTravelFromDeepLink;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public interface Direct extends Navigation {

            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004¨\u0006\u0005À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromAppLink;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "ToBrowser", "ToSeoLandingPage", "ToOsaCreateAppointment", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public interface FromAppLink extends Direct {

                @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromAppLink$ToBrowser;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToBrowser implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final String f51967a;

                    public ToBrowser(String str) {
                        str.getClass();
                        this.f51967a = str;
                    }

                    public final boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return (obj instanceof ToBrowser) && Intrinsics.c(this.f51967a, ((ToBrowser) obj).f51967a);
                    }

                    public final int hashCode() {
                        return this.f51967a.hashCode();
                    }

                    public final String toString() {
                        return fc.h("ToBrowser(url=", this.f51967a, ")");
                    }
                }

                @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromAppLink$ToOsaCreateAppointment;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "", "", "prefilledStoreCodes", "prefilledReason", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToOsaCreateAppointment implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final List f51968a;

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final String f51969b;

                    public ToOsaCreateAppointment(List<String> list, String str) {
                        list.getClass();
                        str.getClass();
                        this.f51968a = list;
                        this.f51969b = str;
                    }

                    public final boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (!(obj instanceof ToOsaCreateAppointment)) {
                            return false;
                        }
                        ToOsaCreateAppointment toOsaCreateAppointment = (ToOsaCreateAppointment) obj;
                        return Intrinsics.c(this.f51968a, toOsaCreateAppointment.f51968a) && Intrinsics.c(this.f51969b, toOsaCreateAppointment.f51969b);
                    }

                    public final int hashCode() {
                        return this.f51969b.hashCode() + (this.f51968a.hashCode() * 31);
                    }

                    public final String toString() {
                        return "ToOsaCreateAppointment(prefilledStoreCodes=" + this.f51968a + ", prefilledReason=" + this.f51969b + ")";
                    }
                }

                @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromAppLink$ToSeoLandingPage;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "", "articleKey", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToSeoLandingPage implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final String f51970a;

                    public ToSeoLandingPage(String str) {
                        str.getClass();
                        this.f51970a = str;
                    }

                    public final boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return (obj instanceof ToSeoLandingPage) && Intrinsics.c(this.f51970a, ((ToSeoLandingPage) obj).f51970a);
                    }

                    public final int hashCode() {
                        return this.f51970a.hashCode();
                    }

                    public final String toString() {
                        return fc.h("ToSeoLandingPage(articleKey=", this.f51970a, ")");
                    }
                }
            }

            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0019\bv\u0018\u00002\u00020\u0001:\u0018\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019¨\u0006\u001aÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "ToNativeStory", "ToPortalSlider", "ToAudioGuide", "ToAICompanion", "ToStoreLocator", "ToProductDetails", "ToAdvisorCurationFromDeepLink", "ToInStoreSelectionFromDeepLink", "ToSpotlightCollectionDeepLink", "ToMyAccount", "ToMyAccountWithParsedLink", "ToLVPassQRCode", "ToMyAppointments", "ToAuthenticateDeeplinkV2", "ToPrivacyPolicyFromDeepLink", "ToNotificationsPreferencesFromDeepLink", "ToLoginWithRedirection", "ToRegisterWithRedirection", "ToCart", "ToCheckout", "ToTravelFromDeepLink", "ToAuthenticateFromTravel", "ToConnectivityDeeplink", "ToMyWatchFromPairingWith", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public interface FromDeeplink extends Direct {

                @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAICompanion;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToAICompanion implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public static final ToAICompanion f51971a = new ToAICompanion();

                    public final boolean equals(Object obj) {
                        return this == obj || (obj instanceof ToAICompanion);
                    }

                    public final int hashCode() {
                        return -1647714620;
                    }

                    public final String toString() {
                        return "ToAICompanion";
                    }
                }

                @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAdvisorCurationFromDeepLink;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "", "advisorCurationId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToAdvisorCurationFromDeepLink implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final String f51972a;

                    public ToAdvisorCurationFromDeepLink(String str) {
                        str.getClass();
                        this.f51972a = str;
                    }

                    public final boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return (obj instanceof ToAdvisorCurationFromDeepLink) && Intrinsics.c(this.f51972a, ((ToAdvisorCurationFromDeepLink) obj).f51972a);
                    }

                    public final int hashCode() {
                        return this.f51972a.hashCode();
                    }

                    public final String toString() {
                        return fc.h("ToAdvisorCurationFromDeepLink(advisorCurationId=", this.f51972a, ")");
                    }
                }

                @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAudioGuide;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "", "audioGuideId", "trackId", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToAudioGuide implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final String f51973a;

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final String f51974b;

                    public ToAudioGuide(String str, String str2) {
                        str.getClass();
                        this.f51973a = str;
                        this.f51974b = str2;
                    }

                    public final boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (!(obj instanceof ToAudioGuide)) {
                            return false;
                        }
                        ToAudioGuide toAudioGuide = (ToAudioGuide) obj;
                        return Intrinsics.c(this.f51973a, toAudioGuide.f51973a) && Intrinsics.c(this.f51974b, toAudioGuide.f51974b);
                    }

                    public final int hashCode() {
                        int iHashCode = this.f51973a.hashCode() * 31;
                        String str = this.f51974b;
                        return iHashCode + (str == null ? 0 : str.hashCode());
                    }

                    public final String toString() {
                        return d21.l("ToAudioGuide(audioGuideId=", this.f51973a, ", trackId=", this.f51974b, ")");
                    }
                }

                @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAuthenticateDeeplinkV2;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToAuthenticateDeeplinkV2 implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public static final ToAuthenticateDeeplinkV2 f51975a = new ToAuthenticateDeeplinkV2();

                    public final boolean equals(Object obj) {
                        return this == obj || (obj instanceof ToAuthenticateDeeplinkV2);
                    }

                    public final int hashCode() {
                        return -89812521;
                    }

                    public final String toString() {
                        return "ToAuthenticateDeeplinkV2";
                    }
                }

                @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAuthenticateFromTravel;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToAuthenticateFromTravel implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public static final ToAuthenticateFromTravel f51976a = new ToAuthenticateFromTravel();

                    public final boolean equals(Object obj) {
                        return this == obj || (obj instanceof ToAuthenticateFromTravel);
                    }

                    public final int hashCode() {
                        return -1303384775;
                    }

                    public final String toString() {
                        return "ToAuthenticateFromTravel";
                    }
                }

                @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToCart;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToCart implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public static final ToCart f51977a = new ToCart();

                    public final boolean equals(Object obj) {
                        return this == obj || (obj instanceof ToCart);
                    }

                    public final int hashCode() {
                        return 347379776;
                    }

                    public final String toString() {
                        return "ToCart";
                    }
                }

                @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToCheckout;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "Landroid/net/Uri;", "uri", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Landroid/net/Uri;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToCheckout implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final Uri f51978a;

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final String f51979b;

                    public ToCheckout(Uri uri, String str) {
                        uri.getClass();
                        str.getClass();
                        this.f51978a = uri;
                        this.f51979b = str;
                    }

                    public final boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (!(obj instanceof ToCheckout)) {
                            return false;
                        }
                        ToCheckout toCheckout = (ToCheckout) obj;
                        return Intrinsics.c(this.f51978a, toCheckout.f51978a) && Intrinsics.c(this.f51979b, toCheckout.f51979b);
                    }

                    public final int hashCode() {
                        return this.f51979b.hashCode() + (this.f51978a.hashCode() * 31);
                    }

                    public final String toString() {
                        return "ToCheckout(uri=" + this.f51978a + ", url=" + this.f51979b + ")";
                    }
                }

                @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToConnectivityDeeplink;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "", "deepLink", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToConnectivityDeeplink implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final String f51980a;

                    public ToConnectivityDeeplink(String str) {
                        str.getClass();
                        this.f51980a = str;
                    }

                    public final boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return (obj instanceof ToConnectivityDeeplink) && Intrinsics.c(this.f51980a, ((ToConnectivityDeeplink) obj).f51980a);
                    }

                    public final int hashCode() {
                        return this.f51980a.hashCode();
                    }

                    public final String toString() {
                        return fc.h("ToConnectivityDeeplink(deepLink=", this.f51980a, ")");
                    }
                }

                @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToInStoreSelectionFromDeepLink;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "", "inStoreSelectionId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToInStoreSelectionFromDeepLink implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final String f51981a;

                    public ToInStoreSelectionFromDeepLink(String str) {
                        str.getClass();
                        this.f51981a = str;
                    }

                    public final boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return (obj instanceof ToInStoreSelectionFromDeepLink) && Intrinsics.c(this.f51981a, ((ToInStoreSelectionFromDeepLink) obj).f51981a);
                    }

                    public final int hashCode() {
                        return this.f51981a.hashCode();
                    }

                    public final String toString() {
                        return fc.h("ToInStoreSelectionFromDeepLink(inStoreSelectionId=", this.f51981a, ")");
                    }
                }

                @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToLVPassQRCode;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToLVPassQRCode implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public static final ToLVPassQRCode f51982a = new ToLVPassQRCode();

                    public final boolean equals(Object obj) {
                        return this == obj || (obj instanceof ToLVPassQRCode);
                    }

                    public final int hashCode() {
                        return 1019097385;
                    }

                    public final String toString() {
                        return "ToLVPassQRCode";
                    }
                }

                @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToLoginWithRedirection;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "", "login", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToLoginWithRedirection implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final String f51983a;

                    public ToLoginWithRedirection(String str) {
                        this.f51983a = str;
                    }

                    public final boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return (obj instanceof ToLoginWithRedirection) && Intrinsics.c(this.f51983a, ((ToLoginWithRedirection) obj).f51983a);
                    }

                    public final int hashCode() {
                        String str = this.f51983a;
                        if (str == null) {
                            return 0;
                        }
                        return str.hashCode();
                    }

                    public final String toString() {
                        return fc.h("ToLoginWithRedirection(login=", this.f51983a, ")");
                    }
                }

                @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyAccount;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToMyAccount implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public static final ToMyAccount f51984a = new ToMyAccount();

                    public final boolean equals(Object obj) {
                        return this == obj || (obj instanceof ToMyAccount);
                    }

                    public final int hashCode() {
                        return -637750847;
                    }

                    public final String toString() {
                        return "ToMyAccount";
                    }
                }

                @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyAccountWithParsedLink;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "Lcom/vuitton/android/presentation/link/models/ParsedLink;", "parsedLink", "<init>", "(Lcom/vuitton/android/presentation/link/models/ParsedLink;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToMyAccountWithParsedLink implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final ParsedLink f51985a;

                    public ToMyAccountWithParsedLink(ParsedLink parsedLink) {
                        parsedLink.getClass();
                        this.f51985a = parsedLink;
                    }

                    public final boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return (obj instanceof ToMyAccountWithParsedLink) && Intrinsics.c(this.f51985a, ((ToMyAccountWithParsedLink) obj).f51985a);
                    }

                    public final int hashCode() {
                        return this.f51985a.hashCode();
                    }

                    public final String toString() {
                        return "ToMyAccountWithParsedLink(parsedLink=" + this.f51985a + ")";
                    }
                }

                @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyAppointments;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToMyAppointments implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public static final ToMyAppointments f51986a = new ToMyAppointments();

                    public final boolean equals(Object obj) {
                        return this == obj || (obj instanceof ToMyAppointments);
                    }

                    public final int hashCode() {
                        return 1973063072;
                    }

                    public final String toString() {
                        return "ToMyAppointments";
                    }
                }

                @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyWatchFromPairingWith;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/PairWatchV2Ui;", "deeplinkV2", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/watch/PairWatchV2Ui;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToMyWatchFromPairingWith implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final PairWatchV2Ui f51987a;

                    public ToMyWatchFromPairingWith(PairWatchV2Ui pairWatchV2Ui) {
                        pairWatchV2Ui.getClass();
                        this.f51987a = pairWatchV2Ui;
                    }

                    public final boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return (obj instanceof ToMyWatchFromPairingWith) && Intrinsics.c(this.f51987a, ((ToMyWatchFromPairingWith) obj).f51987a);
                    }

                    public final int hashCode() {
                        return this.f51987a.hashCode();
                    }

                    public final String toString() {
                        return "ToMyWatchFromPairingWith(deeplinkV2=" + this.f51987a + ")";
                    }
                }

                @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToNativeStory;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "", "storyId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToNativeStory implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final String f51988a;

                    public ToNativeStory(String str) {
                        str.getClass();
                        this.f51988a = str;
                    }

                    public final boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return (obj instanceof ToNativeStory) && Intrinsics.c(this.f51988a, ((ToNativeStory) obj).f51988a);
                    }

                    public final int hashCode() {
                        return this.f51988a.hashCode();
                    }

                    public final String toString() {
                        return fc.h("ToNativeStory(storyId=", this.f51988a, ")");
                    }
                }

                @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToNotificationsPreferencesFromDeepLink;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToNotificationsPreferencesFromDeepLink implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public static final ToNotificationsPreferencesFromDeepLink f51989a = new ToNotificationsPreferencesFromDeepLink();

                    public final boolean equals(Object obj) {
                        return this == obj || (obj instanceof ToNotificationsPreferencesFromDeepLink);
                    }

                    public final int hashCode() {
                        return 434263808;
                    }

                    public final String toString() {
                        return "ToNotificationsPreferencesFromDeepLink";
                    }
                }

                @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToPortalSlider;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "", "portalId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToPortalSlider implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final String f51990a;

                    public ToPortalSlider(String str) {
                        str.getClass();
                        this.f51990a = str;
                    }

                    public final boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return (obj instanceof ToPortalSlider) && Intrinsics.c(this.f51990a, ((ToPortalSlider) obj).f51990a);
                    }

                    public final int hashCode() {
                        return this.f51990a.hashCode();
                    }

                    public final String toString() {
                        return fc.h("ToPortalSlider(portalId=", this.f51990a, ")");
                    }
                }

                @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToPrivacyPolicyFromDeepLink;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToPrivacyPolicyFromDeepLink implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public static final ToPrivacyPolicyFromDeepLink f51991a = new ToPrivacyPolicyFromDeepLink();

                    public final boolean equals(Object obj) {
                        return this == obj || (obj instanceof ToPrivacyPolicyFromDeepLink);
                    }

                    public final int hashCode() {
                        return 1042554794;
                    }

                    public final String toString() {
                        return "ToPrivacyPolicyFromDeepLink";
                    }
                }

                @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToProductDetails;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToProductDetails implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final String f51992a;

                    public ToProductDetails(String str, DefaultConstructorMarker defaultConstructorMarker) {
                        str.getClass();
                        this.f51992a = str;
                    }

                    public final boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (!(obj instanceof ToProductDetails)) {
                            return false;
                        }
                        String str = ((ToProductDetails) obj).f51992a;
                        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                        return this.f51992a.equals(str);
                    }

                    public final int hashCode() {
                        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                        return this.f51992a.hashCode();
                    }

                    public final String toString() {
                        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                        return fc.h("ToProductDetails(sku=", this.f51992a, ")");
                    }
                }

                @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToRegisterWithRedirection;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "", "", "deepLinkPathSegments", "", "isNativeAccountActivationEnabled", "<init>", "(Ljava/util/List;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToRegisterWithRedirection implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final List f51993a;

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final boolean f51994b;

                    public ToRegisterWithRedirection(List<String> list, boolean z) {
                        this.f51993a = list;
                        this.f51994b = z;
                    }

                    public final boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (!(obj instanceof ToRegisterWithRedirection)) {
                            return false;
                        }
                        ToRegisterWithRedirection toRegisterWithRedirection = (ToRegisterWithRedirection) obj;
                        return Intrinsics.c(this.f51993a, toRegisterWithRedirection.f51993a) && this.f51994b == toRegisterWithRedirection.f51994b;
                    }

                    public final int hashCode() {
                        List list = this.f51993a;
                        return Boolean.hashCode(this.f51994b) + ((list == null ? 0 : list.hashCode()) * 31);
                    }

                    public final String toString() {
                        return "ToRegisterWithRedirection(deepLinkPathSegments=" + this.f51993a + ", isNativeAccountActivationEnabled=" + this.f51994b + ")";
                    }
                }

                @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToSpotlightCollectionDeepLink;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "", "collectionId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToSpotlightCollectionDeepLink implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final String f51995a;

                    public ToSpotlightCollectionDeepLink(String str) {
                        str.getClass();
                        this.f51995a = str;
                    }

                    public final boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return (obj instanceof ToSpotlightCollectionDeepLink) && Intrinsics.c(this.f51995a, ((ToSpotlightCollectionDeepLink) obj).f51995a);
                    }

                    public final int hashCode() {
                        return this.f51995a.hashCode();
                    }

                    public final String toString() {
                        return fc.h("ToSpotlightCollectionDeepLink(collectionId=", this.f51995a, ")");
                    }
                }

                @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToStoreLocator;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToStoreLocator implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public static final ToStoreLocator f51996a = new ToStoreLocator();

                    public final boolean equals(Object obj) {
                        return this == obj || (obj instanceof ToStoreLocator);
                    }

                    public final int hashCode() {
                        return -912135787;
                    }

                    public final String toString() {
                        return "ToStoreLocator";
                    }
                }

                @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToTravelFromDeepLink;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final /* data */ class ToTravelFromDeepLink implements Direct {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public static final ToTravelFromDeepLink f51997a = new ToTravelFromDeepLink();

                    public final boolean equals(Object obj) {
                        return this == obj || (obj instanceof ToTravelFromDeepLink);
                    }

                    public final int hashCode() {
                        return 69115434;
                    }

                    public final String toString() {
                        return "ToTravelFromDeepLink";
                    }
                }
            }
        }

        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$RedirectAfterLogin;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation;", "Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;", "loginRedirection", "Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs;", "redirectionArgs", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class RedirectAfterLogin implements Navigation {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final LoginRedirection f51998a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final RedirectionArgs f51999b;

            public RedirectAfterLogin(LoginRedirection loginRedirection, RedirectionArgs redirectionArgs) {
                loginRedirection.getClass();
                this.f51998a = loginRedirection;
                this.f51999b = redirectionArgs;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof RedirectAfterLogin)) {
                    return false;
                }
                RedirectAfterLogin redirectAfterLogin = (RedirectAfterLogin) obj;
                return this.f51998a == redirectAfterLogin.f51998a && Intrinsics.c(this.f51999b, redirectAfterLogin.f51999b);
            }

            public final int hashCode() {
                int iHashCode = this.f51998a.hashCode() * 31;
                RedirectionArgs redirectionArgs = this.f51999b;
                return iHashCode + (redirectionArgs == null ? 0 : redirectionArgs.hashCode());
            }

            public final String toString() {
                return "RedirectAfterLogin(loginRedirection=" + this.f51998a + ", redirectionArgs=" + this.f51999b + ")";
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation;", "Feed", "Wishlist", "Services", "Catalog", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Feed;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Services;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Wishlist;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class Tab implements Navigation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MainTopLevelDestination f52000a;

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Feed;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab;", "", "feedTab", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Feed extends Tab {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f52011b;

            public Feed(String str) {
                super(MainTopLevelDestination.FEED, null);
                this.f52011b = str;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Feed) && Intrinsics.c(this.f52011b, ((Feed) obj).f52011b);
            }

            public final int hashCode() {
                String str = this.f52011b;
                if (str == null) {
                    return 0;
                }
                return str.hashCode();
            }

            public final String toString() {
                return fc.h("Feed(feedTab=", this.f52011b, ")");
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Services;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Services extends Tab {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static final Services f52012b = new Services(MainTopLevelDestination.SERVICES, null);

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof Services);
            }

            public final int hashCode() {
                return -482407387;
            }

            public final String toString() {
                return "Services";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Wishlist;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Wishlist extends Tab {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static final Wishlist f52013b = new Wishlist(MainTopLevelDestination.WISHLIST, null);

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof Wishlist);
            }

            public final int hashCode() {
                return 1464709516;
            }

            public final String toString() {
                return "Wishlist";
            }
        }

        public Tab(MainTopLevelDestination mainTopLevelDestination, DefaultConstructorMarker defaultConstructorMarker) {
            this.f52000a = mainTopLevelDestination;
        }

        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0006\b\t\n\u000b\f\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab;", "StoreMode", "CatalogProduct", "CatalogPlp", "CatalogSkuList", "CatalogSection", "CatalogDefault", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogDefault;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogPlp;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogSection;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogSkuList;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static abstract class Catalog extends Tab {

            @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogDefault;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class CatalogDefault extends Catalog {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public static final CatalogDefault f52001b = new CatalogDefault(null);

                public final boolean equals(Object obj) {
                    return this == obj || (obj instanceof CatalogDefault);
                }

                public final int hashCode() {
                    return 1280045572;
                }

                public final String toString() {
                    return "CatalogDefault";
                }
            }

            @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogSection;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog;", "", "section", "category", "subCategory", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class CatalogSection extends Catalog {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final String f52006b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final String f52007c;
                public final String d;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public CatalogSection(String str, String str2, String str3) {
                    super(null);
                    str.getClass();
                    this.f52006b = str;
                    this.f52007c = str2;
                    this.d = str3;
                }

                public final boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (!(obj instanceof CatalogSection)) {
                        return false;
                    }
                    CatalogSection catalogSection = (CatalogSection) obj;
                    return Intrinsics.c(this.f52006b, catalogSection.f52006b) && Intrinsics.c(this.f52007c, catalogSection.f52007c) && Intrinsics.c(this.d, catalogSection.d);
                }

                public final int hashCode() {
                    int iHashCode = this.f52006b.hashCode() * 31;
                    String str = this.f52007c;
                    int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
                    String str2 = this.d;
                    return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
                }

                public final String toString() {
                    return n00.r(this.d, ")", fc.s("CatalogSection(section=", this.f52006b, ", category=", this.f52007c, ", subCategory="));
                }
            }

            @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogSkuList;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog;", "", "", "skuIds", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class CatalogSkuList extends Catalog {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final List f52008b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public CatalogSkuList(List<String> list) {
                    super(null);
                    list.getClass();
                    this.f52008b = list;
                }

                public final boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return (obj instanceof CatalogSkuList) && Intrinsics.c(this.f52008b, ((CatalogSkuList) obj).f52008b);
                }

                public final int hashCode() {
                    return this.f52008b.hashCode();
                }

                public final String toString() {
                    return d21.o("CatalogSkuList(skuIds=", ")", this.f52008b);
                }
            }

            public Catalog(DefaultConstructorMarker defaultConstructorMarker) {
                super(MainTopLevelDestination.CATALOG, null);
            }

            /* JADX INFO: loaded from: classes4.dex */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog;", "", "rmsCode", "token", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;", "storeModeLaunchMode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class StoreMode extends Catalog {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final String f52009b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final String f52010c;
                public final StoreModeLaunchMode d;

                public StoreMode(String str, String str2, StoreModeLaunchMode storeModeLaunchMode) {
                    super(null);
                    this.f52009b = str;
                    this.f52010c = str2;
                    this.d = storeModeLaunchMode;
                }

                public final boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (!(obj instanceof StoreMode)) {
                        return false;
                    }
                    StoreMode storeMode = (StoreMode) obj;
                    return Intrinsics.c(this.f52009b, storeMode.f52009b) && Intrinsics.c(this.f52010c, storeMode.f52010c) && this.d == storeMode.d;
                }

                public final int hashCode() {
                    String str = this.f52009b;
                    int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
                    String str2 = this.f52010c;
                    int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
                    StoreModeLaunchMode storeModeLaunchMode = this.d;
                    return iHashCode2 + (storeModeLaunchMode != null ? storeModeLaunchMode.hashCode() : 0);
                }

                public final String toString() {
                    StringBuilder sbS = fc.s("StoreMode(rmsCode=", this.f52009b, ", token=", this.f52010c, ", storeModeLaunchMode=");
                    sbS.append(this.d);
                    sbS.append(")");
                    return sbS.toString();
                }

                public /* synthetic */ StoreMode(String str, String str2, StoreModeLaunchMode storeModeLaunchMode, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                    this(str, str2, (i2 & 4) != 0 ? null : storeModeLaunchMode);
                }
            }

            @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogPlp;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog;", "", "plpId", "themeId", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class CatalogPlp extends Catalog {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final String f52002b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final String f52003c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public CatalogPlp(String str, String str2) {
                    super(null);
                    str.getClass();
                    this.f52002b = str;
                    this.f52003c = str2;
                }

                public final boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (!(obj instanceof CatalogPlp)) {
                        return false;
                    }
                    CatalogPlp catalogPlp = (CatalogPlp) obj;
                    return Intrinsics.c(this.f52002b, catalogPlp.f52002b) && Intrinsics.c(this.f52003c, catalogPlp.f52003c);
                }

                public final int hashCode() {
                    int iHashCode = this.f52002b.hashCode() * 31;
                    String str = this.f52003c;
                    return iHashCode + (str == null ? 0 : str.hashCode());
                }

                public final String toString() {
                    return d21.l("CatalogPlp(plpId=", this.f52002b, ", themeId=", this.f52003c, ")");
                }

                public /* synthetic */ CatalogPlp(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                    this(str, (i2 & 2) != 0 ? null : str2);
                }
            }

            @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogProduct;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "isFromNativeShare", "<init>", "(Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class CatalogProduct extends Catalog {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final String f52004b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final boolean f52005c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public CatalogProduct(String str, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
                    super(null);
                    str.getClass();
                    this.f52004b = str;
                    this.f52005c = z;
                }

                public final boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (!(obj instanceof CatalogProduct)) {
                        return false;
                    }
                    CatalogProduct catalogProduct = (CatalogProduct) obj;
                    String str = catalogProduct.f52004b;
                    SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                    return Intrinsics.c(this.f52004b, str) && this.f52005c == catalogProduct.f52005c;
                }

                public final int hashCode() {
                    SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                    return Boolean.hashCode(this.f52005c) + (this.f52004b.hashCode() * 31);
                }

                public final String toString() {
                    SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                    return d21.m("CatalogProduct(sku=", this.f52004b, ", isFromNativeShare=", ")", this.f52005c);
                }

                public /* synthetic */ CatalogProduct(String str, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                    this(str, (i2 & 2) != 0 ? false : z, null);
                }
            }
        }
    }
}

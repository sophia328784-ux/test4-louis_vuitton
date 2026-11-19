package com.vuitton.android.presentation.screen.main;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import androidx.activity.result.ActivityResultLauncher;
import com.vuitton.android.R;
import com.vuitton.android.presentation.link.models.ParsedLink;
import com.vuitton.android.presentation.redirectlink.DeepLink;
import com.vuitton.android.presentation.redirectlink.LinkEffect;
import com.vuitton.android.presentation.redirectlink.LinkEffect$Navigation$Direct$Common$ToImmersiveArticle;
import com.vuitton.android.presentation.redirectlink.LinkEffect$Navigation$Direct$Common$ToSharedWishlist;
import com.vuitton.android.presentation.redirectlink.LinkEffect$Navigation$Direct$Common$ToWebView;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionActivity;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideActivity;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;
import com.vuitton.android.presentation.screen.authentication.LoginRedirection;
import com.vuitton.android.presentation.screen.authentication.LoginRedirectionType;
import com.vuitton.android.presentation.screen.authentication.landing.AccountActivationLandingActivity;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.base.BaseActivity;
import com.vuitton.android.presentation.screen.connectivity.home.ConnectivityActivity;
import com.vuitton.android.presentation.screen.connectivity.watch.PairWatchV2Ui;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleDestinations;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleDestinationsKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.mylv.MyLvActivity;
import com.vuitton.android.presentation.screen.mylv.MyLvDeeplinkRouter;
import com.vuitton.android.presentation.screen.mylv.MyLvRoutes$Routes;
import com.vuitton.android.presentation.screen.options.legaltext.LegalTextActivity;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesActivity;
import com.vuitton.android.presentation.screen.osa.OsaActivity;
import com.vuitton.android.presentation.screen.osa.OsaRoutesName;
import com.vuitton.android.presentation.screen.osa.models.OsaOriginScreen;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import com.vuitton.android.presentation.screen.personalselections.PersonalSelectionsActivity;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionTypeUiModel;
import com.vuitton.android.presentation.screen.portal.PortalSliderActivity;
import com.vuitton.android.presentation.screen.services.ServicesDeeplinkRouter;
import com.vuitton.android.presentation.screen.services.ServicesRoutes$Routes;
import com.vuitton.android.presentation.screen.spotlight.SpotlightDestinations;
import com.vuitton.android.presentation.screen.spotlight.SpotlightDestinationsKt;
import com.vuitton.android.presentation.screen.story.StoryDestinations;
import com.vuitton.android.presentation.screen.story.StoryDestinationsKt;
import com.vuitton.android.presentation.screen.webview.WebViewActivity;
import com.vuitton.android.presentation.screen.webview.WebViewRouter;
import com.vuitton.android.presentation.screen.wishlist.WishlistActivity;
import defpackage.v40;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;", "", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDeeplinkRouter;", "myLvDeeplinkRouter", "Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter;", "servicesDeeplinkRouter", "Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;", "webViewRouter", "<init>", "(Lcom/vuitton/android/presentation/screen/mylv/MyLvDeeplinkRouter;Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter;Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MainActivityRouter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MyLvDeeplinkRouter f59048a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ServicesDeeplinkRouter f59049b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WebViewRouter f59050c;

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f59051a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f59052b;

        static {
            int[] iArr = new int[LoginRedirectionType.values().length];
            try {
                iArr[LoginRedirectionType.ACCOUNT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoginRedirectionType.SERVICES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f59051a = iArr;
            int[] iArr2 = new int[LoginRedirection.values().length];
            try {
                iArr2[LoginRedirection.SERVICES.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[LoginRedirection.REPAIR_SECTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[LoginRedirection.REPAIR_CREATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[LoginRedirection.REPAIR_DETAIL.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[LoginRedirection.OSA.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[LoginRedirection.OSA_MY_APPOINTMENT.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[LoginRedirection.MY_LV.ordinal()] = 7;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[LoginRedirection.PROFILE.ordinal()] = 8;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[LoginRedirection.ORDERS.ordinal()] = 9;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[LoginRedirection.WISHLIST.ordinal()] = 10;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr2[LoginRedirection.CERTIFICATE_LIST.ordinal()] = 11;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr2[LoginRedirection.MY_CERTIFICATES.ordinal()] = 12;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr2[LoginRedirection.CERTIFICATE_DETAIL.ordinal()] = 13;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr2[LoginRedirection.CERTIFICATE_DIAMONDS_ACTIVATION.ordinal()] = 14;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr2[LoginRedirection.EXCLUSIVE_SECTION.ordinal()] = 15;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr2[LoginRedirection.EXCLUSIVE_CATEGORY.ordinal()] = 16;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr2[LoginRedirection.EXCLUSIVE_DETAIL.ordinal()] = 17;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr2[LoginRedirection.MY_EXCLUSIVE.ordinal()] = 18;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr2[LoginRedirection.LVPASS_QRCODE.ordinal()] = 19;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr2[LoginRedirection.PRIVACY_SETTINGS.ordinal()] = 20;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr2[LoginRedirection.ORDER_DETAIL.ordinal()] = 21;
            } catch (NoSuchFieldError unused23) {
            }
            f59052b = iArr2;
        }
    }

    @Inject
    public MainActivityRouter(MyLvDeeplinkRouter myLvDeeplinkRouter, ServicesDeeplinkRouter servicesDeeplinkRouter, WebViewRouter webViewRouter) {
        myLvDeeplinkRouter.getClass();
        servicesDeeplinkRouter.getClass();
        webViewRouter.getClass();
        this.f59048a = myLvDeeplinkRouter;
        this.f59049b = servicesDeeplinkRouter;
        this.f59050c = webViewRouter;
    }

    public static void b(MainActivityRouter mainActivityRouter, Activity activity, Uri uri, String str, String str2, String str3, String str4, String str5) {
        Intent intentA;
        ImmersiveArticleDestinations immersiveArticleDestinationsB = ImmersiveArticleDestinationsKt.b(uri, str, str2, str3, str4, str5);
        if (immersiveArticleDestinationsB == null || (intentA = ImmersiveArticleDestinationsKt.a(immersiveArticleDestinationsB, activity)) == null) {
            return;
        }
        activity.startActivity(intentA);
    }

    public final void a(Activity activity, ActivityResultLauncher activityResultLauncher, LinkEffect.Navigation.Direct direct) {
        String str;
        Intent intentC;
        activityResultLauncher.getClass();
        direct.getClass();
        if (direct instanceof LinkEffect.Navigation.Direct.FromDeeplink.ToPortalSlider) {
            String str2 = ((LinkEffect.Navigation.Direct.FromDeeplink.ToPortalSlider) direct).f51990a;
            PortalSliderActivity.s.getClass();
            activity.startActivity(PortalSliderActivity.Companion.a(activity, str2));
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromDeeplink.ToAudioGuide) {
            LinkEffect.Navigation.Direct.FromDeeplink.ToAudioGuide toAudioGuide = (LinkEffect.Navigation.Direct.FromDeeplink.ToAudioGuide) direct;
            String str3 = toAudioGuide.f51973a;
            String str4 = toAudioGuide.f51974b;
            AudioGuideActivity.r.getClass();
            activity.startActivity(AudioGuideActivity.Companion.a(activity, str3, str4));
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromDeeplink.ToAICompanion) {
            AICompanionActivity.v.getClass();
            activity.startActivity(AICompanionActivity.Companion.a(activity));
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromDeeplink.ToProductDetails) {
            String str5 = ((LinkEffect.Navigation.Direct.FromDeeplink.ToProductDetails) direct).f51992a;
            PdpActivity.D.getClass();
            activity.startActivity(PdpActivity.Companion.b(activity, str5));
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromDeeplink.ToSpotlightCollectionDeepLink) {
            activity.startActivity(SpotlightDestinationsKt.a(new SpotlightDestinations.ToSpotlightPage(((LinkEffect.Navigation.Direct.FromDeeplink.ToSpotlightCollectionDeepLink) direct).f51995a), activity));
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromDeeplink.ToAdvisorCurationFromDeepLink) {
            String str6 = ((LinkEffect.Navigation.Direct.FromDeeplink.ToAdvisorCurationFromDeepLink) direct).f51972a;
            PersonalSelectionsActivity.Companion companion = PersonalSelectionsActivity.s;
            SelectionTypeUiModel selectionTypeUiModel = SelectionTypeUiModel.ADVISOR_CURATION;
            companion.getClass();
            str6.getClass();
            selectionTypeUiModel.getClass();
            Intent intent = new Intent(activity, (Class<?>) PersonalSelectionsActivity.class);
            intent.putExtra("PERSONAL_SELECTION_ID", str6);
            intent.putExtra("PERSONAL_SELECTION_TYPE", selectionTypeUiModel);
            activity.startActivity(intent);
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromDeeplink.ToInStoreSelectionFromDeepLink) {
            String str7 = ((LinkEffect.Navigation.Direct.FromDeeplink.ToInStoreSelectionFromDeepLink) direct).f51981a;
            PersonalSelectionsActivity.Companion companion2 = PersonalSelectionsActivity.s;
            SelectionTypeUiModel selectionTypeUiModel2 = SelectionTypeUiModel.IN_STORE;
            companion2.getClass();
            str7.getClass();
            selectionTypeUiModel2.getClass();
            Intent intent2 = new Intent(activity, (Class<?>) PersonalSelectionsActivity.class);
            intent2.putExtra("PERSONAL_SELECTION_ID", str7);
            intent2.putExtra("PERSONAL_SELECTION_TYPE", selectionTypeUiModel2);
            activity.startActivity(intent2);
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromDeeplink.ToLoginWithRedirection) {
            String str8 = ((LinkEffect.Navigation.Direct.FromDeeplink.ToLoginWithRedirection) direct).f51983a;
            AuthenticationActivity.Companion companion3 = AuthenticationActivity.u;
            AuthenticationActivity.Routes routes = AuthenticationActivity.Routes.LOGIN_WITH_PARAM_FROM_DEEPLINK;
            TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.ONBOARDING;
            companion3.getClass();
            activityResultLauncher.a(AuthenticationActivity.Companion.c(activity, routes, str8, trackingAuthOrigin));
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromDeeplink.ToRegisterWithRedirection) {
            LinkEffect.Navigation.Direct.FromDeeplink.ToRegisterWithRedirection toRegisterWithRedirection = (LinkEffect.Navigation.Direct.FromDeeplink.ToRegisterWithRedirection) direct;
            List list = toRegisterWithRedirection.f51993a;
            if (toRegisterWithRedirection.f51994b) {
                AccountActivationLandingActivity.Companion companion4 = AccountActivationLandingActivity.p;
                str = list != null ? (String) CollectionsKt.firstOrNull(list) : null;
                companion4.getClass();
                intentC = new Intent(activity, (Class<?>) AccountActivationLandingActivity.class);
                intentC.putExtra("EXTRA_CID", str);
            } else {
                AuthenticationActivity.Companion companion5 = AuthenticationActivity.u;
                AuthenticationActivity.Routes routes2 = AuthenticationActivity.Routes.REGISTER_WITH_PREFILLED_EMAIL;
                str = list != null ? (String) CollectionsKt.firstOrNull(list) : null;
                TrackingAuthOrigin trackingAuthOrigin2 = TrackingAuthOrigin.ONBOARDING;
                companion5.getClass();
                intentC = AuthenticationActivity.Companion.c(activity, routes2, str, trackingAuthOrigin2);
            }
            intentC.putExtra("MAIN_ACTIVITY_REQUEST_CODE", 163);
            activityResultLauncher.a(intentC);
            return;
        }
        if (direct.equals(LinkEffect.Navigation.Direct.FromDeeplink.ToAuthenticateDeeplinkV2.f51975a)) {
            AuthenticationActivity.Companion companion6 = AuthenticationActivity.u;
            AuthenticationActivity.Routes routes3 = AuthenticationActivity.Routes.WELCOME_PAGE;
            LoginContext loginContext = LoginContext.DEFAULT;
            TrackingAuthOrigin trackingAuthOrigin3 = TrackingAuthOrigin.ONBOARDING;
            companion6.getClass();
            Intent intentA = AuthenticationActivity.Companion.a(activity, routes3, loginContext, trackingAuthOrigin3);
            intentA.putExtra("MAIN_ACTIVITY_REQUEST_CODE", 164);
            activityResultLauncher.a(intentA);
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromDeeplink.ToLVPassQRCode) {
            MyLvRoutes$Routes myLvRoutes$Routes = MyLvRoutes$Routes.REDIRECTION_LVPASS_QRCODE;
            this.f59048a.getClass();
            MyLvDeeplinkRouter.a((BaseActivity) activity, myLvRoutes$Routes, null);
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromDeeplink.ToMyAccount) {
            MyLvActivity.s.getClass();
            activity.startActivity(MyLvActivity.Companion.a(activity, null));
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromDeeplink.ToMyAccountWithParsedLink) {
            ParsedLink parsedLink = ((LinkEffect.Navigation.Direct.FromDeeplink.ToMyAccountWithParsedLink) direct).f51985a;
            MyLvActivity.s.getClass();
            activity.startActivity(MyLvActivity.Companion.a(activity, parsedLink));
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromDeeplink.ToMyAppointments) {
            ServicesRoutes$Routes servicesRoutes$Routes = ServicesRoutes$Routes.REDIRECTION_OSA_MY_APPOINTMENTS;
            this.f59049b.getClass();
            ServicesDeeplinkRouter.a((BaseActivity) activity, servicesRoutes$Routes, null);
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromDeeplink.ToPrivacyPolicyFromDeepLink) {
            LegalTextActivity.p.getClass();
            activity.startActivity(LegalTextActivity.Companion.a(activity, false));
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromDeeplink.ToNotificationsPreferencesFromDeepLink) {
            NotificationsPreferencesActivity.q.getClass();
            Intent intent3 = new Intent(activity, (Class<?>) NotificationsPreferencesActivity.class);
            intent3.putExtra("extra_display_bottom_sheet", false);
            activity.startActivity(intent3);
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromDeeplink.ToCart) {
            activity.startActivity(MainActivity.Companion.a(MainActivity.L, activity, MainTopLevelDestination.CART, null, null, null, 28));
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromDeeplink.ToCheckout) {
            activity.startActivity(WebViewActivity.Companion.a(WebViewActivity.v, activity, ((LinkEffect.Navigation.Direct.FromDeeplink.ToCheckout) direct).f51979b, false, false, null, null, null, false, false, null, 2044));
            return;
        }
        boolean z = direct instanceof LinkEffect$Navigation$Direct$Common$ToWebView;
        WebViewRouter webViewRouter = this.f59050c;
        if (z) {
            WebViewRouter.b(webViewRouter, activity, ((LinkEffect$Navigation$Direct$Common$ToWebView) direct).f51966a, false, 124);
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromDeeplink.ToNativeStory) {
            activity.startActivity(StoryDestinationsKt.a(new StoryDestinations.ToStoryPage(((LinkEffect.Navigation.Direct.FromDeeplink.ToNativeStory) direct).f51988a), activity));
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromDeeplink.ToStoreLocator) {
            webViewRouter.getClass();
            activity.startActivity(WebViewActivity.Companion.a(WebViewActivity.v, activity, webViewRouter.f65506a.a().g, false, false, null, null, null, false, false, null, 2044));
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromDeeplink.ToTravelFromDeepLink) {
            ConnectivityActivity.Companion companion7 = ConnectivityActivity.q;
            String host = DeepLink.TRAVELS.getHost();
            companion7.getClass();
            activity.startActivity(ConnectivityActivity.Companion.a(activity, host));
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromDeeplink.ToMyWatchFromPairingWith) {
            PairWatchV2Ui pairWatchV2Ui = ((LinkEffect.Navigation.Direct.FromDeeplink.ToMyWatchFromPairingWith) direct).f51987a;
            MyLvActivity.s.getClass();
            Intent intentA2 = MyLvActivity.Companion.a(activity, null);
            ConnectivityActivity.q.getClass();
            Intent intent4 = new Intent(activity, (Class<?>) ConnectivityActivity.class);
            intent4.putExtra("PAIRING_V2", pairWatchV2Ui);
            activity.startActivities(new Intent[]{intentA2, intent4});
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromDeeplink.ToConnectivityDeeplink) {
            String str9 = ((LinkEffect.Navigation.Direct.FromDeeplink.ToConnectivityDeeplink) direct).f51980a;
            ConnectivityActivity.q.getClass();
            activity.startActivity(ConnectivityActivity.Companion.a(activity, str9));
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromDeeplink.ToAuthenticateFromTravel) {
            AuthenticationActivity.Companion companion8 = AuthenticationActivity.u;
            AuthenticationActivity.Routes routes4 = AuthenticationActivity.Routes.WELCOME_PAGE;
            LoginContext loginContext2 = LoginContext.DEFAULT;
            TrackingAuthOrigin trackingAuthOrigin4 = TrackingAuthOrigin.ONBOARDING;
            companion8.getClass();
            Intent intentA3 = AuthenticationActivity.Companion.a(activity, routes4, loginContext2, trackingAuthOrigin4);
            intentA3.putExtra("MAIN_ACTIVITY_REQUEST_CODE", 166);
            activityResultLauncher.a(intentA3);
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromAppLink.ToBrowser) {
            Intent intent5 = new Intent("android.intent.action.VIEW", Uri.parse(((LinkEffect.Navigation.Direct.FromAppLink.ToBrowser) direct).f51967a));
            intent5.setPackage("com.android.chrome");
            try {
                activity.startActivity(intent5);
            } catch (ActivityNotFoundException unused) {
                Intent intent6 = activity.getIntent();
                if (intent6 != null) {
                    intent6.setPackage(null);
                }
                activity.startActivity(Intent.createChooser(activity.getIntent(), activity.getString(R.string.open_with)));
            }
            activity.finish();
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromAppLink.ToSeoLandingPage) {
            b(this, activity, null, ((LinkEffect.Navigation.Direct.FromAppLink.ToSeoLandingPage) direct).f51970a, ImmersiveArticleType.SEO_LANDING_PAGE.getType(), null, null, null);
            return;
        }
        if (direct instanceof LinkEffect.Navigation.Direct.FromAppLink.ToOsaCreateAppointment) {
            LinkEffect.Navigation.Direct.FromAppLink.ToOsaCreateAppointment toOsaCreateAppointment = (LinkEffect.Navigation.Direct.FromAppLink.ToOsaCreateAppointment) direct;
            activity.startActivity(OsaActivity.Companion.c(OsaActivity.u, activity, OsaRoutesName.LOCATION_FORM, toOsaCreateAppointment.f51968a, toOsaCreateAppointment.f51969b, null, OsaOriginScreen.APP_LINK, 432));
            return;
        }
        if (!(direct instanceof LinkEffect$Navigation$Direct$Common$ToImmersiveArticle)) {
            if (!(direct instanceof LinkEffect$Navigation$Direct$Common$ToSharedWishlist)) {
                v40.g();
                return;
            } else {
                LinkEffect$Navigation$Direct$Common$ToSharedWishlist linkEffect$Navigation$Direct$Common$ToSharedWishlist = (LinkEffect$Navigation$Direct$Common$ToSharedWishlist) direct;
                activity.startActivity(WishlistActivity.Companion.a(WishlistActivity.t, activity, false, linkEffect$Navigation$Direct$Common$ToSharedWishlist.f51964a, linkEffect$Navigation$Direct$Common$ToSharedWishlist.f51965b, 2));
                return;
            }
        }
        Uri uri = ((LinkEffect$Navigation$Direct$Common$ToImmersiveArticle) direct).f51963a;
        String str10 = uri.getPathSegments().get(0);
        str10.getClass();
        String str11 = str10;
        String type = ImmersiveArticleType.IMMERSIVE_ARTICLE.getType();
        List<String> pathSegments = uri.getPathSegments();
        pathSegments.getClass();
        String str12 = (String) CollectionsKt.G(1, pathSegments);
        List<String> pathSegments2 = uri.getPathSegments();
        pathSegments2.getClass();
        String str13 = (String) CollectionsKt.G(2, pathSegments2);
        List<String> pathSegments3 = uri.getPathSegments();
        pathSegments3.getClass();
        b(this, activity, uri, str11, type, str12, str13, (String) CollectionsKt.G(3, pathSegments3));
    }
}

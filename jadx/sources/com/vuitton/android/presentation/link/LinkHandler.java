package com.vuitton.android.presentation.link;

import android.content.Intent;
import androidx.activity.result.ActivityResultLauncher;
import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.presentation.chat.ChatAttachable;
import com.vuitton.android.presentation.contact.compose.ContactUsMethod;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import com.vuitton.android.presentation.extensions.StringAndroidExtKt;
import com.vuitton.android.presentation.helper.NavigationHelper;
import com.vuitton.android.presentation.link.models.ParsedLink;
import com.vuitton.android.presentation.link.navigation.LinkNavigator;
import com.vuitton.android.presentation.link.parsing.LinkClassifier;
import com.vuitton.android.presentation.link.parsing.LinkParser;
import com.vuitton.android.presentation.screen.account.lvpass.LVPassActivity;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleDestinations;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleDestinationsKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.osa.OsaRoutesName;
import com.vuitton.android.presentation.screen.osa.models.OsaOriginScreen;
import com.vuitton.android.presentation.screen.services.ServicesDestinations;
import com.vuitton.android.presentation.screen.services.ServicesDestinationsKt;
import com.vuitton.android.presentation.screen.webview.WebViewActivity;
import com.vuitton.android.presentation.screen.webview.WebViewRouter;
import com.vuitton.android.presentation.screen.webview.WebViewSocialAuthenticationHandler;
import defpackage.v40;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\fB)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/link/LinkHandler;", "", "Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;", "linkClassifier", "Lcom/vuitton/android/presentation/link/parsing/LinkParser;", "linkParser", "Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;", "linkNavigator", "Lcom/vuitton/android/presentation/helper/NavigationHelper;", "navigationHelper", "<init>", "(Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;Lcom/vuitton/android/presentation/link/parsing/LinkParser;Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;Lcom/vuitton/android/presentation/helper/NavigationHelper;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LinkHandler {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f51604e = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkClassifier f51605a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkParser f51606b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkNavigator f51607c;
    public final NavigationHelper d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/link/LinkHandler$Companion;", "", "", "ARG_EXPLORE_IS_DEEP_IN_HIERARCHY", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public LinkHandler(LinkClassifier linkClassifier, LinkParser linkParser, LinkNavigator linkNavigator, NavigationHelper navigationHelper) {
        linkClassifier.getClass();
        linkParser.getClass();
        linkNavigator.getClass();
        navigationHelper.getClass();
        this.f51605a = linkClassifier;
        this.f51606b = linkParser;
        this.f51607c = linkNavigator;
        this.d = navigationHelper;
    }

    public static boolean b(LinkHandler linkHandler, String str, FragmentActivity fragmentActivity) {
        linkHandler.getClass();
        str.getClass();
        if (fragmentActivity == null || linkHandler.f51605a.a(str)) {
            return false;
        }
        return linkHandler.a(str, fragmentActivity, null);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:74:0x017d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:76:? A[RETURN, SYNTHETIC] */
    public final boolean a(String str, FragmentActivity fragmentActivity, ActivityResultLauncher activityResultLauncher) {
        ParsedLink parsedLinkA;
        boolean z;
        Intent intentA;
        boolean zB;
        str.getClass();
        if (fragmentActivity == null || (parsedLinkA = this.f51606b.a(str)) == null) {
            return false;
        }
        LinkNavigator linkNavigator = this.f51607c;
        RequireCachedAppConfigUseCase requireCachedAppConfigUseCase = linkNavigator.f51695b;
        UserSessionService userSessionService = linkNavigator.d;
        WebViewRouter webViewRouter = linkNavigator.f51694a;
        NavigationHelper navigationHelper = linkNavigator.f51696c;
        WebViewSocialAuthenticationHandler webViewSocialAuthenticationHandler = linkNavigator.f51697e;
        if (parsedLinkA instanceof ParsedLink.AuthenticateGoogle) {
            webViewSocialAuthenticationHandler.b(fragmentActivity);
        } else if (parsedLinkA instanceof ParsedLink.AuthenticateLine) {
            webViewSocialAuthenticationHandler.c(fragmentActivity);
        } else {
            if (!(parsedLinkA instanceof ParsedLink.AuthenticateKakao)) {
                if (parsedLinkA instanceof ParsedLink.ImmersiveArticle) {
                    ImmersiveArticleDestinations immersiveArticleDestinationsB = ImmersiveArticleDestinationsKt.b((126 & 1) != 0 ? null : ((ParsedLink.ImmersiveArticle) parsedLinkA).f51662b, (126 & 2) != 0 ? null : null, ImmersiveArticleType.IMMERSIVE_ARTICLE.getType(), null, null, null);
                    zB = NavigationHelper.b(navigationHelper, immersiveArticleDestinationsB != null ? ImmersiveArticleDestinationsKt.a(immersiveArticleDestinationsB, fragmentActivity) : null, fragmentActivity, null, 12);
                    z = false;
                } else if (parsedLinkA instanceof ParsedLink.WebView) {
                    WebViewRouter.b(webViewRouter, fragmentActivity, ((ParsedLink.WebView) parsedLinkA).f51687b, false, 124);
                } else {
                    if (parsedLinkA instanceof ParsedLink.StoreLocator) {
                        z = false;
                        NavigationHelper.b(navigationHelper, WebViewActivity.Companion.a(WebViewActivity.v, fragmentActivity, requireCachedAppConfigUseCase.a().g, false, false, null, null, null, false, false, null, 2044), fragmentActivity, null, 12);
                    } else {
                        z = false;
                        ActivityResultLauncher activityResultLauncher2 = null;
                        if (parsedLinkA instanceof ParsedLink.CatalogProductList) {
                            Intent intentA2 = LinkNavigator.a(fragmentActivity, ((ParsedLink.CatalogProductList) parsedLinkA).f51650b);
                            if (intentA2 == null) {
                                zB = false;
                            } else {
                                NavigationHelper.b(navigationHelper, intentA2, fragmentActivity, null, 12);
                            }
                        } else if (parsedLinkA instanceof ParsedLink.Services) {
                            if (fragmentActivity instanceof MainActivity) {
                                NavigationHelper.b(navigationHelper, MainActivity.Companion.a(MainActivity.L, fragmentActivity, MainTopLevelDestination.SERVICES, null, null, null, 28), fragmentActivity, null, 12);
                            } else {
                                zB = false;
                            }
                        } else if (parsedLinkA instanceof ParsedLink.RepairCreate) {
                            boolean zB2 = userSessionService.b();
                            Intent intentA3 = zB2 ? ServicesDestinationsKt.a(ServicesDestinations.ToCareServicesCreatePage.f64291a, fragmentActivity) : ServicesDestinationsKt.a(ServicesDestinations.ToWelcomePage.f64303a, fragmentActivity);
                            if (!zB2) {
                                activityResultLauncher2 = activityResultLauncher;
                            }
                            zB = NavigationHelper.b(navigationHelper, intentA3, fragmentActivity, activityResultLauncher2, 8);
                        } else if (parsedLinkA instanceof ParsedLink.Appointments) {
                            zB = NavigationHelper.b(navigationHelper, ServicesDestinationsKt.a(new ServicesDestinations.ToOsaPage(OsaRoutesName.LOCATION_FORM, ((ParsedLink.Appointments) parsedLinkA).f51638b, null, null, false, OsaOriginScreen.APP_LINK, null, false, 220, null), fragmentActivity), fragmentActivity, null, 12);
                        } else if (parsedLinkA instanceof ParsedLink.LegalNotices) {
                            NavigationHelper.b(navigationHelper, LinkNavigator.c(fragmentActivity, ((ParsedLink.LegalNotices) parsedLinkA).f51663b), fragmentActivity, null, 12);
                        } else if (parsedLinkA instanceof ParsedLink.OrderConfirmation) {
                            String str2 = requireCachedAppConfigUseCase.a().l;
                            String str3 = ((ParsedLink.OrderConfirmation) parsedLinkA).f51669b;
                            if (StringAndroidExtKt.c(str3, str2)) {
                                WebViewRouter.b(webViewRouter, fragmentActivity, str3, true, 120);
                            } else {
                                zB = false;
                            }
                        } else if (parsedLinkA instanceof ParsedLink.LvPassQrCode) {
                            if (userSessionService.b()) {
                                LVPassActivity.s.getClass();
                                intentA = LVPassActivity.Companion.a(fragmentActivity);
                            } else {
                                AuthenticationActivity.Companion companion = AuthenticationActivity.u;
                                AuthenticationActivity.Routes routes = AuthenticationActivity.Routes.WELCOME_PAGE_WITH_EXIT_REDIRECT_LVPASS;
                                LoginContext loginContext = LoginContext.MY_LV;
                                TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.MY_LV;
                                companion.getClass();
                                intentA = AuthenticationActivity.Companion.a(fragmentActivity, routes, loginContext, trackingAuthOrigin);
                            }
                            NavigationHelper.b(navigationHelper, intentA, fragmentActivity, null, 12);
                        } else {
                            Intent intentB = LinkNavigator.b(fragmentActivity, parsedLinkA);
                            if (intentB == null) {
                                zB = false;
                            } else {
                                NavigationHelper.b(navigationHelper, intentB, fragmentActivity, null, 12);
                            }
                        }
                    }
                    zB = true;
                }
                if (zB) {
                    return true;
                }
                return z;
            }
            webViewSocialAuthenticationHandler.a(fragmentActivity);
        }
        z = false;
        zB = true;
        if (zB) {
            return true;
        }
        return z;
    }

    public final boolean c(String str, FragmentActivity fragmentActivity, ActivityResultLauncher activityResultLauncher) {
        str.getClass();
        if (fragmentActivity == null) {
            return false;
        }
        if (a(str, fragmentActivity, activityResultLauncher)) {
            return true;
        }
        if (!this.f51605a.a(str)) {
            return false;
        }
        NavigationHelper.b(this.d, WebViewActivity.Companion.a(WebViewActivity.v, fragmentActivity, str, false, false, null, null, null, false, false, null, 2044), fragmentActivity, null, 12);
        return true;
    }

    public final void d(FragmentActivity fragmentActivity, ContactUsMethod contactUsMethod, int i2, int i3, ChatAttachable chatAttachable) {
        fragmentActivity.getClass();
        contactUsMethod.getClass();
        chatAttachable.getClass();
        LinkNavigator linkNavigator = this.f51607c;
        linkNavigator.getClass();
        if (contactUsMethod instanceof ContactUsMethod.Sms) {
            ActivityExtKt.l(fragmentActivity, ((ContactUsMethod.Sms) contactUsMethod).f51137a);
            return;
        }
        if (contactUsMethod instanceof ContactUsMethod.PhoneCall) {
            ActivityExtKt.f(fragmentActivity, ((ContactUsMethod.PhoneCall) contactUsMethod).f51136a);
            return;
        }
        if (contactUsMethod instanceof ContactUsMethod.EmailForm) {
            WebViewRouter.b(linkNavigator.f51694a, fragmentActivity, ((ContactUsMethod.EmailForm) contactUsMethod).f51132a, false, 124);
            return;
        }
        if (contactUsMethod instanceof ContactUsMethod.EmailNative) {
            String str = ((ContactUsMethod.EmailNative) contactUsMethod).f51133a;
            if (str == null) {
                str = "";
            }
            ActivityExtKt.j(fragmentActivity, str, null, 6);
            return;
        }
        if (contactUsMethod instanceof ContactUsMethod.WhatsApp) {
            ActivityExtKt.m(fragmentActivity, ((ContactUsMethod.WhatsApp) contactUsMethod).f51138a);
            return;
        }
        if (contactUsMethod instanceof ContactUsMethod.KakaoTalk) {
            ActivityExtKt.i(fragmentActivity, ((ContactUsMethod.KakaoTalk) contactUsMethod).f51135a);
        } else if (contactUsMethod.equals(ContactUsMethod.Chat.f51131a)) {
            chatAttachable.b(i2, i3);
        } else {
            v40.g();
        }
    }
}

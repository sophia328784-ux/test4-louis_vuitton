package com.vuitton.android.presentation.link.navigation;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.presentation.extensions.UriExtKt;
import com.vuitton.android.presentation.helper.NavigationHelper;
import com.vuitton.android.presentation.link.models.LinkTarget;
import com.vuitton.android.presentation.link.models.ParsedLink;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionActivity;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideActivity;
import com.vuitton.android.presentation.screen.connectivity.home.ConnectivityActivity;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.mylv.MyLvActivity;
import com.vuitton.android.presentation.screen.options.legaltext.LegalTextActivity;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesActivity;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.activities.CatalogPLPActivity;
import com.vuitton.android.presentation.screen.plp.activities.SkusPLPActivity;
import com.vuitton.android.presentation.screen.portal.PortalSliderActivity;
import com.vuitton.android.presentation.screen.story.StoryDestinations;
import com.vuitton.android.presentation.screen.story.StoryDestinationsKt;
import com.vuitton.android.presentation.screen.webview.WebViewActivity;
import com.vuitton.android.presentation.screen.webview.WebViewRouter;
import com.vuitton.android.presentation.screen.webview.WebViewSocialAuthenticationHandler;
import defpackage.v40;
import java.util.ArrayList;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;", "", "Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;", "webViewRouter", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/presentation/helper/NavigationHelper;", "navigationHelper", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/presentation/screen/webview/WebViewSocialAuthenticationHandler;", "webViewSocialAuthenticationHandler", "<init>", "(Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/presentation/helper/NavigationHelper;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/screen/webview/WebViewSocialAuthenticationHandler;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LinkNavigator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WebViewRouter f51694a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f51695b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NavigationHelper f51696c;
    public final UserSessionService d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final WebViewSocialAuthenticationHandler f51697e;

    @Inject
    public LinkNavigator(WebViewRouter webViewRouter, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, NavigationHelper navigationHelper, UserSessionService userSessionService, WebViewSocialAuthenticationHandler webViewSocialAuthenticationHandler) {
        webViewRouter.getClass();
        requireCachedAppConfigUseCase.getClass();
        navigationHelper.getClass();
        userSessionService.getClass();
        webViewSocialAuthenticationHandler.getClass();
        this.f51694a = webViewRouter;
        this.f51695b = requireCachedAppConfigUseCase;
        this.f51696c = navigationHelper;
        this.d = userSessionService;
        this.f51697e = webViewSocialAuthenticationHandler;
    }

    public static Intent a(Context context, Uri uri) {
        ArrayList<String> arrayListE = UriExtKt.e(uri);
        ArrayList arrayList = new ArrayList(CollectionsKt.t(arrayListE, 10));
        for (String str : arrayListE) {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            str.getClass();
            arrayList.add(new SkuIdUiModel(str));
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return SkusPLPActivity.Companion.b(SkusPLPActivity.p, context, arrayList);
    }

    public static Intent b(Context context, ParsedLink parsedLink) {
        if (parsedLink instanceof ParsedLink.Pdp) {
            PdpActivity.Companion companion = PdpActivity.D;
            ParsedLink.Pdp pdp = (ParsedLink.Pdp) parsedLink;
            String str = pdp.f51673b;
            SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
            str.getClass();
            return PdpActivity.Companion.a(companion, context, str, false, null, null, null, pdp.f51674c, 60);
        }
        if (parsedLink instanceof ParsedLink.Plp) {
            CatalogPLPActivity.Companion companion3 = CatalogPLPActivity.x;
            String str2 = ((ParsedLink.Plp) parsedLink).f51676b;
            companion3.getClass();
            context.getClass();
            str2.getClass();
            Intent intentPutExtra = new Intent(context, (Class<?>) CatalogPLPActivity.class).putExtra("nav_arg_plp_key", str2).putExtra("nav_arg_theme_id", (String) null);
            intentPutExtra.getClass();
            return intentPutExtra;
        }
        if (parsedLink instanceof ParsedLink.NativeStory) {
            return StoryDestinationsKt.a(new StoryDestinations.ToStoryPage(((ParsedLink.NativeStory) parsedLink).f51668b), context);
        }
        if (parsedLink instanceof ParsedLink.PortalSlider) {
            PortalSliderActivity.Companion companion4 = PortalSliderActivity.s;
            String str3 = ((ParsedLink.PortalSlider) parsedLink).f51677b;
            companion4.getClass();
            return PortalSliderActivity.Companion.a(context, str3);
        }
        if (parsedLink instanceof ParsedLink.CatalogProduct) {
            PdpActivity.Companion companion5 = PdpActivity.D;
            String str4 = ((ParsedLink.CatalogProduct) parsedLink).f51649b;
            SkuIdUiModel.Companion companion6 = SkuIdUiModel.f61763c;
            str4.getClass();
            companion5.getClass();
            return PdpActivity.Companion.b(context, str4);
        }
        if (parsedLink instanceof ParsedLink.CatalogCategory) {
            CatalogPLPActivity.Companion companion7 = CatalogPLPActivity.x;
            ParsedLink.CatalogCategory catalogCategory = (ParsedLink.CatalogCategory) parsedLink;
            String str5 = catalogCategory.f51647b;
            String str6 = catalogCategory.f51648c;
            companion7.getClass();
            context.getClass();
            str5.getClass();
            Intent intentPutExtra2 = new Intent(context, (Class<?>) CatalogPLPActivity.class).putExtra("nav_arg_plp_key", str5).putExtra("nav_arg_theme_id", str6);
            intentPutExtra2.getClass();
            return intentPutExtra2;
        }
        if (parsedLink instanceof ParsedLink.Connectivity) {
            ConnectivityActivity.Companion companion8 = ConnectivityActivity.q;
            String str7 = ((ParsedLink.Connectivity) parsedLink).f51656b;
            companion8.getClass();
            return ConnectivityActivity.Companion.a(context, str7);
        }
        if (parsedLink instanceof ParsedLink.Feed) {
            return MainActivity.Companion.a(MainActivity.L, context, null, null, null, ((ParsedLink.Feed) parsedLink).f51660b, 14);
        }
        if (parsedLink.equals(ParsedLink.Privacy.f51679b)) {
            LegalTextActivity.p.getClass();
            return LegalTextActivity.Companion.a(context, false);
        }
        if (parsedLink.equals(ParsedLink.PreferenceCenter.f51678b)) {
            NotificationsPreferencesActivity.q.getClass();
            context.getClass();
            Intent intent = new Intent(context, (Class<?>) NotificationsPreferencesActivity.class);
            intent.putExtra("extra_display_bottom_sheet", false);
            return intent;
        }
        if (parsedLink instanceof ParsedLink.AudioGuide) {
            AudioGuideActivity.Companion companion9 = AudioGuideActivity.r;
            ParsedLink.AudioGuide audioGuide = (ParsedLink.AudioGuide) parsedLink;
            String str8 = audioGuide.f51639b;
            String str9 = audioGuide.f51640c;
            companion9.getClass();
            return AudioGuideActivity.Companion.a(context, str8, str9);
        }
        if (parsedLink instanceof ParsedLink.AICompanion) {
            AICompanionActivity.v.getClass();
            return AICompanionActivity.Companion.a(context);
        }
        if (parsedLink.equals(ParsedLink.BareExplore.f51645b)) {
            return MainActivity.Companion.a(MainActivity.L, context, null, null, null, null, 30);
        }
        if (parsedLink.equals(ParsedLink.MyLv.f51665b) || parsedLink.equals(ParsedLink.PersonalWishlist.f51675b) || parsedLink.equals(ParsedLink.MyLvPrivacySettings.f51666b) || parsedLink.equals(ParsedLink.MyOrders.f51667b) || (parsedLink instanceof ParsedLink.OrderDetail) || parsedLink.equals(ParsedLink.Gdpr.f51661b) || parsedLink.equals(ParsedLink.CertificatesList.f51655b) || (parsedLink instanceof ParsedLink.CertificateDetail) || parsedLink.equals(ParsedLink.CertificateDiamondActivation.f51654b) || parsedLink.equals(ParsedLink.ExclusiveSection.f51659b) || (parsedLink instanceof ParsedLink.ExclusiveCategory) || (parsedLink instanceof ParsedLink.ExclusiveProduct) || parsedLink.equals(ParsedLink.Travels.f51686b) || (parsedLink instanceof ParsedLink.PairingV2) || parsedLink.equals(ParsedLink.Authenticate.f51641b)) {
            MyLvActivity.s.getClass();
            return MyLvActivity.Companion.a(context, parsedLink);
        }
        if (!(parsedLink instanceof ParsedLink.AuthenticateGoogle) && !(parsedLink instanceof ParsedLink.AuthenticateLine) && !(parsedLink instanceof ParsedLink.AuthenticateKakao) && !(parsedLink instanceof ParsedLink.WebView) && !(parsedLink instanceof ParsedLink.StoreLocator) && !(parsedLink instanceof ParsedLink.ImmersiveArticle) && !(parsedLink instanceof ParsedLink.StoryArticle) && !(parsedLink instanceof ParsedLink.SharedWishlist) && !(parsedLink instanceof ParsedLink.CatalogProductList) && !(parsedLink instanceof ParsedLink.Services) && !(parsedLink instanceof ParsedLink.RepairCreate) && !(parsedLink instanceof ParsedLink.Appointments) && !(parsedLink instanceof ParsedLink.LegalNotices) && !(parsedLink instanceof ParsedLink.OrderConfirmation) && !(parsedLink instanceof ParsedLink.CatalogSection) && !parsedLink.equals(ParsedLink.Cart.f51646b) && !parsedLink.equals(ParsedLink.LvPassQrCode.f51664b)) {
            v40.g();
        }
        return null;
    }

    public static Intent c(Context context, String str) {
        String string = UriExtKt.c(Uri.parse(str)).toString();
        string.getClass();
        return WebViewActivity.Companion.a(WebViewActivity.v, context, string, false, false, null, null, null, false, false, null, 2044);
    }

    public static LinkTarget d(Intent intent) {
        return intent != null ? new LinkTarget.StandaloneIntent(intent) : LinkTarget.ForwardToExistingFlow.f51635a;
    }
}

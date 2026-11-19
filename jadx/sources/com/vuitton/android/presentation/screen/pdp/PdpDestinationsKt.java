package com.vuitton.android.presentation.screen.pdp;

import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionActivity;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.cart.NativeCartActivity;
import com.vuitton.android.presentation.screen.cart.models.CartPreviousScreen;
import com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailActivity;
import com.vuitton.android.presentation.screen.connectivity.section.SectionType;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListActivity;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.options.legaltext.LegalTextActivity;
import com.vuitton.android.presentation.screen.osa.OsaActivity;
import com.vuitton.android.presentation.screen.osa.OsaRoutesName;
import com.vuitton.android.presentation.screen.osa.models.OsaOriginScreen;
import com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity;
import com.vuitton.android.presentation.screen.webview.WebViewActivity;
import com.vuitton.android.presentation.screen.webview.WebViewDestinations;
import com.vuitton.android.presentation.screen.webview.WebViewDestinationsKt;
import com.vuitton.android.presentation.screen.wishlist.WishlistActivity;
import defpackage.v40;
import kotlin.Metadata;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpDestinationsKt {
    public static final Intent a(PdpDestinations pdpDestinations, Context context) {
        context.getClass();
        if (pdpDestinations instanceof PdpDestinations.ToProductPage) {
            PdpDestinations.ToProductPage toProductPage = (PdpDestinations.ToProductPage) pdpDestinations;
            return PdpActivity.Companion.a(PdpActivity.D, context, toProductPage.f61111a, toProductPage.f61112b, toProductPage.f61113c, toProductPage.d, null, false, 96);
        }
        if (pdpDestinations instanceof PdpDestinations.ToWelcomePage) {
            AuthenticationActivity.Companion companion = AuthenticationActivity.u;
            AuthenticationActivity.Routes routes = AuthenticationActivity.Routes.WELCOME_PAGE_WITH_EXIT;
            LoginContext loginContext = ((PdpDestinations.ToWelcomePage) pdpDestinations).f61121a;
            TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.WISHLIST;
            companion.getClass();
            return AuthenticationActivity.Companion.a(context, routes, loginContext, trackingAuthOrigin);
        }
        if (pdpDestinations instanceof PdpDestinations.ToArPage) {
            ProductArActivity.Companion companion2 = ProductArActivity.D;
            String str = ((PdpDestinations.ToArPage) pdpDestinations).f61104a;
            companion2.getClass();
            Intent intentPutExtra = new Intent(context, (Class<?>) ProductArActivity.class).putExtra("SKU", str);
            intentPutExtra.getClass();
            return intentPutExtra;
        }
        if (pdpDestinations instanceof PdpDestinations.ToBeautyVtoPage) {
            BeautyVtoActivity.Companion companion3 = BeautyVtoActivity.D;
            ProductUiModel productUiModel = ((PdpDestinations.ToBeautyVtoPage) pdpDestinations).f61105a;
            companion3.getClass();
            Intent intent = new Intent(context, (Class<?>) BeautyVtoActivity.class);
            intent.putExtra("PRODUCT", productUiModel);
            intent.putExtra("isShadeFinder", false);
            return intent;
        }
        if (pdpDestinations instanceof PdpDestinations.ToWishlistPage) {
            return WishlistActivity.Companion.a(WishlistActivity.t, context, ((PdpDestinations.ToWishlistPage) pdpDestinations).f61123a, null, null, 12);
        }
        if (pdpDestinations instanceof PdpDestinations.ToCatalogAfterStoreModePage) {
            return MainActivity.Companion.a(MainActivity.L, context, MainTopLevelDestination.CATALOG, null, null, null, 28);
        }
        if (pdpDestinations instanceof PdpDestinations.ToCustomizationWebViewPage) {
            PdpDestinations.ToCustomizationWebViewPage toCustomizationWebViewPage = (PdpDestinations.ToCustomizationWebViewPage) pdpDestinations;
            return WebViewActivity.Companion.a(WebViewActivity.v, context, toCustomizationWebViewPage.f61107a, false, false, null, null, null, false, false, toCustomizationWebViewPage.f61108b, 1532);
        }
        if (pdpDestinations instanceof PdpDestinations.ToPrivacyPolicyPage) {
            LegalTextActivity.p.getClass();
            return LegalTextActivity.Companion.a(context, false);
        }
        if (pdpDestinations instanceof PdpDestinations.ToStoreLocatorPage) {
            return WebViewDestinationsKt.a(new WebViewDestinations.ToStoreLocatorPage(((PdpDestinations.ToStoreLocatorPage) pdpDestinations).f61115a), context);
        }
        if (pdpDestinations instanceof PdpDestinations.ToTrunkSpeakerSectionToPage) {
            ConnectivitySectionDetailActivity.Companion companion4 = ConnectivitySectionDetailActivity.p;
            SectionType sectionType = SectionType.TRUNK_SPEAKER;
            companion4.getClass();
            sectionType.getClass();
            Intent intentPutExtra2 = new Intent(context, (Class<?>) ConnectivitySectionDetailActivity.class).putExtra("SECTION_TYPE", sectionType).putExtra("SHOULD_SHOW_WATCH_FACES_PAGE", false);
            intentPutExtra2.getClass();
            return intentPutExtra2;
        }
        if (pdpDestinations instanceof PdpDestinations.ToWebViewPage) {
            return WebViewDestinationsKt.a(new WebViewDestinations.ToWebViewPage(((PdpDestinations.ToWebViewPage) pdpDestinations).f61119a, false, false, null, null, false, 62, null), context);
        }
        if (pdpDestinations instanceof PdpDestinations.ToWifiDeviceToPage) {
            WifiDeviceListActivity.t.getClass();
            return WifiDeviceListActivity.Companion.a(context, null);
        }
        if (pdpDestinations instanceof PdpDestinations.ToNativeCartPage) {
            NativeCartActivity.Companion companion5 = NativeCartActivity.w;
            CartPreviousScreen cartPreviousScreen = CartPreviousScreen.PDP;
            companion5.getClass();
            cartPreviousScreen.getClass();
            Intent intentPutExtra3 = new Intent(context, (Class<?>) NativeCartActivity.class).putExtra("PREVIOUS_SCREEN", cartPreviousScreen.ordinal());
            intentPutExtra3.getClass();
            return intentPutExtra3;
        }
        if (pdpDestinations instanceof PdpDestinations.ToShadeFinderPage) {
            BeautyVtoActivity.D.getClass();
            Intent intent2 = new Intent(context, (Class<?>) BeautyVtoActivity.class);
            intent2.putExtra("PRODUCT", (Parcelable) null);
            intent2.putExtra("isShadeFinder", true);
            return intent2;
        }
        if (pdpDestinations instanceof PdpDestinations.ToVirtualStudioOsaPage) {
            PdpDestinations.ToVirtualStudioOsaPage toVirtualStudioOsaPage = (PdpDestinations.ToVirtualStudioOsaPage) pdpDestinations;
            return OsaActivity.Companion.c(OsaActivity.u, context, OsaRoutesName.LOCATION_FORM, toVirtualStudioOsaPage.f61118b, toVirtualStudioOsaPage.f61117a.f61575b, context.getString(R.string.global_virtual_online_store_name), OsaOriginScreen.PDP, DilithiumEngine.DilithiumPolyT0PackedBytes);
        }
        if (pdpDestinations instanceof PdpDestinations.ToAICompanionPage) {
            AICompanionActivity.v.getClass();
            return AICompanionActivity.Companion.a(context);
        }
        v40.g();
        return null;
    }
}

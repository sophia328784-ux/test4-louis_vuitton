package com.vuitton.android.presentation;

import androidx.fragment.app.Fragment;
import com.google.common.collect.ImmutableMap;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.data.datasource.inappbanner.InAppBannerMemCacheDataSource;
import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.android.domain.repository.TwistAuthRepository;
import com.vuitton.android.domain.usecase.authentication.oauth.RefreshAuthFromCheckoutUseCase;
import com.vuitton.android.domain.usecase.chat.StreamChatEventUseCase;
import com.vuitton.android.domain.usecase.config.GetLanguageTagOfFacadeMyLVApiUrlUseCase;
import com.vuitton.android.domain.usecase.config.GetUrlCatchingListUseCase;
import com.vuitton.android.presentation.chat.ChatAttachable;
import com.vuitton.android.presentation.chat.ChatCoordinator;
import com.vuitton.android.presentation.chat.ChatLifecycleObserver;
import com.vuitton.android.presentation.helper.NavigationHelper;
import com.vuitton.android.presentation.link.LinkHandler;
import com.vuitton.android.presentation.link.builder.DeepLinkBuilder;
import com.vuitton.android.presentation.link.builder.PassAppLinkBuilder;
import com.vuitton.android.presentation.link.builder.WebAppLinkBuilder;
import com.vuitton.android.presentation.link.navigation.ContactUsNavigator;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.link.navigation.LinkNavigator;
import com.vuitton.android.presentation.link.parsing.LinkClassifier;
import com.vuitton.android.presentation.link.parsing.LinkParser;
import com.vuitton.android.presentation.link.parsing.PassAppLinkConverter;
import com.vuitton.android.presentation.link.parsing.WarmStartLinkExclusionPolicy;
import com.vuitton.android.presentation.push.NotificationsManager;
import com.vuitton.android.presentation.screen.account.addressbook.AddressBookActivity;
import com.vuitton.android.presentation.screen.account.addressbook.AddressBookRouter;
import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorActivity;
import com.vuitton.android.presentation.screen.account.editavatar.EditAvatarActivity;
import com.vuitton.android.presentation.screen.account.inbox.InboxActivity;
import com.vuitton.android.presentation.screen.account.lvpass.LVPassActivity;
import com.vuitton.android.presentation.screen.account.myicons.MyIconsActivity;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationActivity;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionActivity;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideActivity;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivityRouter;
import com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationActivity;
import com.vuitton.android.presentation.screen.authentication.landing.AccountActivationLandingActivity;
import com.vuitton.android.presentation.screen.authentication.login.legacy.WebViewLoginFragment;
import com.vuitton.android.presentation.screen.authentication.register.NativeRegisterFragment;
import com.vuitton.android.presentation.screen.authentication.register.kisa.WebViewKisaFragment;
import com.vuitton.android.presentation.screen.authentication.register.legacy.WebViewRegisterFragment;
import com.vuitton.android.presentation.screen.authentication.social.SocialRegisterActivity;
import com.vuitton.android.presentation.screen.authentication.welcome.WelcomeFragment;
import com.vuitton.android.presentation.screen.base.BaseActivity;
import com.vuitton.android.presentation.screen.booking.BookingActivity;
import com.vuitton.android.presentation.screen.booking.MyExperiencesActivity;
import com.vuitton.android.presentation.screen.cart.NativeCartActivity;
import com.vuitton.android.presentation.screen.certificates.CertificateActivity;
import com.vuitton.android.presentation.screen.certificates.nfc.NfcManager;
import com.vuitton.android.presentation.screen.connectivity.PairingBottomSheetDialogFragment;
import com.vuitton.android.presentation.screen.connectivity.faq.FaqActivity;
import com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesActivity;
import com.vuitton.android.presentation.screen.connectivity.home.ConnectivityActivity;
import com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment;
import com.vuitton.android.presentation.screen.connectivity.home.ConnectivityRouter;
import com.vuitton.android.presentation.screen.connectivity.home.WatchVersionChooserBottomSheet;
import com.vuitton.android.presentation.screen.connectivity.lightup.LightUpActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.LightUpRouter;
import com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailActivity;
import com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailActivityRouter;
import com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.travel.AddTravelActivity;
import com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListActivity;
import com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.TrunkSpeakerRouter;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.BaseTrunkActivity;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.RoomDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListActivity;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.ScanActivity;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanBottomSheetRouter;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.helper.ScanNavigationHelper;
import com.vuitton.android.presentation.screen.connectivity.watch.WatchActivity;
import com.vuitton.android.presentation.screen.connectivity.watch.WatchActivityRouter;
import com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment;
import com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsFragment;
import com.vuitton.android.presentation.screen.connectivity.watch.tutorial.WatchTutorialRouter;
import com.vuitton.android.presentation.screen.connectivity.watch.tutorial.WatchTutorialsActivity;
import com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories.WatchTutorialCategoriesFragment;
import com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationFragment;
import com.vuitton.android.presentation.screen.deeplink.DeepLinkDispatcherActivity;
import com.vuitton.android.presentation.screen.distantrepairs.DistantRepairRouter;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentBffFragment;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentFragment;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffFragment;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormFragment;
import com.vuitton.android.presentation.screen.exclusivesales.ExclusiveSalesActivity;
import com.vuitton.android.presentation.screen.forceupdate.ForceUpdateActivity;
import com.vuitton.android.presentation.screen.imagepicker.ImagePickerActivity;
import com.vuitton.android.presentation.screen.imageviewer.ImageViewerActivity;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.main.MainActivityRouter;
import com.vuitton.android.presentation.screen.maintenance.MaintenanceActivity;
import com.vuitton.android.presentation.screen.mylv.MyLvActivity;
import com.vuitton.android.presentation.screen.mylv.MyLvDeeplinkRouter;
import com.vuitton.android.presentation.screen.onboarding.OnboardingActivity;
import com.vuitton.android.presentation.screen.options.OptionsActivity;
import com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryActivity;
import com.vuitton.android.presentation.screen.options.legaltext.LegalTextActivity;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesActivity;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.OptOutPrivacyMenuActivity;
import com.vuitton.android.presentation.screen.options.settings.SettingsActivity;
import com.vuitton.android.presentation.screen.orders.OrderActivity;
import com.vuitton.android.presentation.screen.osa.OsaActivity;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity;
import com.vuitton.android.presentation.screen.personalselections.PersonalSelectionsActivity;
import com.vuitton.android.presentation.screen.placesearch.PlaceSearchActivity;
import com.vuitton.android.presentation.screen.plp.activities.CatalogPLPActivity;
import com.vuitton.android.presentation.screen.plp.activities.ExclusivePLPActivity;
import com.vuitton.android.presentation.screen.plp.activities.SkusPLPActivity;
import com.vuitton.android.presentation.screen.portal.PortalSliderActivity;
import com.vuitton.android.presentation.screen.privacy.PrivacyActivity;
import com.vuitton.android.presentation.screen.repairs.RepairActivity;
import com.vuitton.android.presentation.screen.repairs.RepairRouter;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsActivity;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffActivity;
import com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressBffFragment;
import com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressFragment;
import com.vuitton.android.presentation.screen.repairs.detail.RepairDetailBffFragment;
import com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment;
import com.vuitton.android.presentation.screen.repairs.detail.RepairPaymentFailedFragment;
import com.vuitton.android.presentation.screen.repairs.detail.RepairShippingConfirmationFragment;
import com.vuitton.android.presentation.screen.repairs.detail.addressbook.RepairDetailAddressBookFragment;
import com.vuitton.android.presentation.screen.repairs.list.RepairListBffFragment;
import com.vuitton.android.presentation.screen.repairs.list.RepairListFragment;
import com.vuitton.android.presentation.screen.search.SearchActivity;
import com.vuitton.android.presentation.screen.services.ServicesDeeplinkRouter;
import com.vuitton.android.presentation.screen.splash.AutomatedTestConfigParserProdImpl;
import com.vuitton.android.presentation.screen.splash.SplashScreenActivity;
import com.vuitton.android.presentation.screen.spotlight.SpotlightActivity;
import com.vuitton.android.presentation.screen.story.StoryActivity;
import com.vuitton.android.presentation.screen.thankyou.ThankYouActivity;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleActivity;
import com.vuitton.android.presentation.screen.webview.AnalyticsWebInterface;
import com.vuitton.android.presentation.screen.webview.AppsFlyerWebInterface;
import com.vuitton.android.presentation.screen.webview.WebViewActivity;
import com.vuitton.android.presentation.screen.webview.WebViewFragment;
import com.vuitton.android.presentation.screen.webview.WebViewRouter;
import com.vuitton.android.presentation.screen.webview.WebViewSocialAuthenticationHandler;
import com.vuitton.android.presentation.screen.wishlist.WishlistActivity;
import com.vuitton.android.presentation.screenshaker.ScreenShakerSensorManager;
import com.vuitton.android.presentation.security.AkamaiSecurityHelper;
import com.vuitton.foundation.contracts.chat.ChatManager;
import com.vuitton.foundation.contracts.environment.Environment;
import com.vuitton.foundation.logger.Logger;
import dagger.hilt.android.components.FragmentComponent;
import dagger.hilt.android.internal.builders.FragmentComponentBuilder;
import dagger.hilt.android.internal.builders.ViewModelComponentBuilder;
import dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories;
import dagger.internal.DoubleCheck;
import dagger.internal.LazyClassKeyMap;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes4.dex */
final class DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl extends LVApplication_HiltComponents$ActivityC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl f50472a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl f50473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl f50474c = this;

    public DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl(DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl daggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl) {
        this.f50472a = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;
        this.f50473b = daggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;
    }

    @Override // com.vuitton.android.presentation.screen.mylv.MyLvActivity_GeneratedInjector
    public final void A(MyLvActivity myLvActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        myLvActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        myLvActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    public final LinkParser A0() {
        LinkClassifier linkClassifierY0 = y0();
        PassAppLinkConverter passAppLinkConverter = new PassAppLinkConverter(y0());
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        return new LinkParser(linkClassifierY0, passAppLinkConverter, (EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b0.get(), new WebAppLinkBuilder(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E()));
    }

    @Override // com.vuitton.android.presentation.screen.exclusivesales.ExclusiveSalesActivity_GeneratedInjector
    public final void B(ExclusiveSalesActivity exclusiveSalesActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        exclusiveSalesActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        exclusiveSalesActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    public final WebViewRouter B0() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        return new WebViewRouter(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), new GetUrlCatchingListUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E()), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), new DeepLinkBuilder((EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b0.get()));
    }

    @Override // com.vuitton.android.presentation.screen.options.OptionsActivity_GeneratedInjector
    public final void C(OptionsActivity optionsActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        optionsActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        optionsActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        optionsActivity.p = new PreprodRouter();
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpActivity_GeneratedInjector
    public final void D(PdpActivity pdpActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        pdpActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        pdpActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        pdpActivity.s = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
        pdpActivity.t = (ChatAttachable) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B1.get();
        pdpActivity.u = v0();
        pdpActivity.v = w0();
        pdpActivity.w = x0();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListActivity_GeneratedInjector
    public final void E(AirportListActivity airportListActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        airportListActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        airportListActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.splash.SplashScreenActivity_GeneratedInjector
    public final void F(SplashScreenActivity splashScreenActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        splashScreenActivity.l = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
        splashScreenActivity.m = new AutomatedTestConfigParserProdImpl();
        splashScreenActivity.o = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        splashScreenActivity.p = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.c();
    }

    @Override // com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationActivity_GeneratedInjector
    public final void G(AccountActivationActivity accountActivationActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        accountActivationActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        accountActivationActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        accountActivationActivity.p = new AuthenticationActivityRouter();
    }

    @Override // com.vuitton.android.presentation.screen.account.addressbook.AddressBookActivity_GeneratedInjector
    public final void H(AddressBookActivity addressBookActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        addressBookActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        addressBookActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesActivity_GeneratedInjector
    public final void I(FaqCategoriesActivity faqCategoriesActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        faqCategoriesActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        faqCategoriesActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.imagepicker.ImagePickerActivity_GeneratedInjector
    public final void J(ImagePickerActivity imagePickerActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        imagePickerActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        imagePickerActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.authentication.landing.AccountActivationLandingActivity_GeneratedInjector
    public final void K(AccountActivationLandingActivity accountActivationLandingActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        accountActivationLandingActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        accountActivationLandingActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.ScanActivity_GeneratedInjector
    public final void L(ScanActivity scanActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        scanActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        scanActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        scanActivity.s = new TrunkSpeakerRouter();
    }

    @Override // com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleActivity_GeneratedInjector
    public final void M(TheLookImmersiveArticleActivity theLookImmersiveArticleActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        theLookImmersiveArticleActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        theLookImmersiveArticleActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        z0();
    }

    @Override // com.vuitton.android.presentation.screen.options.settings.SettingsActivity_GeneratedInjector
    public final void N(SettingsActivity settingsActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        settingsActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        settingsActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.plp.activities.ExclusivePLPActivity_GeneratedInjector
    public final void O(ExclusivePLPActivity exclusivePLPActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        exclusivePLPActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        exclusivePLPActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.AddTravelActivity_GeneratedInjector
    public final void P(AddTravelActivity addTravelActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        addTravelActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        addTravelActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.account.editavatar.EditAvatarActivity_GeneratedInjector
    public final void Q(EditAvatarActivity editAvatarActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        editAvatarActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        editAvatarActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.aicompanion.AICompanionActivity_GeneratedInjector
    public final void R(AICompanionActivity aICompanionActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        aICompanionActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        aICompanionActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        aICompanionActivity.u = x0();
    }

    @Override // com.vuitton.android.presentation.screen.plp.activities.SkusPLPActivity_GeneratedInjector
    public final void S(SkusPLPActivity skusPLPActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        skusPLPActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        skusPLPActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.account.myinformation.MyInformationActivity_GeneratedInjector
    public final void T(MyInformationActivity myInformationActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        myInformationActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        myInformationActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.maintenance.MaintenanceActivity_GeneratedInjector
    public final void U(MaintenanceActivity maintenanceActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        maintenanceActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        maintenanceActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        maintenanceActivity.p = B0();
    }

    @Override // com.vuitton.android.presentation.screen.thankyou.ThankYouActivity_GeneratedInjector
    public final void V(ThankYouActivity thankYouActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        thankYouActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        thankYouActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffActivity_GeneratedInjector
    public final void W(CancellationReasonsBffActivity cancellationReasonsBffActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        cancellationReasonsBffActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        cancellationReasonsBffActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.search.SearchActivity_GeneratedInjector
    public final void X(SearchActivity searchActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        searchActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        searchActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        searchActivity.w = x0();
    }

    @Override // com.vuitton.android.presentation.screen.placesearch.PlaceSearchActivity_GeneratedInjector
    public final void Y(PlaceSearchActivity placeSearchActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        placeSearchActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        placeSearchActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorActivity_GeneratedInjector
    public final void Z(AddressEditorActivity addressEditorActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        addressEditorActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        addressEditorActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories.ActivityEntryPoint
    public final DefaultViewModelFactories.InternalFactoryFactory a() {
        return new DefaultViewModelFactories.InternalFactoryFactory(k(), new DaggerLVApplication_HiltComponents_SingletonC$ViewModelCBuilder(this.f50472a, this.f50473b));
    }

    @Override // com.vuitton.android.presentation.screen.portal.PortalSliderActivity_GeneratedInjector
    public final void a0(PortalSliderActivity portalSliderActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        portalSliderActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        portalSliderActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        portalSliderActivity.p = x0();
    }

    @Override // com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsActivity_GeneratedInjector
    public final void b(CancellationReasonsActivity cancellationReasonsActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        cancellationReasonsActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        cancellationReasonsActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartActivity_GeneratedInjector
    public final void b0(NativeCartActivity nativeCartActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        nativeCartActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        nativeCartActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        nativeCartActivity.p = (ChatAttachable) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B1.get();
        nativeCartActivity.q = x0();
        nativeCartActivity.r = w0();
        nativeCartActivity.u = v0();
    }

    @Override // com.vuitton.android.presentation.screen.account.lvpass.LVPassActivity_GeneratedInjector
    public final void c(LVPassActivity lVPassActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        lVPassActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        lVPassActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        lVPassActivity.p = (Environment) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50502i.get();
    }

    @Override // com.vuitton.android.presentation.screen.account.myicons.MyIconsActivity_GeneratedInjector
    public final void c0(MyIconsActivity myIconsActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        myIconsActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        myIconsActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.authentication.social.SocialRegisterActivity_GeneratedInjector
    public final void d(SocialRegisterActivity socialRegisterActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        socialRegisterActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        socialRegisterActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.privacy.PrivacyActivity_GeneratedInjector
    public final void d0(PrivacyActivity privacyActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        privacyActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        privacyActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        privacyActivity.r = z0();
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity_GeneratedInjector
    public final void e(BeautyVtoActivity beautyVtoActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        beautyVtoActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        beautyVtoActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        beautyVtoActivity.p = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
    }

    @Override // com.vuitton.android.presentation.screen.story.StoryActivity_GeneratedInjector
    public final void e0(StoryActivity storyActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        storyActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        storyActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        storyActivity.q = z0();
    }

    @Override // com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesActivity_GeneratedInjector
    public final void f(NotificationsPreferencesActivity notificationsPreferencesActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        notificationsPreferencesActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        notificationsPreferencesActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationActivity_GeneratedInjector
    public final void f0(AuthenticationActivity authenticationActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        authenticationActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        authenticationActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        authenticationActivity.r = new AuthenticationActivityRouter();
        authenticationActivity.s = (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get();
        authenticationActivity.t = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.c();
    }

    @Override // com.vuitton.android.presentation.screen.webview.WebViewActivity_GeneratedInjector
    public final void g(WebViewActivity webViewActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        webViewActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        webViewActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        webViewActivity.t = (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get();
        webViewActivity.u = v0();
    }

    @Override // com.vuitton.android.presentation.screen.certificates.CertificateActivity_GeneratedInjector
    public final void g0(CertificateActivity certificateActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        certificateActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        certificateActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        certificateActivity.q = x0();
        certificateActivity.r = w0();
        certificateActivity.s = v0();
        certificateActivity.t = (ChatAttachable) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B1.get();
        certificateActivity.u = (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get();
        certificateActivity.v = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
        certificateActivity.w = (NfcManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.C1.get();
    }

    @Override // com.vuitton.android.presentation.screen.booking.MyExperiencesActivity_GeneratedInjector
    public final void h(MyExperiencesActivity myExperiencesActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        myExperiencesActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        myExperiencesActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        myExperiencesActivity.q = x0();
    }

    @Override // com.vuitton.android.presentation.screen.deeplink.DeepLinkDispatcherActivity_GeneratedInjector
    public final void h0(DeepLinkDispatcherActivity deepLinkDispatcherActivity) {
        deepLinkDispatcherActivity.l = A0();
        WebViewRouter webViewRouterB0 = B0();
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        deepLinkDispatcherActivity.m = new LinkNavigator(webViewRouterB0, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), new NavigationHelper((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), (WebViewSocialAuthenticationHandler) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.p1.get());
        deepLinkDispatcherActivity.n = new WarmStartLinkExclusionPolicy(y0());
        deepLinkDispatcherActivity.o = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity_GeneratedInjector
    public final void i(BaseActivity baseActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        baseActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        baseActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.account.inbox.InboxActivity_GeneratedInjector
    public final void i0(InboxActivity inboxActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        inboxActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        inboxActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        inboxActivity.p = z0();
    }

    @Override // com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity_GeneratedInjector
    public final void j(ProductArActivity productArActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        productArActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        productArActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        productArActivity.p = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
        productArActivity.q = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E();
    }

    @Override // com.vuitton.android.presentation.screen.forceupdate.ForceUpdateActivity_GeneratedInjector
    public final void j0(ForceUpdateActivity forceUpdateActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        forceUpdateActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        forceUpdateActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // dagger.hilt.android.internal.lifecycle.HiltViewModelFactory.ActivityCreatorEntryPoint
    public final LazyClassKeyMap k() {
        ImmutableMap.Builder builderA = ImmutableMap.a(124);
        Boolean bool = Boolean.TRUE;
        builderA.d("com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.account.addressbook.AddressBookViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.options.appinfo.AppInfoViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.audioplayer.AudioPlayerViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.authentication.AuthenticationViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.booking.confirmation.BookingConfirmationViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.booking.pass.BookingPassViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.catalog.CatalogRoutingViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.catalog.CatalogViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.certificates.nfc.CertificateNfcScanViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.certificates.diamonds.transfer.CertificateTransferViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectToWifiViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel", bool);
        builderA.d("com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.deeplink.DeepLinkDispatcherViewModel", bool);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.lightup.common.pairing.DeviceDetectedViewModel", bool);
        builderA.d("com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.account.editavatar.EditAvatarViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.exclusivesales.ExclusiveSalesViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesViewModel", bool);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.faq.FaqViewModel", bool);
        builderA.d("com.vuitton.android.presentation.screen.feed.FeedViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.filter.quickaccess.FiltersOverlayViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.forceupdate.ForceUpdateViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.cart.components.giftmessage.GiftMessageViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.imagepicker.ImagePickerViewModel", bool);
        builderA.d("com.vuitton.android.presentation.screen.imageviewer.ImageViewerViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.account.inbox.InboxViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.lightup.keepall.KeepAllDetailViewModel", bool);
        builderA.d("com.vuitton.android.presentation.screen.options.legaltext.LegalTextViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailViewModel", bool);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.LightUpScanViewModel", bool);
        builderA.d("com.vuitton.android.presentation.redirectlink.LinkViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.livevideo.LiveVideoViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.maintenance.MaintenanceViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.onboarding.OnboardingViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.options.optoutprivacymenu.OptOutPrivacyMenuViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.options.OptionsViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.osa.list.OsaListViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPExclusiveViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPSkusViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.plp.viewmodels.impl.PSPViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.personalselections.list.PersonalSelectionsListViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.placesearch.PlaceSearchViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.portal.PortalSliderViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel", bool);
        builderA.d("com.vuitton.android.presentation.screen.account.lvpass.QRCodeViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screenshot.ScreenshotViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.search.SearchViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.services.ServicesViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.options.settings.SettingsViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerDetailViewModel", bool);
        builderA.d("com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.story.StoryViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.thankyou.ThankYouViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.mylv.TopBarAvatarViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.travel.form.TravelFormViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.account.userworldwideid.UserWorldwideIdViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.video.VideoViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsViewModel", bool);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories.WatchTutorialCategoriesViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.webview.WebViewViewModel", bool);
        builderA.d("com.vuitton.android.presentation.screen.authentication.welcome.WelcomeViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailViewModelImpl", bool);
        builderA.d("com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl", bool);
        return new LazyClassKeyMap(builderA.a(true));
    }

    @Override // com.vuitton.android.presentation.screen.wishlist.WishlistActivity_GeneratedInjector
    public final void k0(WishlistActivity wishlistActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        wishlistActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        wishlistActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        wishlistActivity.p = v0();
        wishlistActivity.q = z0();
        wishlistActivity.r = (ChatAttachable) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B1.get();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.BaseTrunkActivity_GeneratedInjector
    public final void l(BaseTrunkActivity baseTrunkActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        baseTrunkActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        baseTrunkActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.plp.activities.CatalogPLPActivity_GeneratedInjector
    public final void l0(CatalogPLPActivity catalogPLPActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        catalogPLPActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        catalogPLPActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        catalogPLPActivity.p = new PassAppLinkBuilder(new GetLanguageTagOfFacadeMyLVApiUrlUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E()));
        catalogPLPActivity.q = w0();
        catalogPLPActivity.r = v0();
        catalogPLPActivity.s = (ChatAttachable) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B1.get();
        catalogPLPActivity.t = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailActivity_GeneratedInjector
    public final void m(ConnectivitySectionDetailActivity connectivitySectionDetailActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        connectivitySectionDetailActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        connectivitySectionDetailActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.faq.FaqActivity_GeneratedInjector
    public final void m0(FaqActivity faqActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        faqActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        faqActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryActivity_GeneratedInjector
    public final void n(DispatchCountryActivity dispatchCountryActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        dispatchCountryActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        dispatchCountryActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.orders.OrderActivity_GeneratedInjector
    public final void n0(OrderActivity orderActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        orderActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        orderActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watch.WatchActivity_GeneratedInjector
    public final void o(WatchActivity watchActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        watchActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        watchActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        watchActivity.p = new WatchActivityRouter();
        watchActivity.q = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u();
    }

    @Override // com.vuitton.android.presentation.screen.spotlight.SpotlightActivity_GeneratedInjector
    public final void o0(SpotlightActivity spotlightActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        spotlightActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        spotlightActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        spotlightActivity.p = x0();
    }

    @Override // com.vuitton.android.presentation.screen.audioguide.AudioGuideActivity_GeneratedInjector
    public final void p(AudioGuideActivity audioGuideActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        audioGuideActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        audioGuideActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        audioGuideActivity.p = x0();
    }

    @Override // dagger.hilt.android.internal.lifecycle.HiltViewModelFactory.ActivityCreatorEntryPoint
    public final ViewModelComponentBuilder p0() {
        return new DaggerLVApplication_HiltComponents_SingletonC$ViewModelCBuilder(this.f50472a, this.f50473b);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListActivity_GeneratedInjector
    public final void q(WifiDeviceListActivity wifiDeviceListActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        wifiDeviceListActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        wifiDeviceListActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        wifiDeviceListActivity.s = new TrunkSpeakerRouter();
    }

    @Override // dagger.hilt.android.internal.managers.FragmentComponentManager.FragmentComponentBuilderEntryPoint
    public final FragmentComponentBuilder q0() {
        final DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl daggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl = this.f50473b;
        final DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl daggerLVApplication_HiltComponents_SingletonC$ActivityCImpl = this.f50474c;
        final DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        return new LVApplication_HiltComponents$FragmentC.Builder(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, daggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl, daggerLVApplication_HiltComponents_SingletonC$ActivityCImpl) { // from class: com.vuitton.android.presentation.DaggerLVApplication_HiltComponents_SingletonC$FragmentCBuilder

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl f50485a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl f50486b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl f50487c;
            public Fragment d;

            {
                this.f50485a = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;
                this.f50486b = daggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;
                this.f50487c = daggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;
            }

            @Override // dagger.hilt.android.internal.builders.FragmentComponentBuilder
            public final FragmentComponentBuilder a(Fragment fragment) {
                fragment.getClass();
                this.d = fragment;
                return this;
            }

            @Override // dagger.hilt.android.internal.builders.FragmentComponentBuilder
            public final FragmentComponent build() {
                Preconditions.a(Fragment.class, this.d);
                final DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl daggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl2 = this.f50486b;
                final DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl daggerLVApplication_HiltComponents_SingletonC$ActivityCImpl2 = this.f50487c;
                final DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2 = this.f50485a;
                return new LVApplication_HiltComponents$FragmentC(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2, daggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl2, daggerLVApplication_HiltComponents_SingletonC$ActivityCImpl2) { // from class: com.vuitton.android.presentation.DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl f50488a;

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl f50489b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final Provider f50490c;
                    public final Provider d;

                    public static final class SwitchingProvider<T> implements Provider<T> {

                        /* JADX INFO: renamed from: a, reason: collision with root package name */
                        public final DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl f50491a;

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final int f50492b;

                        public SwitchingProvider(DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, int i2) {
                            this.f50491a = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;
                            this.f50492b = i2;
                        }

                        @Override // javax.inject.Provider
                        public final Object get() {
                            DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50491a;
                            int i2 = this.f50492b;
                            if (i2 == 0) {
                                return new AnalyticsWebInterface((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                            }
                            if (i2 == 1) {
                                return new AppsFlyerWebInterface((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v());
                            }
                            throw new AssertionError(i2);
                        }
                    }

                    {
                        this.f50488a = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2;
                        this.f50489b = daggerLVApplication_HiltComponents_SingletonC$ActivityCImpl2;
                        this.f50490c = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2, 0);
                        this.d = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2, 1);
                    }

                    @Override // com.vuitton.android.presentation.screen.repairs.detail.RepairDetailBffFragment_GeneratedInjector
                    public final void A(RepairDetailBffFragment repairDetailBffFragment) {
                        repairDetailBffFragment.I = I();
                        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3 = this.f50488a;
                        repairDetailBffFragment.J = (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.v.get();
                        repairDetailBffFragment.K = this.f50489b.w0();
                        repairDetailBffFragment.L = (ChatAttachable) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.B1.get();
                    }

                    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentBffFragment_GeneratedInjector
                    public final void B(DistantRepairAssessmentBffFragment distantRepairAssessmentBffFragment) {
                        distantRepairAssessmentBffFragment.G = new DistantRepairRouter();
                        distantRepairAssessmentBffFragment.H = new AddressBookRouter();
                        distantRepairAssessmentBffFragment.I = I();
                        distantRepairAssessmentBffFragment.J = this.f50489b.w0();
                        distantRepairAssessmentBffFragment.K = (ChatAttachable) this.f50488a.B1.get();
                    }

                    @Override // com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories.WatchTutorialCategoriesFragment_GeneratedInjector
                    public final void C(WatchTutorialCategoriesFragment watchTutorialCategoriesFragment) {
                        watchTutorialCategoriesFragment.H = new WatchTutorialRouter();
                    }

                    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment_GeneratedInjector
                    public final void D(WifiDeviceDetailFragment wifiDeviceDetailFragment) {
                        wifiDeviceDetailFragment.I = new ConnectivitySectionDetailActivityRouter();
                        wifiDeviceDetailFragment.J = new TrunkSpeakerRouter();
                        wifiDeviceDetailFragment.K = (LVEventSender) this.f50488a.v.get();
                    }

                    @Override // com.vuitton.android.presentation.screen.repairs.detail.RepairPaymentFailedFragment_GeneratedInjector
                    public final void E(RepairPaymentFailedFragment repairPaymentFailedFragment) {
                        repairPaymentFailedFragment.G = new DistantRepairRouter();
                        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3 = this.f50488a;
                        repairPaymentFailedFragment.H = (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.v.get();
                        repairPaymentFailedFragment.I = this.f50489b.w0();
                        repairPaymentFailedFragment.J = (ChatAttachable) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.B1.get();
                    }

                    @Override // com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailFragment_GeneratedInjector
                    public final void F(ConnectivitySectionDetailFragment connectivitySectionDetailFragment) {
                        connectivitySectionDetailFragment.H = new ConnectivitySectionDetailActivityRouter();
                    }

                    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffFragment_GeneratedInjector
                    public final void G(DistantRepairFormBffFragment distantRepairFormBffFragment) {
                        distantRepairFormBffFragment.H = new DistantRepairRouter();
                        distantRepairFormBffFragment.I = this.f50489b.w0();
                        distantRepairFormBffFragment.J = (ChatAttachable) this.f50488a.B1.get();
                    }

                    @Override // com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment_GeneratedInjector
                    public final void H(WatchDetailsFragment watchDetailsFragment) {
                        watchDetailsFragment.M = new WatchActivityRouter();
                        watchDetailsFragment.N = (LVEventSender) this.f50488a.v.get();
                    }

                    public final RepairRouter I() {
                        return new RepairRouter(this.f50489b.B0(), this.f50488a.D());
                    }

                    @Override // dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories.FragmentEntryPoint
                    public final DefaultViewModelFactories.InternalFactoryFactory a() {
                        return this.f50489b.a();
                    }

                    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment_GeneratedInjector
                    public final void b(SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment) {
                        speakerTrunkEqualizerFragment.L = (LVEventSender) this.f50488a.v.get();
                    }

                    @Override // com.vuitton.android.presentation.screen.repairs.detail.RepairShippingConfirmationFragment_GeneratedInjector
                    public final void c(RepairShippingConfirmationFragment repairShippingConfirmationFragment) {
                        repairShippingConfirmationFragment.G = new DistantRepairRouter();
                        repairShippingConfirmationFragment.H = (LVEventSender) this.f50488a.v.get();
                    }

                    @Override // com.vuitton.android.presentation.screen.repairs.detail.addressbook.RepairDetailAddressBookFragment_GeneratedInjector
                    public final void d(RepairDetailAddressBookFragment repairDetailAddressBookFragment) {
                        repairDetailAddressBookFragment.G = I();
                        repairDetailAddressBookFragment.H = (LVEventSender) this.f50488a.v.get();
                    }

                    @Override // com.vuitton.android.presentation.screen.authentication.register.legacy.WebViewRegisterFragment_GeneratedInjector
                    public final void e(WebViewRegisterFragment webViewRegisterFragment) {
                        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3 = this.f50488a;
                        webViewRegisterFragment.F = (EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.b0.get();
                        webViewRegisterFragment.G = this.f50489b.z0();
                        webViewRegisterFragment.H = (AnalyticsWebInterface) ((SwitchingProvider) this.f50490c).get();
                        webViewRegisterFragment.I = (AkamaiSecurityHelper) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.D1.get();
                        webViewRegisterFragment.J = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.f50503j.get();
                        webViewRegisterFragment.K = new AuthenticationActivityRouter();
                    }

                    @Override // com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsFragment_GeneratedInjector
                    public final void f(WatchSettingsFragment watchSettingsFragment) {
                        watchSettingsFragment.I = new WatchActivityRouter();
                    }

                    @Override // com.vuitton.android.presentation.screen.authentication.welcome.WelcomeFragment_GeneratedInjector
                    public final void g(WelcomeFragment welcomeFragment) {
                        welcomeFragment.H = new AuthenticationActivityRouter();
                    }

                    @Override // com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment_GeneratedInjector
                    public final void h(ConnectivityFragment connectivityFragment) {
                        connectivityFragment.H = new ConnectivityRouter();
                        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3 = this.f50488a;
                        connectivityFragment.I = (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.v.get();
                        connectivityFragment.J = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.D();
                    }

                    @Override // com.vuitton.android.presentation.screen.repairs.list.RepairListFragment_GeneratedInjector
                    public final void i(RepairListFragment repairListFragment) {
                        repairListFragment.G = I();
                        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3 = this.f50488a;
                        repairListFragment.H = (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.v.get();
                        DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl daggerLVApplication_HiltComponents_SingletonC$ActivityCImpl3 = this.f50489b;
                        repairListFragment.I = daggerLVApplication_HiltComponents_SingletonC$ActivityCImpl3.x0();
                        repairListFragment.J = daggerLVApplication_HiltComponents_SingletonC$ActivityCImpl3.w0();
                        repairListFragment.K = (ChatAttachable) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.B1.get();
                    }

                    @Override // com.vuitton.android.presentation.screen.authentication.register.NativeRegisterFragment_GeneratedInjector
                    public final void j(NativeRegisterFragment nativeRegisterFragment) {
                        nativeRegisterFragment.F = new AuthenticationActivityRouter();
                    }

                    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet_GeneratedInjector
                    public final void k(ScanMainBottomSheet scanMainBottomSheet) {
                        scanMainBottomSheet.Q = new ScanNavigationHelper(new ScanBottomSheetRouter());
                    }

                    @Override // com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationFragment_GeneratedInjector
                    public final void l(WatchfacePresentationFragment watchfacePresentationFragment) {
                        watchfacePresentationFragment.K = this.f50488a.u();
                    }

                    @Override // com.vuitton.android.presentation.screen.webview.WebViewFragment_GeneratedInjector
                    public final void m(WebViewFragment webViewFragment) {
                        webViewFragment.G = DoubleCheck.a(this.f50490c);
                        webViewFragment.H = DoubleCheck.a(this.d);
                        DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl daggerLVApplication_HiltComponents_SingletonC$ActivityCImpl3 = this.f50489b;
                        webViewFragment.I = daggerLVApplication_HiltComponents_SingletonC$ActivityCImpl3.B0();
                        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3 = this.f50488a;
                        webViewFragment.J = (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.v.get();
                        webViewFragment.K = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.f50503j.get();
                        webViewFragment.L = (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.E.get();
                        webViewFragment.M = daggerLVApplication_HiltComponents_SingletonC$ActivityCImpl3.B0();
                        webViewFragment.N = (AkamaiSecurityHelper) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.D1.get();
                        webViewFragment.O = daggerLVApplication_HiltComponents_SingletonC$ActivityCImpl3.z0();
                        webViewFragment.P = daggerLVApplication_HiltComponents_SingletonC$ActivityCImpl3.w0();
                        webViewFragment.Q = (ChatAttachable) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.B1.get();
                        webViewFragment.R = daggerLVApplication_HiltComponents_SingletonC$ActivityCImpl3.v0();
                        webViewFragment.S = (BuildConfigProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.y.get();
                    }

                    @Override // com.vuitton.android.presentation.screen.authentication.register.kisa.WebViewKisaFragment_GeneratedInjector
                    public final void n(WebViewKisaFragment webViewKisaFragment) {
                        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3 = this.f50488a;
                        webViewKisaFragment.F = (EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.b0.get();
                        webViewKisaFragment.G = this.f50489b.z0();
                        webViewKisaFragment.H = (AnalyticsWebInterface) ((SwitchingProvider) this.f50490c).get();
                        webViewKisaFragment.I = (AkamaiSecurityHelper) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.D1.get();
                        webViewKisaFragment.J = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.f50503j.get();
                        webViewKisaFragment.K = new AuthenticationActivityRouter();
                    }

                    @Override // com.vuitton.android.presentation.screen.authentication.login.legacy.WebViewLoginFragment_GeneratedInjector
                    public final void o(WebViewLoginFragment webViewLoginFragment) {
                        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3 = this.f50488a;
                        webViewLoginFragment.F = (EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.b0.get();
                        webViewLoginFragment.G = this.f50489b.z0();
                        webViewLoginFragment.H = (AnalyticsWebInterface) ((SwitchingProvider) this.f50490c).get();
                        webViewLoginFragment.I = (AkamaiSecurityHelper) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.D1.get();
                        webViewLoginFragment.J = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.f50503j.get();
                    }

                    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.RoomDetailFragment_GeneratedInjector
                    public final void p(RoomDetailFragment roomDetailFragment) {
                        roomDetailFragment.J = new TrunkSpeakerRouter();
                        roomDetailFragment.K = (LVEventSender) this.f50488a.v.get();
                    }

                    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentFragment_GeneratedInjector
                    public final void q(DistantRepairAssessmentFragment distantRepairAssessmentFragment) {
                        distantRepairAssessmentFragment.G = new DistantRepairRouter();
                        distantRepairAssessmentFragment.H = I();
                        distantRepairAssessmentFragment.I = this.f50489b.w0();
                        distantRepairAssessmentFragment.J = (ChatAttachable) this.f50488a.B1.get();
                    }

                    @Override // com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment_GeneratedInjector
                    public final void r(RepairDetailsFragment repairDetailsFragment) {
                        repairDetailsFragment.I = I();
                        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3 = this.f50488a;
                        repairDetailsFragment.J = (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.v.get();
                        repairDetailsFragment.K = this.f50489b.w0();
                        repairDetailsFragment.L = (ChatAttachable) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.B1.get();
                    }

                    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormFragment_GeneratedInjector
                    public final void s(DistantRepairFormFragment distantRepairFormFragment) {
                        distantRepairFormFragment.H = new DistantRepairRouter();
                        distantRepairFormFragment.I = this.f50489b.w0();
                        distantRepairFormFragment.J = (ChatAttachable) this.f50488a.B1.get();
                    }

                    @Override // com.vuitton.android.presentation.screen.connectivity.home.WatchVersionChooserBottomSheet_GeneratedInjector
                    public final void t(WatchVersionChooserBottomSheet watchVersionChooserBottomSheet) {
                        watchVersionChooserBottomSheet.O = new ConnectivityRouter();
                    }

                    @Override // com.vuitton.android.presentation.screen.connectivity.PairingBottomSheetDialogFragment_GeneratedInjector
                    public final void u(PairingBottomSheetDialogFragment pairingBottomSheetDialogFragment) {
                        pairingBottomSheetDialogFragment.O = new ConnectivitySectionDetailActivityRouter();
                        pairingBottomSheetDialogFragment.P = this.f50488a.D();
                    }

                    @Override // com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressFragment_GeneratedInjector
                    public final void v(RepairConfirmAddressFragment repairConfirmAddressFragment) {
                        repairConfirmAddressFragment.H = I();
                        repairConfirmAddressFragment.I = this.f50489b.w0();
                        repairConfirmAddressFragment.J = (ChatAttachable) this.f50488a.B1.get();
                    }

                    @Override // com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressBffFragment_GeneratedInjector
                    public final void w(RepairConfirmAddressBffFragment repairConfirmAddressBffFragment) {
                        repairConfirmAddressBffFragment.H = I();
                        repairConfirmAddressBffFragment.I = this.f50489b.w0();
                        repairConfirmAddressBffFragment.J = (ChatAttachable) this.f50488a.B1.get();
                    }

                    @Override // com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListFragment_GeneratedInjector
                    public final void x(TravelListFragment travelListFragment) {
                        travelListFragment.I = new WatchActivityRouter();
                    }

                    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListFragment_GeneratedInjector
                    public final void y(WifiDeviceListFragment wifiDeviceListFragment) {
                        wifiDeviceListFragment.H = (LVEventSender) this.f50488a.v.get();
                        wifiDeviceListFragment.I = new TrunkSpeakerRouter();
                    }

                    @Override // com.vuitton.android.presentation.screen.repairs.list.RepairListBffFragment_GeneratedInjector
                    public final void z(RepairListBffFragment repairListBffFragment) {
                        repairListBffFragment.G = I();
                        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3 = this.f50488a;
                        repairListBffFragment.H = (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.v.get();
                        DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl daggerLVApplication_HiltComponents_SingletonC$ActivityCImpl3 = this.f50489b;
                        repairListBffFragment.I = daggerLVApplication_HiltComponents_SingletonC$ActivityCImpl3.x0();
                        repairListBffFragment.J = daggerLVApplication_HiltComponents_SingletonC$ActivityCImpl3.w0();
                        repairListBffFragment.K = (ChatAttachable) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.B1.get();
                    }
                };
            }
        };
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.PersonalSelectionsActivity_GeneratedInjector
    public final void r(PersonalSelectionsActivity personalSelectionsActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        personalSelectionsActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        personalSelectionsActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        personalSelectionsActivity.p = z0();
        personalSelectionsActivity.q = v0();
        personalSelectionsActivity.r = (ChatAttachable) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B1.get();
    }

    @Override // com.vuitton.android.presentation.screen.imageviewer.ImageViewerActivity_GeneratedInjector
    public final void r0(ImageViewerActivity imageViewerActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        imageViewerActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        imageViewerActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.booking.BookingActivity_GeneratedInjector
    public final void s(BookingActivity bookingActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        bookingActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        bookingActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        bookingActivity.p = x0();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.LightUpActivity_GeneratedInjector
    public final void s0(LightUpActivity lightUpActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        lightUpActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        lightUpActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        lightUpActivity.q = new LightUpRouter();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.watch.tutorial.WatchTutorialsActivity_GeneratedInjector
    public final void t(WatchTutorialsActivity watchTutorialsActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        watchTutorialsActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        watchTutorialsActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        watchTutorialsActivity.p = new WatchTutorialRouter();
    }

    @Override // com.vuitton.android.presentation.screen.options.legaltext.LegalTextActivity_GeneratedInjector
    public final void t0(LegalTextActivity legalTextActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        legalTextActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        legalTextActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity_GeneratedInjector
    public final void u(ImmersiveArticleActivity immersiveArticleActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        immersiveArticleActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        immersiveArticleActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        new MainActivityRouter(new MyLvDeeplinkRouter(), new ServicesDeeplinkRouter(), B0());
        immersiveArticleActivity.p = x0();
    }

    @Override // com.vuitton.android.presentation.screen.main.MainActivity_GeneratedInjector
    public final void u0(MainActivity mainActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        mainActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        mainActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        mainActivity.v = (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get();
        mainActivity.w = new RefreshAuthFromCheckoutUseCase((TwistAuthRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.L0.get(), (AuthTokenRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.U.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get());
        mainActivity.x = v0();
        mainActivity.y = new PassAppLinkBuilder(new GetLanguageTagOfFacadeMyLVApiUrlUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E()));
        mainActivity.z = z0();
        mainActivity.A = w0();
        mainActivity.B = y0();
        mainActivity.C = new PassAppLinkConverter(y0());
        mainActivity.D = x0();
        mainActivity.E = new MainActivityRouter(new MyLvDeeplinkRouter(), new ServicesDeeplinkRouter(), B0());
        mainActivity.F = (EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b0.get();
        mainActivity.G = (ChatAttachable) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B1.get();
    }

    @Override // com.vuitton.android.presentation.screen.options.optoutprivacymenu.OptOutPrivacyMenuActivity_GeneratedInjector
    public final void v(OptOutPrivacyMenuActivity optOutPrivacyMenuActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        optOutPrivacyMenuActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        optOutPrivacyMenuActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        optOutPrivacyMenuActivity.p = B0();
    }

    public final ChatLifecycleObserver v0() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        return new ChatLifecycleObserver((ChatCoordinator) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B1.get(), new StreamChatEventUseCase((ChatManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v1.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), z0(), (ChatAttachable) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B1.get(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), (InAppBannerMemCacheDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.o.get());
    }

    @Override // com.vuitton.android.presentation.screen.repairs.RepairActivity_GeneratedInjector
    public final void w(RepairActivity repairActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        repairActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        repairActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        repairActivity.p = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D();
        repairActivity.q = v0();
    }

    public final ContactUsNavigator w0() {
        return new ContactUsNavigator(B0());
    }

    @Override // com.vuitton.android.presentation.screen.osa.OsaActivity_GeneratedInjector
    public final void x(OsaActivity osaActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        osaActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        osaActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        osaActivity.p = x0();
    }

    public final ContributionLinkNavigator x0() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        return new ContributionLinkNavigator(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), new NavigationHelper((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), z0());
    }

    @Override // com.vuitton.android.presentation.screen.onboarding.OnboardingActivity_GeneratedInjector
    public final void y(OnboardingActivity onboardingActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        onboardingActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        onboardingActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
        onboardingActivity.s = z0();
    }

    public final LinkClassifier y0() {
        return new LinkClassifier((EnvironmentProvider) this.f50472a.b0.get());
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.home.ConnectivityActivity_GeneratedInjector
    public final void z(ConnectivityActivity connectivityActivity) {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        connectivityActivity.shakeSensorManager = (ScreenShakerSensorManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D0.get();
        connectivityActivity.notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
    }

    public final LinkHandler z0() {
        LinkClassifier linkClassifierY0 = y0();
        LinkParser linkParserA0 = A0();
        WebViewRouter webViewRouterB0 = B0();
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50472a;
        return new LinkHandler(linkClassifierY0, linkParserA0, new LinkNavigator(webViewRouterB0, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), new NavigationHelper((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), (WebViewSocialAuthenticationHandler) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.p1.get()), new NavigationHelper((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get()));
    }
}

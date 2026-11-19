package com.vuitton.android.presentation;

import android.app.Activity;
import android.app.Service;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.webkit.CookieManager;
import androidx.credentials.CredentialManager;
import androidx.credentials.CredentialManagerImpl;
import androidx.datastore.core.DataStore;
import androidx.hilt.work.HiltWorkerFactory;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.work.WorkManager;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkManagerImpl;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.tagmanager.ModuleDescriptor;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.powerfront.insidewebsdkandroid.InsideClient;
import com.powerfront.insidewebsdkandroid.models.InsideCart;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.core.file.FileStorageProvider;
import com.vuitton.android.core.notifications.NotificationsSdkProvider;
import com.vuitton.android.core.platform.serialization.JsonProviderKt;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.core.schedulers.CoroutineDispatchersModule;
import com.vuitton.android.core.schedulers.CoroutineDispatchersModule$Companion$DefaultCoroutineDispatchers$1;
import com.vuitton.android.data.account.address.model.mapper.AddressHttpErrorMapper;
import com.vuitton.android.data.analytics.builder.CrashlyticsAnalyticsHitBuilder;
import com.vuitton.android.data.analytics.builder.FirebaseAnalyticsHitBuilder;
import com.vuitton.android.data.analytics.builder.FirebaseUserPropertyBuilder;
import com.vuitton.android.data.analytics.builder.SensorsDataAnalyticsHitBuilder;
import com.vuitton.android.data.analytics.builder.SensorsDataUserPropertyBuilder;
import com.vuitton.android.data.api.bff.catalog.CatalogApi;
import com.vuitton.android.data.api.bff.catalog.ExclusiveApi;
import com.vuitton.android.data.api.bff.catalog.ProductApi;
import com.vuitton.android.data.api.bff.catalog.SearchApi;
import com.vuitton.android.data.api.bff.catalog.StoreApi;
import com.vuitton.android.data.api.bff.catalog.StoreModeCatalogApi;
import com.vuitton.android.data.api.bff.publication.AppLinkApi;
import com.vuitton.android.data.api.bff.publication.AudioGuideApi;
import com.vuitton.android.data.api.bff.publication.AvatarApi;
import com.vuitton.android.data.api.bff.publication.ConfigurationApi;
import com.vuitton.android.data.api.bff.publication.DispatchApi;
import com.vuitton.android.data.api.bff.publication.FeedApi;
import com.vuitton.android.data.api.bff.publication.ImmersiveArticleApi;
import com.vuitton.android.data.api.bff.publication.LandingPageApi;
import com.vuitton.android.data.api.bff.publication.LegalConsentApi;
import com.vuitton.android.data.api.bff.publication.MaintenanceApi;
import com.vuitton.android.data.api.bff.publication.PlaceApi;
import com.vuitton.android.data.api.bff.publication.PortalApi;
import com.vuitton.android.data.api.bff.publication.PublicationCartApi;
import com.vuitton.android.data.api.bff.publication.SpotlightApi;
import com.vuitton.android.data.api.bff.publication.StoreModeApi;
import com.vuitton.android.data.api.bff.publication.StoryApi;
import com.vuitton.android.data.api.bff.publication.VideoApi;
import com.vuitton.android.data.api.bff.user.AICompanionApi;
import com.vuitton.android.data.api.bff.user.AccountApi;
import com.vuitton.android.data.api.bff.user.AccountFacadeApi;
import com.vuitton.android.data.api.bff.user.AddressesApi;
import com.vuitton.android.data.api.bff.user.AppointmentApi;
import com.vuitton.android.data.api.bff.user.AuthApi;
import com.vuitton.android.data.api.bff.user.BackInStockApi;
import com.vuitton.android.data.api.bff.user.BookingApi;
import com.vuitton.android.data.api.bff.user.CareServicesBffApi;
import com.vuitton.android.data.api.bff.user.CartApi;
import com.vuitton.android.data.api.bff.user.CertificateApi;
import com.vuitton.android.data.api.bff.user.CertificateDetailUrlApi;
import com.vuitton.android.data.api.bff.user.ExclusiveSalesApi;
import com.vuitton.android.data.api.bff.user.Model3dApi;
import com.vuitton.android.data.api.bff.user.OrderExchangeApi;
import com.vuitton.android.data.api.bff.user.OrdersApi;
import com.vuitton.android.data.api.bff.user.OrdersLegacyApi;
import com.vuitton.android.data.api.bff.user.PassApi;
import com.vuitton.android.data.api.bff.user.PersonalSelectionsApi;
import com.vuitton.android.data.api.bff.user.ProfileApi;
import com.vuitton.android.data.api.bff.user.RepairApi;
import com.vuitton.android.data.api.bff.user.SendEmailApi;
import com.vuitton.android.data.api.bff.user.StoreModeWelcomeApi;
import com.vuitton.android.data.api.bff.user.TwistAccountApi;
import com.vuitton.android.data.api.bff.user.TwistCartApi;
import com.vuitton.android.data.api.bff.user.UserWorldwideIdApi;
import com.vuitton.android.data.api.bff.user.WishlistApi;
import com.vuitton.android.data.api.connectivity.AirportApi;
import com.vuitton.android.data.api.connectivity.BffWatchApi;
import com.vuitton.android.data.api.connectivity.WatchApiV2;
import com.vuitton.android.data.api.legacymulesoft.CareServicesApi;
import com.vuitton.android.data.api.legacymulesoft.LegacyWishlistApi;
import com.vuitton.android.data.audioplayer.AudioPlayerControllerImpl;
import com.vuitton.android.data.audioplayer.di.ControllerDiModule;
import com.vuitton.android.data.datasource.account.AccountRemoteDataSource;
import com.vuitton.android.data.datasource.account.AccountRemoteFacadeDataSource;
import com.vuitton.android.data.datasource.account.AccountRemoteSalesforceDataSource;
import com.vuitton.android.data.datasource.account.AccountRemoteTwistDataSource;
import com.vuitton.android.data.datasource.address.AddressLocalDataSource;
import com.vuitton.android.data.datasource.address.AddressRemoteDataSource;
import com.vuitton.android.data.datasource.aicompanion.AICompanionLocalDataSource;
import com.vuitton.android.data.datasource.aicompanion.AICompanionRemoteDataSource;
import com.vuitton.android.data.datasource.analytic.AnalyticLocalDataSource;
import com.vuitton.android.data.datasource.analytic.AnalyticRemoteDataSource;
import com.vuitton.android.data.datasource.analytic.DeviceIdLocalDataSource;
import com.vuitton.android.data.datasource.audioguide.AudioGuideLocalDataSource;
import com.vuitton.android.data.datasource.auth.SalesforceTokenDataSource;
import com.vuitton.android.data.datasource.auth.SalesforceTokenDataSourceImpl;
import com.vuitton.android.data.datasource.auth.TwistTokenDataSource;
import com.vuitton.android.data.datasource.auth.TwistTokenDataSourceImpl;
import com.vuitton.android.data.datasource.avatar.AvatarLocalDataSource;
import com.vuitton.android.data.datasource.avatar.AvatarRemoteDataSource;
import com.vuitton.android.data.datasource.avatar.SavedUserAvatarLocalDataSource;
import com.vuitton.android.data.datasource.careservice.CareServicesBffRemoteDataSource;
import com.vuitton.android.data.datasource.careservice.CareServicesBffRemoteDataSourceImpl;
import com.vuitton.android.data.datasource.cart.bff.CartDataSource;
import com.vuitton.android.data.datasource.cart.legacy.CartLegacyDataSource;
import com.vuitton.android.data.datasource.cart.twist.CartTwistDataSource;
import com.vuitton.android.data.datasource.catalog.CatalogLocalDataSource;
import com.vuitton.android.data.datasource.config.AbTestLocalDataSource;
import com.vuitton.android.data.datasource.config.AppConfigLocalDataSource;
import com.vuitton.android.data.datasource.config.AppConfigRemoteDataSource;
import com.vuitton.android.data.datasource.config.AppLinkLocalDataSource;
import com.vuitton.android.data.datasource.config.AppVersionProviderImpl;
import com.vuitton.android.data.datasource.config.ConfigsVersionLocalDataSource;
import com.vuitton.android.data.datasource.config.ConfigsVersionRemoteDataSource;
import com.vuitton.android.data.datasource.config.ConnectedObjectsConfigLocalDataSource;
import com.vuitton.android.data.datasource.config.ConnectedObjectsConfigRemoteDataSource;
import com.vuitton.android.data.datasource.config.EnvironmentDataSource;
import com.vuitton.android.data.datasource.connectivity.AirportLocalDataSource;
import com.vuitton.android.data.datasource.connectivity.ConnectedObjectLocalDataSource;
import com.vuitton.android.data.datasource.consents.UserConsentsLocalDataSource;
import com.vuitton.android.data.datasource.deeplink.DeepLinkCacheDataSource;
import com.vuitton.android.data.datasource.deeplink.DeepLinkCacheLocalDataSourceImpl;
import com.vuitton.android.data.datasource.di.DataSourceDiModule;
import com.vuitton.android.data.datasource.dispatch.DispatchLocalStorageDataSource;
import com.vuitton.android.data.datasource.dispatch.DispatchMemCacheDataSource;
import com.vuitton.android.data.datasource.dispatch.DispatchRemoteDataSource;
import com.vuitton.android.data.datasource.dynamicyield.DynamicYieldDataSource;
import com.vuitton.android.data.datasource.endpoint.FacadeApiEndpointFactory;
import com.vuitton.android.data.datasource.hotcontent.HotContentLocalDataSource;
import com.vuitton.android.data.datasource.inappbanner.InAppBannerMemCacheDataSource;
import com.vuitton.android.data.datasource.maintenance.MaintenanceRemoteDataSource;
import com.vuitton.android.data.datasource.orders.InvoiceRemoteDataSource;
import com.vuitton.android.data.datasource.orders.OrdersLocalDataSource;
import com.vuitton.android.data.datasource.orders.OrdersRemoteDataSource;
import com.vuitton.android.data.datasource.pass.MultipartParser;
import com.vuitton.android.data.datasource.pass.PassLocalDataSource;
import com.vuitton.android.data.datasource.pass.PassNetworkDataSource;
import com.vuitton.android.data.datasource.pdp.BeautyLocalDataSource;
import com.vuitton.android.data.datasource.pdp.CustomizationLocalDataSource;
import com.vuitton.android.data.datasource.pdp.GetProductAvailabilitiesATGDataSource;
import com.vuitton.android.data.datasource.pdp.GetProductAvailabilitiesTwistDataSource;
import com.vuitton.android.data.datasource.pdp.GetProductDataSource;
import com.vuitton.android.data.datasource.profile.ProfileLocalDataSource;
import com.vuitton.android.data.datasource.repair.RepairLocalDataSource;
import com.vuitton.android.data.datasource.wishlist.LegacyWishlistAtgDataSource;
import com.vuitton.android.data.datasource.wishlist.WishlistLocalDataSource;
import com.vuitton.android.data.datasource.wishlist.WishlistRemoteDataSource;
import com.vuitton.android.data.di.ApiDiModule;
import com.vuitton.android.data.di.auth.AuthenticationDiModule;
import com.vuitton.android.data.di.datastore.DataStoreDiModuleKt;
import com.vuitton.android.data.di.sharedpreferences.SharedPreferencesFactory;
import com.vuitton.android.data.dto.booking.mapper.BookingHttpErrorMapper;
import com.vuitton.android.data.environment.EnvironmentProviderImpl;
import com.vuitton.android.data.localization.LanguageManagerImpl;
import com.vuitton.android.data.monitoring.DynatraceMonitor;
import com.vuitton.android.data.monitoring.DynatraceRepositoryImpl;
import com.vuitton.android.data.monitoring.TingyunRepositoryImpl;
import com.vuitton.android.data.net.AuthRequirement;
import com.vuitton.android.data.net.BffApi;
import com.vuitton.android.data.net.ProdUrls;
import com.vuitton.android.data.net.RetrofitFactory;
import com.vuitton.android.data.net.RetrofitFactoryKt;
import com.vuitton.android.data.net.atg.ATGSessionManager;
import com.vuitton.android.data.net.atg.ATGSessionManagerImpl;
import com.vuitton.android.data.net.auth.TokenRefreshCoordinator;
import com.vuitton.android.data.net.cookiejar.WebkitCookieManagerProxy;
import com.vuitton.android.data.net.interceptor.AkamaiBotProtectionInterceptor;
import com.vuitton.android.data.net.interceptor.BOLocaleInterceptor;
import com.vuitton.android.data.net.interceptor.DeviceIdInterceptor;
import com.vuitton.android.data.net.interceptor.MobileCorrelationIdInterceptor;
import com.vuitton.android.data.net.interceptor.UserAgentInterceptor;
import com.vuitton.android.data.net.serialization.di.SerializationModule;
import com.vuitton.android.data.net.serialization.retrofit.KotlinxSerializationConverterFactory;
import com.vuitton.android.data.reporter.CrashlyticsCrashReporter;
import com.vuitton.android.data.repository.AICompanionRepositoryImpl;
import com.vuitton.android.data.repository.ATGSessionRepositoryImpl;
import com.vuitton.android.data.repository.AccessibilityPreferencesRepositoryImpl;
import com.vuitton.android.data.repository.AccountRepositoryImpl;
import com.vuitton.android.data.repository.AddressRepositoryImpl;
import com.vuitton.android.data.repository.AirportRepositoryImpl;
import com.vuitton.android.data.repository.AnalyticsWrapperRepositoryImpl;
import com.vuitton.android.data.repository.AppConfigRepositoryImpl;
import com.vuitton.android.data.repository.AppInitializationRepositoryImpl;
import com.vuitton.android.data.repository.AppLinkRepositoryImpl;
import com.vuitton.android.data.repository.AppVersionRepositoryImpl;
import com.vuitton.android.data.repository.AppointmentRepositoryImpl;
import com.vuitton.android.data.repository.AppsFlyerRepositoryImpl;
import com.vuitton.android.data.repository.AudioGuideRepositoryImpl;
import com.vuitton.android.data.repository.AuthTokenRepositoryImpl;
import com.vuitton.android.data.repository.AvailabilityInStoreRepositoryImpl;
import com.vuitton.android.data.repository.AvatarRepositoryImpl;
import com.vuitton.android.data.repository.BackInStockRepositoryImpl;
import com.vuitton.android.data.repository.BeautyConsentRepositoryImpl;
import com.vuitton.android.data.repository.BeautyRepositoryImpl;
import com.vuitton.android.data.repository.BookingRepositoryImpl;
import com.vuitton.android.data.repository.BotProtectionRepositoryImpl;
import com.vuitton.android.data.repository.CalendarRepositoryImpl;
import com.vuitton.android.data.repository.CareServicesBffRepositoryImpl;
import com.vuitton.android.data.repository.CareServicesRepositoryImpl;
import com.vuitton.android.data.repository.CartRepositoryImpl;
import com.vuitton.android.data.repository.CatalogRepositoryImpl;
import com.vuitton.android.data.repository.CertificateRepositoryImpl;
import com.vuitton.android.data.repository.ConfigsVersionRepositoryImpl;
import com.vuitton.android.data.repository.ConnectedObjectsConfigRepositoryImpl;
import com.vuitton.android.data.repository.ConsentRepositoryImpl;
import com.vuitton.android.data.repository.CrashlyticsAnalyticsRepositoryImpl;
import com.vuitton.android.data.repository.DeepLinkCacheRepositoryImpl;
import com.vuitton.android.data.repository.DeviceIdRepositoryImpl;
import com.vuitton.android.data.repository.DispatchAreaListRepositoryImpl;
import com.vuitton.android.data.repository.DynamicYieldRepositoryImpl;
import com.vuitton.android.data.repository.EarphoneRepositoryImpl;
import com.vuitton.android.data.repository.ExclusiveSalesRepositoryImpl;
import com.vuitton.android.data.repository.FeedRepositoryImpl;
import com.vuitton.android.data.repository.FirebaseAnalyticsRepositoryImpl;
import com.vuitton.android.data.repository.HorizonSpeakerRepositoryImpl;
import com.vuitton.android.data.repository.HotContentRepositoryImpl;
import com.vuitton.android.data.repository.ImmersiveArticleRepositoryImpl;
import com.vuitton.android.data.repository.InAppBannerRepositoryImpl;
import com.vuitton.android.data.repository.InAppDispatchRepositoryImpl;
import com.vuitton.android.data.repository.LandingPageRepositoryImpl;
import com.vuitton.android.data.repository.LastViewedProductRepositoryImpl;
import com.vuitton.android.data.repository.LegalConsentRepositoryImpl;
import com.vuitton.android.data.repository.LightUpRepositoryImpl;
import com.vuitton.android.data.repository.LocalCacheRepositoryImpl;
import com.vuitton.android.data.repository.LoggerAnalyticsRepositoryImpl;
import com.vuitton.android.data.repository.LoggerRepositoryTimberImpl;
import com.vuitton.android.data.repository.LoginStateRepositoryImpl;
import com.vuitton.android.data.repository.MaintenanceRepositoryImpl;
import com.vuitton.android.data.repository.Model3dAssetRepositoryImpl;
import com.vuitton.android.data.repository.NotificationsManagerRepositoryImpl;
import com.vuitton.android.data.repository.NotificationsPreferencesRepositoryImpl;
import com.vuitton.android.data.repository.OnlineStoreAppointmentRepositoryImpl;
import com.vuitton.android.data.repository.OpenAppTimestampRepositoryImpl;
import com.vuitton.android.data.repository.OrderRepositoryImpl;
import com.vuitton.android.data.repository.PassRepositoryImpl;
import com.vuitton.android.data.repository.PerfectCorpRepositoryImpl;
import com.vuitton.android.data.repository.PermissionsRepositoryImpl;
import com.vuitton.android.data.repository.PersonalSelectionsRepositoryImpl;
import com.vuitton.android.data.repository.PhoneLocaleRepositoryImpl;
import com.vuitton.android.data.repository.PlaceRepositoryImpl;
import com.vuitton.android.data.repository.PortalRepositoryImpl;
import com.vuitton.android.data.repository.ProductRepositoryImpl;
import com.vuitton.android.data.repository.RecommendedSourceRepositoryImpl;
import com.vuitton.android.data.repository.RepairRepositoryImpl;
import com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl;
import com.vuitton.android.data.repository.SearchHistoryRepositoryImpl;
import com.vuitton.android.data.repository.SearchRepositoryImpl;
import com.vuitton.android.data.repository.SensorsDataAnalyticsRepositoryImpl;
import com.vuitton.android.data.repository.SharedPreferencesRepositoryImpl;
import com.vuitton.android.data.repository.SpotlightRepositoryImpl;
import com.vuitton.android.data.repository.StoreModeRepositoryImpl;
import com.vuitton.android.data.repository.StoreRepositoryImpl;
import com.vuitton.android.data.repository.StoryRepositoryImpl;
import com.vuitton.android.data.repository.TravelRepositoryImpl;
import com.vuitton.android.data.repository.TrunkSpeakerRepositoryImpl;
import com.vuitton.android.data.repository.TwistAuthRepositoryImpl;
import com.vuitton.android.data.repository.UserPreferencesRepositoryImpl;
import com.vuitton.android.data.repository.VideoPreloadWorker;
import com.vuitton.android.data.repository.VideoPreloadWorker_AssistedFactory;
import com.vuitton.android.data.repository.VideoRepositoryImpl;
import com.vuitton.android.data.repository.WatchRepositoryImpl;
import com.vuitton.android.data.repository.WatchV3RepositoryImpl;
import com.vuitton.android.data.repository.WishlistRepositoryImpl;
import com.vuitton.android.data.time.SystemTimeProvider;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.provider.api.ApiEndpointProvider;
import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.android.domain.provider.feature.FeatureCheckerProvider;
import com.vuitton.android.domain.reporter.CrashReporter;
import com.vuitton.android.domain.repository.ATGSessionRepository;
import com.vuitton.android.domain.repository.AccessibilityPreferencesRepository;
import com.vuitton.android.domain.repository.AccountRepository;
import com.vuitton.android.domain.repository.AnalyticsRepository;
import com.vuitton.android.domain.repository.AppConfigRepository;
import com.vuitton.android.domain.repository.AppVersionProvider;
import com.vuitton.android.domain.repository.AppsFlyerRepository;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.android.domain.repository.AutomatedTestRepository;
import com.vuitton.android.domain.repository.CartRepository;
import com.vuitton.android.domain.repository.ConfigsVersionRepository;
import com.vuitton.android.domain.repository.ConnectedObjectsConfigRepository;
import com.vuitton.android.domain.repository.ConsentRepository;
import com.vuitton.android.domain.repository.InAppBannerRepository;
import com.vuitton.android.domain.repository.InAppDispatchRepository;
import com.vuitton.android.domain.repository.LocalCacheRepository;
import com.vuitton.android.domain.repository.LoginStateRepository;
import com.vuitton.android.domain.repository.MaintenanceRepository;
import com.vuitton.android.domain.repository.NotificationsPreferencesRepository;
import com.vuitton.android.domain.repository.SalesforceAuthRepository;
import com.vuitton.android.domain.repository.SharedPreferencesRepository;
import com.vuitton.android.domain.repository.TwistAuthRepository;
import com.vuitton.android.domain.repository.UserPreferencesRepository;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.service.feature.TwistFeature;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.account.accessibility.GetAccessibilityValueUseCase;
import com.vuitton.android.domain.usecase.analytics.SendHitUseCase;
import com.vuitton.android.domain.usecase.analytics.SetUserPropertyUseCase;
import com.vuitton.android.domain.usecase.analytics.tools.appsflyer.SubscribeAppsFlyerDeepLinkUseCase;
import com.vuitton.android.domain.usecase.authentication.social.SocialLoginUseCase;
import com.vuitton.android.domain.usecase.automatedtest.IsUiTestUseCase;
import com.vuitton.android.domain.usecase.cart.GetConfirmationDetailsUseCase;
import com.vuitton.android.domain.usecase.chat.ChatTrackerUseCase;
import com.vuitton.android.domain.usecase.chat.HandleChatSystemUseCase;
import com.vuitton.android.domain.usecase.chat.IsChatEnabledUseCase;
import com.vuitton.android.domain.usecase.chat.StreamChatEventUseCase;
import com.vuitton.android.domain.usecase.config.AreConfigsInCacheUseCase;
import com.vuitton.android.domain.usecase.config.CachedAppConfigOrNullUseCase;
import com.vuitton.android.domain.usecase.config.DetermineFeatureStatusFromConfigsUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedConfigsVersionUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedConnectedObjectsConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.GetUserInAppDispatchOrNullUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.inappbanner.ClearActiveInAppBannerUseCase;
import com.vuitton.android.domain.usecase.inappbanner.ObserveActiveInAppBannerUseCase;
import com.vuitton.android.domain.usecase.inappbanner.SaveActiveInAppBannerUseCase;
import com.vuitton.android.domain.usecase.maintenance.IsAppInMaintenanceUseCase;
import com.vuitton.android.domain.usecase.privacy.GetConsentForCustomizationUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.chat.HasChatConsentUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.chat.UpdateChatConsentUseCase;
import com.vuitton.android.platform.activity.CurrentActivityProvider;
import com.vuitton.android.platform.activity.CurrentActivityTracker;
import com.vuitton.android.platform.security.RootDetector;
import com.vuitton.android.presentation.broadcast.ShareBroadcastReceiver;
import com.vuitton.android.presentation.chat.ChatCoordinator;
import com.vuitton.android.presentation.chat.consent.ChatConsentDelegateImpl;
import com.vuitton.android.presentation.contact.ContactUsDelegateImpl;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.di.AppModule;
import com.vuitton.android.presentation.di.EnvironmentImpl;
import com.vuitton.android.presentation.di.file.FileStorageProviderImpl;
import com.vuitton.android.presentation.di.notifications.NotificationsSdkProviderImpl;
import com.vuitton.android.presentation.di.provider.ApiEndpointProviderImpl;
import com.vuitton.android.presentation.di.provider.FeatureCheckerProviderImpl;
import com.vuitton.android.presentation.di.provider.SdkVersionProviderImpl;
import com.vuitton.android.presentation.di.provider.WebViewCookieCleanerImpl;
import com.vuitton.android.presentation.inappbanner.InAppBannerStateHolder;
import com.vuitton.android.presentation.inappbanner.InAppBannerSupervisor;
import com.vuitton.android.presentation.link.WebViewSocialAuthenticationHandlerImpl;
import com.vuitton.android.presentation.link.parsing.LinkClassifier;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.provider.buildconfig.BuildConfigProviderImpl;
import com.vuitton.android.presentation.push.NotificationsManager;
import com.vuitton.android.presentation.push.NotificationsSDKManager;
import com.vuitton.android.presentation.repository.AutomatedTestRepositoryProdImpl;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTrackerImpl;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTracker;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivityRouter;
import com.vuitton.android.presentation.screen.authentication.accountmanager.GoogleSignInManagerImpl;
import com.vuitton.android.presentation.screen.authentication.accountmanager.KakaoSignInManagerImpl;
import com.vuitton.android.presentation.screen.authentication.accountmanager.LineSignInManagerImpl;
import com.vuitton.android.presentation.screen.catalog.CatalogTracker;
import com.vuitton.android.presentation.screen.certificates.nfc.NfcManager;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.LVTrunkDeviceManager;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTracker;
import com.vuitton.android.presentation.screen.filter.quickaccess.FilterCommand;
import com.vuitton.android.presentation.screen.maintenance.CheckMaintenanceStatusService;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesTracker;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ContextualSizingTracker;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTracker;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceTracker;
import com.vuitton.android.presentation.screen.tracking.LegalConsentsTracker;
import com.vuitton.android.presentation.screenshaker.ScreenShakerSensorManager;
import com.vuitton.android.presentation.security.AkamaiSecurityHelper;
import com.vuitton.android.presentation.servicerecovery.RecoveryToolForService;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import com.vuitton.android.presentation.tracking.GA4Tracker;
import com.vuitton.core.infrastructure.chat.AndroidPlatformContract;
import com.vuitton.core.infrastructure.chat.ChatManagerImpl;
import com.vuitton.core.infrastructure.chat.ChatTrackerImpl;
import com.vuitton.core.infrastructure.data.forms.datasource.CivilityDataSource;
import com.vuitton.core.infrastructure.data.forms.datasource.FormDataSource;
import com.vuitton.core.infrastructure.data.forms.datasource.FormSystemDataSource;
import com.vuitton.core.infrastructure.data.forms.reader.FileReader;
import com.vuitton.core.infrastructure.data.forms.reader.FormFilePathProvider;
import com.vuitton.core.infrastructure.data.forms.repository.CivilityRepositoryImpl;
import com.vuitton.core.infrastructure.data.forms.repository.FormRepositoryImpl;
import com.vuitton.foundation.contracts.chat.ChatManager;
import com.vuitton.foundation.contracts.chat.ChatTracker;
import com.vuitton.foundation.contracts.environment.Environment;
import com.vuitton.foundation.contracts.link.UrlVerifier;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.logger.LoggerImpl;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import com.vuitton.foundation.model.domain.model.time.TimeProvider;
import com.vuitton.foundation.secrets.ObfuscatedSecretsProvider;
import com.vuitton.foundation.secrets.SecretsProvider;
import dagger.hilt.android.ActivityRetainedLifecycle;
import dagger.hilt.android.components.ActivityComponent;
import dagger.hilt.android.components.ActivityRetainedComponent;
import dagger.hilt.android.components.ServiceComponent;
import dagger.hilt.android.internal.Contexts;
import dagger.hilt.android.internal.builders.ActivityComponentBuilder;
import dagger.hilt.android.internal.builders.ActivityRetainedComponentBuilder;
import dagger.hilt.android.internal.builders.ServiceComponentBuilder;
import dagger.hilt.android.internal.lifecycle.RetainedLifecycleImpl;
import dagger.hilt.android.internal.managers.SavedStateHandleHolder;
import dagger.hilt.android.internal.modules.ApplicationContextModule;
import dagger.internal.DoubleCheck;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import dagger.internal.SingleCheck;
import defpackage.gt0;
import defpackage.u5;
import defpackage.u6;
import defpackage.v40;
import defpackage.w1;
import java.net.CookiePolicy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;
import kotlin.collections.EmptySet;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonKt;
import net.rtccloud.sdk.Sink;
import okhttp3.CookieJar;
import okhttp3.Interceptor;
import okhttp3.JavaNetCookieJar;
import okhttp3.OkHttpClient;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.asn1.eac.EACTags;
import org.bouncycastle.math.Primes;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes3.dex */
final class DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl extends LVApplication_HiltComponents$SingletonC {
    public final Provider A;
    public final Provider A0;
    public final Provider A1;
    public final Provider A2;
    public final Provider A3;
    public final Provider A4;
    public final Provider A5;
    public final Provider B;
    public final Provider B0;
    public final Provider B1;
    public final Provider B2;
    public final Provider B3;
    public final Provider B4;
    public final Provider B5;
    public final Provider C;
    public final Provider C0;
    public final Provider C1;
    public final Provider C2;
    public final Provider C3;
    public final Provider C4;
    public final Provider C5;
    public final Provider D;
    public final Provider D0;
    public final Provider D1;
    public final Provider D2;
    public final Provider D3;
    public final Provider D4;
    public final Provider D5;
    public final Provider E;
    public final Provider E0;
    public final Provider E1;
    public final Provider E2;
    public final Provider E3;
    public final Provider E4;
    public final Provider E5;
    public final Provider F;
    public final Provider F0;
    public final Provider F1;
    public final Provider F2;
    public final Provider F3;
    public final Provider F4;
    public final Provider F5;
    public final Provider G;
    public final Provider G0;
    public final Provider G1;
    public final Provider G2;
    public final Provider G3;
    public final Provider G4;
    public final Provider G5;
    public final Provider H;
    public final Provider H0;
    public final Provider H1;
    public final Provider H2;
    public final Provider H3;
    public final Provider H4;
    public final Provider H5;
    public final Provider I;
    public final Provider I0;
    public final Provider I1;
    public final Provider I2;
    public final Provider I3;
    public final Provider I4;
    public final Provider I5;
    public final Provider J;
    public final Provider J0;
    public final Provider J1;
    public final Provider J2;
    public final Provider J3;
    public final Provider J4;
    public final Provider K;
    public final Provider K0;
    public final Provider K1;
    public final Provider K2;
    public final Provider K3;
    public final Provider K4;
    public final Provider L;
    public final Provider L0;
    public final Provider L1;
    public final Provider L2;
    public final Provider L3;
    public final Provider L4;
    public final Provider M;
    public final Provider M0;
    public final Provider M1;
    public final Provider M2;
    public final Provider M3;
    public final Provider M4;
    public final Provider N;
    public final Provider N0;
    public final Provider N1;
    public final Provider N2;
    public final Provider N3;
    public final Provider N4;
    public final Provider O;
    public final Provider O0;
    public final Provider O1;
    public final Provider O2;
    public final Provider O3;
    public final Provider O4;
    public final Provider P;
    public final Provider P0;
    public final Provider P1;
    public final Provider P2;
    public final Provider P3;
    public final Provider P4;
    public final Provider Q;
    public final Provider Q0;
    public final Provider Q1;
    public final Provider Q2;
    public final Provider Q3;
    public final Provider Q4;
    public final Provider R;
    public final Provider R0;
    public final Provider R1;
    public final Provider R2;
    public final Provider R3;
    public final Provider R4;
    public final Provider S;
    public final Provider S0;
    public final Provider S1;
    public final Provider S2;
    public final Provider S3;
    public final Provider S4;
    public final Provider T;
    public final Provider T0;
    public final Provider T1;
    public final Provider T2;
    public final Provider T3;
    public final Provider T4;
    public final Provider U;
    public final Provider U0;
    public final Provider U1;
    public final Provider U2;
    public final Provider U3;
    public final Provider U4;
    public final Provider V;
    public final Provider V0;
    public final Provider V1;
    public final Provider V2;
    public final Provider V3;
    public final Provider V4;
    public final Provider W;
    public final Provider W0;
    public final Provider W1;
    public final Provider W2;
    public final Provider W3;
    public final Provider W4;
    public final Provider X;
    public final Provider X0;
    public final Provider X1;
    public final Provider X2;
    public final Provider X3;
    public final Provider X4;
    public final Provider Y;
    public final Provider Y0;
    public final Provider Y1;
    public final Provider Y2;
    public final Provider Y3;
    public final Provider Y4;
    public final Provider Z;
    public final Provider Z0;
    public final Provider Z1;
    public final Provider Z2;
    public final Provider Z3;
    public final Provider Z4;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ApplicationContextModule f50496a;
    public final Provider a0;
    public final Provider a1;
    public final Provider a2;
    public final Provider a3;
    public final Provider a4;
    public final Provider a5;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineDispatchersModule f50497b;
    public final Provider b0;
    public final Provider b1;
    public final Provider b2;
    public final Provider b3;
    public final Provider b4;
    public final Provider b5;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SerializationModule f50498c;
    public final Provider c0;
    public final Provider c1;
    public final Provider c2;
    public final Provider c3;
    public final Provider c4;
    public final Provider c5;
    public final ApiDiModule d;
    public final Provider d0;
    public final Provider d1;
    public final Provider d2;
    public final Provider d3;
    public final Provider d4;
    public final Provider d5;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AuthenticationDiModule f50499e;
    public final Provider e0;
    public final Provider e1;
    public final Provider e2;
    public final Provider e3;
    public final Provider e4;
    public final Provider e5;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ControllerDiModule f50500f;
    public final Provider f0;
    public final Provider f1;
    public final Provider f2;
    public final Provider f3;
    public final Provider f4;
    public final Provider f5;
    public final DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl g = this;
    public final Provider g0;
    public final Provider g1;
    public final Provider g2;
    public final Provider g3;
    public final Provider g4;
    public final Provider g5;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Provider f50501h;
    public final Provider h0;
    public final Provider h1;
    public final Provider h2;
    public final Provider h3;
    public final Provider h4;
    public final Provider h5;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Provider f50502i;
    public final Provider i0;
    public final Provider i1;
    public final Provider i2;
    public final Provider i3;
    public final Provider i4;
    public final Provider i5;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Provider f50503j;
    public final Provider j0;
    public final Provider j1;
    public final Provider j2;
    public final Provider j3;
    public final Provider j4;
    public final Provider j5;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Provider f50504k;
    public final Provider k0;
    public final Provider k1;
    public final Provider k2;
    public final Provider k3;
    public final Provider k4;
    public final Provider k5;
    public final Provider l;
    public final Provider l0;
    public final Provider l1;
    public final Provider l2;
    public final Provider l3;
    public final Provider l4;
    public final Provider l5;
    public final Provider m;
    public final Provider m0;
    public final Provider m1;
    public final Provider m2;
    public final Provider m3;
    public final Provider m4;
    public final Provider m5;
    public final Provider n;
    public final Provider n0;
    public final Provider n1;
    public final Provider n2;
    public final Provider n3;
    public final Provider n4;
    public final Provider n5;
    public final Provider o;
    public final Provider o0;
    public final Provider o1;
    public final Provider o2;
    public final Provider o3;
    public final Provider o4;
    public final Provider o5;
    public final Provider p;
    public final Provider p0;
    public final Provider p1;
    public final Provider p2;
    public final Provider p3;
    public final Provider p4;
    public final Provider p5;
    public final Provider q;
    public final Provider q0;
    public final Provider q1;
    public final Provider q2;
    public final Provider q3;
    public final Provider q4;
    public final Provider q5;
    public final Provider r;
    public final Provider r0;
    public final Provider r1;
    public final Provider r2;
    public final Provider r3;
    public final Provider r4;
    public final Provider r5;
    public final Provider s;
    public final Provider s0;
    public final Provider s1;
    public final Provider s2;
    public final Provider s3;
    public final Provider s4;
    public final Provider s5;
    public final Provider t;
    public final Provider t0;
    public final Provider t1;
    public final Provider t2;
    public final Provider t3;
    public final Provider t4;
    public final Provider t5;
    public final Provider u;
    public final Provider u0;
    public final Provider u1;
    public final Provider u2;
    public final Provider u3;
    public final Provider u4;
    public final Provider u5;
    public final Provider v;
    public final Provider v0;
    public final Provider v1;
    public final Provider v2;
    public final Provider v3;
    public final Provider v4;
    public final Provider v5;
    public final Provider w;
    public final Provider w0;
    public final Provider w1;
    public final Provider w2;
    public final Provider w3;
    public final Provider w4;
    public final Provider w5;
    public final Provider x;
    public final Provider x0;
    public final Provider x1;
    public final Provider x2;
    public final Provider x3;
    public final Provider x4;
    public final Provider x5;
    public final Provider y;
    public final Provider y0;
    public final Provider y1;
    public final Provider y2;
    public final Provider y3;
    public final Provider y4;
    public final Provider y5;
    public final Provider z;
    public final Provider z0;
    public final Provider z1;
    public final Provider z2;
    public final Provider z3;
    public final Provider z4;
    public final Provider z5;

    public static final class SwitchingProvider<T> implements Provider<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl f50505a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f50506b;

        public SwitchingProvider(DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, int i2) {
            this.f50505a = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;
            this.f50506b = i2;
        }

        public final Object a() {
            DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50505a;
            int i2 = this.f50506b;
            switch (i2) {
                case 0:
                    return new LoggerImpl((Environment) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50502i.get());
                case 1:
                    return new EnvironmentImpl();
                case 2:
                    return new ObfuscatedSecretsProvider((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get());
                case 3:
                    Context context = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context);
                    return new RootDetector(context, (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get());
                case 4:
                    return new CurrentActivityTracker();
                case 5:
                    return new InAppBannerSupervisor((InAppBannerStateHolder) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.r.get(), (CrashReporter) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.t.get(), (CurrentActivityProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.m.get());
                case 6:
                    return new InAppBannerStateHolder((CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get(), new ObserveActiveInAppBannerUseCase((InAppBannerRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.q.get()), new SaveActiveInAppBannerUseCase((InAppBannerRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.q.get()), new ClearActiveInAppBannerUseCase((InAppBannerRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.q.get()));
                case 7:
                    daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50497b.getClass();
                    CoroutineDispatchersModule$Companion$DefaultCoroutineDispatchers$1 coroutineDispatchersModule$Companion$DefaultCoroutineDispatchers$1 = CoroutineDispatchersModule.f43528b;
                    Preconditions.c(coroutineDispatchersModule$Companion$DefaultCoroutineDispatchers$1);
                    return coroutineDispatchersModule$Companion$DefaultCoroutineDispatchers$1;
                case 8:
                    return new InAppBannerRepositoryImpl((InAppBannerMemCacheDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.o.get());
                case 9:
                    return new InAppBannerMemCacheDataSource();
                case 10:
                    Context context2 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context2);
                    return new CrashlyticsCrashReporter(context2, (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get());
                case 11:
                    return new LVTrunkDeviceManager((LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), Contexts.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a));
                case 12:
                    return new LVEventSender((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get());
                case 13:
                    return new BuildConfigProviderImpl();
                case 14:
                    return new AutomatedTestRepositoryProdImpl();
                case 15:
                    Context context3 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context3);
                    return new AppsFlyerRepositoryImpl(context3, (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), (UserPreferencesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.K.get());
                case 16:
                    return new LocalCacheRepositoryImpl((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (OrdersLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B.get(), (WishlistLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.C.get(), (ProfileLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F.get(), new UserConsentsLocalDataSource(DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get()), (ConnectedObjectLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.H.get(), (RepairLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.I.get(), (UserPreferencesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.K.get(), (AvatarLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.L.get(), (HotContentLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.M.get());
                case 17:
                    return new OrdersLocalDataSource();
                case 18:
                    return new WishlistLocalDataSource();
                case 19:
                    return new ProfileLocalDataSource((DataStore) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D.get(), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get(), (CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get());
                case 20:
                    Context context4 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context4);
                    return (DataStore) DataStoreDiModuleKt.f44286b.b(context4, DataStoreDiModuleKt.f44285a[0]);
                case 21:
                    daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50498c.getClass();
                    Json json = JsonProviderKt.f43520a;
                    Preconditions.c(json);
                    return json;
                case 22:
                    Context context5 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context5);
                    return SharedPreferencesFactory.a(context5, "SP_MYLV_ENC");
                case 23:
                    return new ConnectedObjectLocalDataSource();
                case 24:
                    return new RepairLocalDataSource();
                case 25:
                    return new UserPreferencesRepositoryImpl(DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G), new EnvironmentDataSource(DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G)), (CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get());
                case 26:
                    return new AvatarLocalDataSource();
                case 27:
                    return new HotContentLocalDataSource();
                case 28:
                    return new LoginStateRepositoryImpl();
                case 29:
                    return new AuthTokenRepositoryImpl((TwistTokenDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R.get(), (SalesforceTokenDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.T.get());
                case 30:
                    return new TwistTokenDataSourceImpl(DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G), (CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get());
                case 31:
                    return new SalesforceTokenDataSourceImpl(DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G), (CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get());
                case 32:
                    final FeatureCheckerProvider featureCheckerProvider = (FeatureCheckerProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.i0.get();
                    featureCheckerProvider.getClass();
                    return new TwistFeature() { // from class: com.vuitton.android.presentation.di.core.CoreDiModule$Companion$provideTwistFeature$1
                        @Override // com.vuitton.android.domain.service.feature.FeatureState
                        public final boolean getEnabled() {
                            return featureCheckerProvider.a(new Feature[]{Feature.TWIST});
                        }
                    };
                case 33:
                    return new FeatureCheckerProviderImpl(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D());
                case 34:
                    return new InAppDispatchRepositoryImpl((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), new DispatchLocalStorageDataSource((CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get(), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get(), DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G)), (DispatchMemCacheDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.V.get());
                case 35:
                    DataSourceDiModule.f44074a.getClass();
                    DispatchMemCacheDataSource dispatchMemCacheDataSource = DataSourceDiModule.Companion.f44076b;
                    Preconditions.c(dispatchMemCacheDataSource);
                    return dispatchMemCacheDataSource;
                case 36:
                    return new AppConfigRepositoryImpl(new AppConfigRemoteDataSource((ConfigurationApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.c0.get()), new AppConfigLocalDataSource((CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get(), (SharedPreferences) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.Y.get(), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get()), new AbTestLocalDataSource((CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get(), (SharedPreferences) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G.get()));
                case 37:
                    ApiDiModule apiDiModule = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    ApplicationContextModule applicationContextModule = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a;
                    Context context6 = applicationContextModule.f68523a;
                    Preconditions.c(context6);
                    AppConfigLocalDataSource appConfigLocalDataSource = new AppConfigLocalDataSource((CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get(), (SharedPreferences) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.Y.get(), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get());
                    DeviceIdLocalDataSource deviceIdLocalDataSource = (DeviceIdLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.Z.get();
                    EnvironmentProvider environmentProvider = (EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b0.get();
                    InAppDispatchRepository inAppDispatchRepository = (InAppDispatchRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.X.get();
                    BuildConfigProvider buildConfigProvider = (BuildConfigProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y.get();
                    Preconditions.c(applicationContextModule.f68523a);
                    EmptySet emptySet = EmptySet.f71770b;
                    Preconditions.c(emptySet);
                    ImmutableSet<Interceptor> immutableSetS = ImmutableSet.s(emptySet);
                    apiDiModule.getClass();
                    deviceIdLocalDataSource.getClass();
                    environmentProvider.getClass();
                    inAppDispatchRepository.getClass();
                    buildConfigProvider.getClass();
                    immutableSetS.getClass();
                    OkHttpClient.Builder builder = new OkHttpClient.Builder();
                    BOLocaleInterceptor bOLocaleInterceptor = new BOLocaleInterceptor(environmentProvider, new u6(inAppDispatchRepository, 0), new w1(appConfigLocalDataSource, 7));
                    ArrayList arrayList = builder.f76962c;
                    arrayList.add(bOLocaleInterceptor);
                    arrayList.add(new AkamaiBotProtectionInterceptor(environmentProvider));
                    arrayList.add(new DeviceIdInterceptor(deviceIdLocalDataSource));
                    arrayList.add(new MobileCorrelationIdInterceptor(environmentProvider));
                    arrayList.add(new UserAgentInterceptor(context6, buildConfigProvider));
                    for (Interceptor interceptor : immutableSetS) {
                        interceptor.getClass();
                        builder.d.add(interceptor);
                    }
                    OkHttpClient okHttpClient = new OkHttpClient(builder);
                    Retrofit.Builder builder2 = new Retrofit.Builder();
                    builder2.f79461a = okHttpClient;
                    builder2.a(new KotlinxSerializationConverterFactory(JsonProviderKt.f43520a).a());
                    builder2.b(environmentProvider.b());
                    Object objB = builder2.d().b(ConfigurationApi.class);
                    objB.getClass();
                    return (ConfigurationApi) objB;
                case 38:
                    Context context7 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context7);
                    SharedPreferences sharedPreferences = context7.getSharedPreferences("app_config_sp", 0);
                    sharedPreferences.getClass();
                    return sharedPreferences;
                case 39:
                    return new DeviceIdLocalDataSource(DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G), (CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get());
                case 40:
                    daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.getClass();
                    return new EnvironmentProviderImpl(new EnvironmentDataSource(DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G)), (SecretsProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50504k.get(), (BuildConfigProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y.get());
                case 41:
                    return new SharedPreferencesRepositoryImpl(DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G));
                case EACTags.CURRENCY_CODE /* 42 */:
                    return new VideoPreloadWorker_AssistedFactory() { // from class: com.vuitton.android.presentation.DaggerLVApplication_HiltComponents_SingletonC.SingletonCImpl.SwitchingProvider.1
                        @Override // androidx.hilt.work.WorkerAssistedFactory
                        public final VideoPreloadWorker a(Context context8, WorkerParameters workerParameters) {
                            return new VideoPreloadWorker(context8, workerParameters, (CacheDataSource.Factory) SwitchingProvider.this.f50505a.m0.get());
                        }
                    };
                case EACTags.DATE_OF_BIRTH /* 43 */:
                    CacheFactory cacheFactory = AppModule.f51474a;
                    if (cacheFactory != null) {
                        return (CacheDataSource.Factory) cacheFactory.f50468b.getF71699b();
                    }
                    return null;
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                    Logger logger = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
                    Context context8 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context8);
                    return new AnalyticsWrapperRepositoryImpl(logger, context8, (AnalyticsRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.r0.get(), (AnalyticsRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.t0.get(), (AnalyticsRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v0.get(), (AnalyticsRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.x0.get(), (BuildConfigProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y.get());
                case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                    Logger logger2 = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
                    Context context9 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context9);
                    return new FirebaseAnalyticsRepositoryImpl(logger2, context9, (ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.p0.get(), new FirebaseUserPropertyBuilder(), new FirebaseAnalyticsHitBuilder((UserPreferencesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.K.get(), (EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b0.get(), (BuildConfigProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y.get()));
                case 46:
                    return new ConsentRepositoryImpl((SharedPreferences) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G.get(), (InAppDispatchRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.X.get(), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get());
                case EACTags.PIN_USAGE_POLICY /* 47 */:
                    Logger logger3 = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
                    Context context10 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context10);
                    return new SensorsDataAnalyticsRepositoryImpl(logger3, context10, (ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.p0.get(), new SensorsDataUserPropertyBuilder(), new SensorsDataAnalyticsHitBuilder((UserPreferencesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.K.get(), (EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b0.get(), (BuildConfigProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y.get()), (ProfileLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F.get(), (EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b0.get(), (BuildConfigProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y.get());
                case 48:
                    Logger logger4 = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
                    Context context11 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context11);
                    return new CrashlyticsAnalyticsRepositoryImpl(logger4, context11, (ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.p0.get(), new CrashlyticsAnalyticsHitBuilder(), (BuildConfigProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y.get());
                case 49:
                    return new LoggerAnalyticsRepositoryImpl((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get());
                case 50:
                    Logger logger5 = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
                    Context context12 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context12);
                    return new AccessibilityPreferencesRepositoryImpl(logger5, context12, DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get(), (FeatureCheckerProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.i0.get());
                case EACTags.TRANSACTION_DATE /* 51 */:
                    return new PdpTracker(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                    return new ScreenShakerSensorManager();
                case EACTags.SEX /* 53 */:
                    Logger logger6 = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
                    Context context13 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context13);
                    return new NotificationsSDKManager(logger6, context13, (NotificationsPreferencesTracker) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E0.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.A(), (NotificationsPreferencesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.j1.get(), (UserPreferencesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.K.get(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get());
                case EACTags.CURRENCY_EXPONENT /* 54 */:
                    return new NotificationsPreferencesTracker(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                case 55:
                    return new AccountRepositoryImpl((AccountRemoteTwistDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.U0.get(), (AccountRemoteFacadeDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b1.get(), new AccountRemoteSalesforceDataSource((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (ProfileApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.T0.get(), (AuthTokenRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.U.get()), (AccountRemoteDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d1.get(), new AddressRemoteDataSource((AddressesApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.e1.get(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), new AddressHttpErrorMapper()), new UserConsentsLocalDataSource(DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get()), (ProfileLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F.get(), (UserWorldwideIdApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f1.get(), (WebkitCookieManagerProxy) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G0.get(), (ConnectedObjectLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.H.get(), (RepairLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.I.get(), (UserPreferencesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.K.get(), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get());
                case 56:
                    return new AccountRemoteTwistDataSource((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (TwistAccountApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.S0.get(), (ProfileApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.T0.get());
                case 57:
                    ApiDiModule apiDiModule2 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule2.getClass();
                    retrofitFactory.getClass();
                    Object objB2 = retrofitFactory.c(BffApi.USER_API, AuthRequirement.ADD_SFID_AND_SLAS_HEADERS_ONLY_FOR_TWIST_LOGGED_IN_USER).b(TwistAccountApi.class);
                    objB2.getClass();
                    return (TwistAccountApi) objB2;
                case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                    AuthenticationDiModule authenticationDiModule = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50499e;
                    ApplicationContextModule applicationContextModule2 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a;
                    Context context14 = applicationContextModule2.f68523a;
                    Preconditions.c(context14);
                    Logger logger7 = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
                    KotlinxSerializationConverterFactory kotlinxSerializationConverterFactory = (KotlinxSerializationConverterFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F0.get();
                    Json json2 = (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get();
                    CookieJar cookieJar = (CookieJar) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.H0.get();
                    AuthTokenRepository authTokenRepository = (AuthTokenRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.U.get();
                    TwistAuthRepository twistAuthRepository = (TwistAuthRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.L0.get();
                    TokenRefreshCoordinator tokenRefreshCoordinator = (TokenRefreshCoordinator) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.Q0.get();
                    BuildConfigProvider buildConfigProvider2 = (BuildConfigProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y.get();
                    AppConfigRepository appConfigRepository = (AppConfigRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.e0.get();
                    InAppDispatchRepository inAppDispatchRepository2 = (InAppDispatchRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.X.get();
                    FeatureCheckerProvider featureCheckerProvider2 = (FeatureCheckerProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.i0.get();
                    EnvironmentProvider environmentProvider2 = (EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b0.get();
                    ProdUrls prodUrls = new ProdUrls((BuildConfigProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y.get());
                    DeviceIdLocalDataSource deviceIdLocalDataSource2 = (DeviceIdLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.Z.get();
                    Preconditions.c(applicationContextModule2.f68523a);
                    EmptySet emptySet2 = EmptySet.f71770b;
                    Preconditions.c(emptySet2);
                    ImmutableSet immutableSetS2 = ImmutableSet.s(emptySet2);
                    authenticationDiModule.getClass();
                    logger7.getClass();
                    kotlinxSerializationConverterFactory.getClass();
                    json2.getClass();
                    cookieJar.getClass();
                    authTokenRepository.getClass();
                    twistAuthRepository.getClass();
                    tokenRefreshCoordinator.getClass();
                    buildConfigProvider2.getClass();
                    appConfigRepository.getClass();
                    inAppDispatchRepository2.getClass();
                    featureCheckerProvider2.getClass();
                    environmentProvider2.getClass();
                    deviceIdLocalDataSource2.getClass();
                    immutableSetS2.getClass();
                    return new RetrofitFactory(logger7, context14, kotlinxSerializationConverterFactory, json2, authTokenRepository, twistAuthRepository, appConfigRepository, inAppDispatchRepository2, featureCheckerProvider2, tokenRefreshCoordinator, cookieJar, environmentProvider2, prodUrls, deviceIdLocalDataSource2, buildConfigProvider2, immutableSetS2);
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    return new KotlinxSerializationConverterFactory((Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get());
                case 60:
                    WebkitCookieManagerProxy webkitCookieManagerProxy = (WebkitCookieManagerProxy) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G0.get();
                    webkitCookieManagerProxy.getClass();
                    return new JavaNetCookieJar(webkitCookieManagerProxy);
                case 61:
                    Logger logger8 = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
                    logger8.getClass();
                    return new WebkitCookieManagerProxy(logger8, CookiePolicy.ACCEPT_ALL);
                case 62:
                    return new TwistAuthRepositoryImpl((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.x(), (TwistTokenDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R.get(), (LoginStateRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.P.get(), (WebkitCookieManagerProxy) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G0.get(), (AnalyticLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.I0.get(), (AnalyticRemoteDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.J0.get(), (ProfileLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F.get(), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get());
                case 63:
                    DataSourceDiModule.f44074a.getClass();
                    return new AnalyticLocalDataSource();
                case 64:
                    Logger logger9 = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
                    Context context15 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context15);
                    FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(context15);
                    firebaseAnalytics.getClass();
                    DataSourceDiModule.f44074a.getClass();
                    logger9.getClass();
                    return new AnalyticRemoteDataSource(logger9, firebaseAnalytics);
                case EACTags.ELEMENT_LIST /* 65 */:
                    return new TokenRefreshCoordinator((AuthTokenRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.U.get(), (TwistAuthRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.L0.get(), (SalesforceAuthRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.N0.get(), (TimeProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.P0.get(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get());
                case EACTags.ADDRESS /* 66 */:
                    return new SalesforceAuthRepositoryImpl((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.x(), (SalesforceTokenDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.T.get(), (LoginStateRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.P.get(), (WebkitCookieManagerProxy) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G0.get(), (AnalyticLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.I0.get(), (AnalyticRemoteDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.J0.get(), (ProfileLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F.get());
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    return new SystemTimeProvider();
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    ApiDiModule apiDiModule3 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory2 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule3.getClass();
                    retrofitFactory2.getClass();
                    Object objB3 = retrofitFactory2.c(BffApi.USER_API, AuthRequirement.ADD_SFID_AND_SLAS_HEADERS_ONLY_FOR_TWIST_LOGGED_IN_USER).b(ProfileApi.class);
                    objB3.getClass();
                    return (ProfileApi) objB3;
                case EACTags.DISPLAY_IMAGE /* 69 */:
                    daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.getClass();
                    return new AccountRemoteFacadeDataSource(new FacadeApiEndpointFactory((ApiEndpointProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.W0.get()), (AccountFacadeApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.X0.get(), (ProfileApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.T0.get(), (AuthTokenRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.U.get(), (ATGSessionManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.a1.get());
                case 70:
                    return new ApiEndpointProviderImpl(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E());
                case EACTags.MESSAGE_REFERENCE /* 71 */:
                    ApiDiModule apiDiModule4 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory3 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule4.getClass();
                    retrofitFactory3.getClass();
                    Object objB4 = retrofitFactory3.c(BffApi.USER_API, AuthRequirement.TRIGGER_REFRESH_TOKEN).b(AccountFacadeApi.class);
                    objB4.getClass();
                    return (AccountFacadeApi) objB4;
                case 72:
                    Context context16 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context16);
                    return new ATGSessionManagerImpl(context16, (ATGSessionRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.Z0.get(), (WebkitCookieManagerProxy) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G0.get(), (AppConfigRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.e0.get(), (UserPreferencesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.K.get(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get());
                case 73:
                    return new ATGSessionRepositoryImpl(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.x(), (WebkitCookieManagerProxy) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G0.get(), (EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b0.get());
                case EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY /* 74 */:
                    return new AccountRemoteDataSource((AccountApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.c1.get());
                case EACTags.DEPRECATED /* 75 */:
                    ApiDiModule apiDiModule5 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory4 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule5.getClass();
                    retrofitFactory4.getClass();
                    Object objB5 = retrofitFactory4.c(BffApi.USER_API, AuthRequirement.ADD_SFID_AND_SLAS_HEADERS_ONLY_FOR_TWIST_LOGGED_IN_USER).b(AccountApi.class);
                    objB5.getClass();
                    return (AccountApi) objB5;
                case 76:
                    ApiDiModule apiDiModule6 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory5 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule6.getClass();
                    retrofitFactory5.getClass();
                    Object objB6 = retrofitFactory5.c(BffApi.USER_API, AuthRequirement.FORCE_ADD_SFID_AND_SLAS_HEADERS_FOR_TWIST_LOCALE).b(AddressesApi.class);
                    objB6.getClass();
                    return (AddressesApi) objB6;
                case EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID /* 77 */:
                    ApiDiModule apiDiModule7 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory6 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule7.getClass();
                    retrofitFactory6.getClass();
                    Object objB7 = RetrofitFactory.d(retrofitFactory6, BffApi.USER_API, null, 2).b(UserWorldwideIdApi.class);
                    objB7.getClass();
                    return (UserWorldwideIdApi) objB7;
                case 78:
                    Logger logger10 = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
                    Context context17 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context17);
                    return new NotificationsPreferencesRepositoryImpl(logger10, context17, DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get(), (ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.p0.get());
                case 79:
                    return new WebViewSocialAuthenticationHandlerImpl(new GoogleSignInManagerImpl((CredentialManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.l1.get(), (EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b0.get()), new LineSignInManagerImpl((EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b0.get()), new KakaoSignInManagerImpl(), new SocialLoginUseCase((TwistAuthRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.L0.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), new AuthenticationActivityRouter(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D());
                case EACTags.UNIFORM_RESOURCE_LOCATOR /* 80 */:
                    Context context18 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context18);
                    return new CredentialManagerImpl(context18);
                case EACTags.ANSWER_TO_RESET /* 81 */:
                    return new DynatraceMonitor((DeviceIdLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.Z.get(), (BuildConfigProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y.get());
                case EACTags.HISTORICAL_BYTES /* 82 */:
                    return new ChatCoordinator((CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get(), new HandleChatSystemUseCase((ChatManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v1.get()), (AndroidPlatformContract) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), new HasChatConsentUseCase((ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.p0.get()), new GetConfirmationDetailsUseCase((CartRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.A1.get()), new ChatTrackerUseCase((ChatTracker) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.s1.get()));
                case 83:
                    return new ChatManagerImpl((InsideClient) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.q1.get(), (ChatTracker) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.s1.get(), (UrlVerifier) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u1.get(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get());
                case 84:
                    Context context19 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context19);
                    if (InsideClient.A == null) {
                        InsideClient insideClient = new InsideClient();
                        insideClient.f43291c = true;
                        insideClient.d = false;
                        insideClient.f43292e = null;
                        insideClient.f43293f = new InsideCart(null, null);
                        insideClient.g = null;
                        new Handler();
                        new HashMap();
                        insideClient.m = "javascript:disconnectMe();";
                        insideClient.u = false;
                        insideClient.v = true;
                        insideClient.w = false;
                        InsideClient.A = insideClient;
                    }
                    if (context19 instanceof Activity) {
                        InsideClient.y = context19;
                    } else {
                        InsideClient.z = context19;
                    }
                    InsideClient insideClient2 = InsideClient.A;
                    insideClient2.getClass();
                    return insideClient2;
                case 85:
                    return new ChatTrackerImpl((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (InsideClient) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.q1.get());
                case 86:
                    return new LinkClassifier((EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b0.get());
                case 87:
                    return new CartRepositoryImpl(new CartDataSource((CartApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.w1.get(), (PublicationCartApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.x1.get(), (CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get(), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get()), new CartTwistDataSource((TwistCartApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y1.get(), (AuthTokenRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.U.get(), (CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get()), new CartLegacyDataSource((CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get(), (AppConfigRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.e0.get()), (DeviceIdLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.Z.get(), (WebkitCookieManagerProxy) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G0.get());
                case 88:
                    ApiDiModule apiDiModule8 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory7 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule8.getClass();
                    retrofitFactory7.getClass();
                    Object objB8 = retrofitFactory7.c(BffApi.USER_API, AuthRequirement.FORCE_ADD_SFID_AND_SLAS_HEADERS_FOR_TWIST_LOCALE).b(CartApi.class);
                    objB8.getClass();
                    return (CartApi) objB8;
                case 89:
                    ApiDiModule apiDiModule9 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory8 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule9.getClass();
                    retrofitFactory8.getClass();
                    Object objB9 = RetrofitFactory.a(retrofitFactory8, BffApi.PUBLICATION_API, null, 6).b(PublicationCartApi.class);
                    objB9.getClass();
                    return (PublicationCartApi) objB9;
                case Sink.ORIENTATION_90 /* 90 */:
                    ApiDiModule apiDiModule10 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory9 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule10.getClass();
                    retrofitFactory9.getClass();
                    Object objB10 = retrofitFactory9.c(BffApi.USER_API, AuthRequirement.FORCE_ADD_SFID_AND_SLAS_HEADERS_FOR_TWIST_LOCALE).b(TwistCartApi.class);
                    objB10.getClass();
                    return (TwistCartApi) objB10;
                case 91:
                    return new NfcManager((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (SecretsProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50504k.get());
                case 92:
                    Context context20 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context20);
                    return new AkamaiSecurityHelper(context20, (BuildConfigProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y.get());
                case 93:
                    return new AICompanionRepositoryImpl((AuthTokenRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.U.get(), (AICompanionLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E1.get(), (AICompanionRemoteDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G1.get());
                case 94:
                    return new AICompanionLocalDataSource((DataStore) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D.get(), (CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get(), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get());
                case 95:
                    return new AICompanionRemoteDataSource((AICompanionApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F1.get());
                case 96:
                    ApiDiModule apiDiModule11 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory10 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule11.getClass();
                    retrofitFactory10.getClass();
                    Object objB11 = RetrofitFactory.a(retrofitFactory10, BffApi.USER_API, AuthRequirement.FORCE_ADD_SFID_AND_SLAS_HEADERS_FOR_TWIST_LOCALE, 2).b(AICompanionApi.class);
                    objB11.getClass();
                    return (AICompanionApi) objB11;
                case 97:
                    return new ProductRepositoryImpl((ProductApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.I1.get(), (WishlistLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.C.get(), (CustomizationLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.J1.get());
                case 98:
                    ApiDiModule apiDiModule12 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory11 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule12.getClass();
                    retrofitFactory11.getClass();
                    Object objB12 = RetrofitFactory.d(retrofitFactory11, BffApi.CATALOG_API, null, 2).b(ProductApi.class);
                    objB12.getClass();
                    return (ProductApi) objB12;
                case 99:
                    return new CustomizationLocalDataSource();
                default:
                    throw new AssertionError(i2);
            }
        }

        @Override // javax.inject.Provider
        public final Object get() {
            int i2 = this.f50506b;
            int i3 = i2 / 100;
            if (i3 == 0) {
                return a();
            }
            DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50505a;
            if (i3 != 1) {
                if (i3 != 2) {
                    throw new AssertionError(i2);
                }
                switch (i2) {
                    case 200:
                        return new StoreRepositoryImpl((StoreApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.p4.get());
                    case 201:
                        return new SearchRepositoryImpl((SearchApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.I4.get(), (WishlistLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.C.get());
                    case 202:
                        ApiDiModule apiDiModule = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                        RetrofitFactory retrofitFactory = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                        apiDiModule.getClass();
                        retrofitFactory.getClass();
                        Object objB = retrofitFactory.b(BffApi.CATALOG_API).b(SearchApi.class);
                        objB.getClass();
                        return (SearchApi) objB;
                    case 203:
                        return new LegalConsentRepositoryImpl((LegalConsentApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.L4.get());
                    case 204:
                        ApiDiModule apiDiModule2 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                        RetrofitFactory retrofitFactory2 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                        apiDiModule2.getClass();
                        retrofitFactory2.getClass();
                        Object objB2 = RetrofitFactory.d(retrofitFactory2, BffApi.PUBLICATION_API, null, 2).b(LegalConsentApi.class);
                        objB2.getClass();
                        return (LegalConsentApi) objB2;
                    case 205:
                        return new RecommendedSourceRepositoryImpl(DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get());
                    case 206:
                        return new PersonalSelectionsRepositoryImpl((PersonalSelectionsApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.Q4.get(), (AuthTokenRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.U.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get());
                    case 207:
                        ApiDiModule apiDiModule3 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                        RetrofitFactory retrofitFactory3 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                        apiDiModule3.getClass();
                        retrofitFactory3.getClass();
                        Object objB3 = RetrofitFactory.a(retrofitFactory3, BffApi.USER_API, AuthRequirement.ADD_SFID_HEADER_FOR_PERMANENT_USER, 2).b(PersonalSelectionsApi.class);
                        objB3.getClass();
                        return (PersonalSelectionsApi) objB3;
                    case 208:
                        return new PortalRepositoryImpl((PortalApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.T4.get());
                    case 209:
                        ApiDiModule apiDiModule4 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                        RetrofitFactory retrofitFactory4 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                        apiDiModule4.getClass();
                        retrofitFactory4.getClass();
                        Object objB4 = retrofitFactory4.b(BffApi.PUBLICATION_API).b(PortalApi.class);
                        objB4.getClass();
                        return (PortalApi) objB4;
                    case 210:
                        Context context = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                        Preconditions.c(context);
                        return new DynatraceRepositoryImpl(context, (BuildConfigProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y.get(), (SecretsProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50504k.get());
                    case Primes.SMALL_FACTOR_LIMIT /* 211 */:
                        Context context2 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                        Preconditions.c(context2);
                        return new TingyunRepositoryImpl(context2, (SecretsProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50504k.get(), (BuildConfigProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y.get());
                    case 212:
                        return new NotificationsManagerRepositoryImpl((NotificationsSdkProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.a5.get());
                    case 213:
                        return new NotificationsSdkProviderImpl((NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get());
                    case 214:
                        return new PhoneLocaleRepositoryImpl();
                    case 215:
                        return new AppVersionRepositoryImpl((CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get(), DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.Y), (AppVersionProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f5.get());
                    case 216:
                        return new AppVersionProviderImpl((BuildConfigProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y.get());
                    case 217:
                        return new LoggerRepositoryTimberImpl((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.z0), (BuildConfigProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y.get());
                    case ModuleDescriptor.MODULE_VERSION /* 218 */:
                        Context context3 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                        Preconditions.c(context3);
                        return new AppInitializationRepositoryImpl(context3);
                    case 219:
                        Logger logger = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
                        Context context4 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                        Preconditions.c(context4);
                        return new PerfectCorpRepositoryImpl(logger, context4, (BuildConfigProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y.get(), (FeatureCheckerProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.i0.get());
                    case 220:
                        return new MaintenanceRepositoryImpl(new MaintenanceRemoteDataSource((MaintenanceApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n5.get()));
                    case 221:
                        ApiDiModule apiDiModule5 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                        RetrofitFactory retrofitFactory5 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                        apiDiModule5.getClass();
                        retrofitFactory5.getClass();
                        Object objB5 = RetrofitFactory.a(retrofitFactory5, BffApi.PUBLICATION_API, null, 6).b(MaintenanceApi.class);
                        objB5.getClass();
                        return (MaintenanceApi) objB5;
                    case 222:
                        return new DeepLinkCacheRepositoryImpl((DeepLinkCacheDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.s5.get());
                    case 223:
                        return new DeepLinkCacheLocalDataSourceImpl((CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get(), (SharedPreferences) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.q5.get(), (TimeProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.P0.get());
                    case BERTags.FLAGS /* 224 */:
                        Context context5 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                        Preconditions.c(context5);
                        SharedPreferences sharedPreferences = context5.getSharedPreferences("SP_MYLV", 0);
                        sharedPreferences.getClass();
                        return sharedPreferences;
                    case 225:
                        return new OpenAppTimestampRepositoryImpl();
                    case 226:
                        return new BotProtectionRepositoryImpl(Contexts.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a), (EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b0.get(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get());
                    case 227:
                        return new SpotlightRepositoryImpl((SpotlightApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y5.get(), (WorkManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.z5.get(), (CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get());
                    case 228:
                        ApiDiModule apiDiModule6 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                        RetrofitFactory retrofitFactory6 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                        apiDiModule6.getClass();
                        retrofitFactory6.getClass();
                        Object objB6 = RetrofitFactory.a(retrofitFactory6, BffApi.PUBLICATION_API, null, 6).b(SpotlightApi.class);
                        objB6.getClass();
                        return (SpotlightApi) objB6;
                    case 229:
                        Context context6 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                        Preconditions.c(context6);
                        WorkManager.f20280a.getClass();
                        WorkManagerImpl workManagerImplD = WorkManagerImpl.d(context6);
                        workManagerImplD.getClass();
                        return workManagerImplD;
                    case 230:
                        return new StoryRepositoryImpl((StoryApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.C5.get());
                    case 231:
                        ApiDiModule apiDiModule7 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                        RetrofitFactory retrofitFactory7 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                        apiDiModule7.getClass();
                        retrofitFactory7.getClass();
                        Object objB7 = RetrofitFactory.a(retrofitFactory7, BffApi.PUBLICATION_API, null, 6).b(StoryApi.class);
                        objB7.getClass();
                        return (StoryApi) objB7;
                    case 232:
                        return new TravelRepositoryImpl((WatchApiV2) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.H2.get(), (AuthTokenRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.U.get());
                    case 233:
                        return new DeviceIdRepositoryImpl((DeviceIdLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.Z.get());
                    default:
                        throw new AssertionError(i2);
                }
            }
            switch (i2) {
                case 100:
                    return new WishlistRepositoryImpl((LegacyWishlistAtgDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.N1.get(), new WishlistRemoteDataSource((WishlistApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.O1.get(), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get()), (WishlistLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.C.get());
                case 101:
                    return new LegacyWishlistAtgDataSource((LegacyWishlistApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.M1.get(), (EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b0.get());
                case 102:
                    ApiDiModule apiDiModule8 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory8 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule8.getClass();
                    retrofitFactory8.getClass();
                    Object objB8 = RetrofitFactory.d(retrofitFactory8, null, AuthRequirement.ADD_SFID_HEADER_FOR_PERMANENT_USER, 1).b(LegacyWishlistApi.class);
                    objB8.getClass();
                    return (LegacyWishlistApi) objB8;
                case 103:
                    ApiDiModule apiDiModule9 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory9 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule9.getClass();
                    retrofitFactory9.getClass();
                    Object objB9 = retrofitFactory9.c(BffApi.USER_API, AuthRequirement.FORCE_ADD_SFID_AND_SLAS_HEADERS_FOR_TWIST_LOCALE).b(WishlistApi.class);
                    objB9.getClass();
                    return (WishlistApi) objB9;
                case 104:
                    return new FormRepositoryImpl((FormDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.T1.get());
                case 105:
                    return new FormSystemDataSource(new FormFilePathProvider(), (FileReader) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R1.get());
                case 106:
                    CoroutineDispatchers coroutineDispatchers = (CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get();
                    coroutineDispatchers.getClass();
                    return new FileReader(JsonKt.a(new u5(2)), coroutineDispatchers.getF43530b());
                case 107:
                    return new CertificateRepositoryImpl((CertificateApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.W1.get(), (CertificateDetailUrlApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.X1.get(), (AuthTokenRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.U.get(), (TwistTokenDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R.get(), (WebkitCookieManagerProxy) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G0.get(), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get());
                case 108:
                    ApiDiModule apiDiModule10 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory10 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule10.getClass();
                    retrofitFactory10.getClass();
                    Object objB10 = RetrofitFactory.a(retrofitFactory10, BffApi.USER_API, AuthRequirement.ADD_SFID_HEADER_FOR_PERMANENT_USER, 2).b(CertificateApi.class);
                    objB10.getClass();
                    return (CertificateApi) objB10;
                case 109:
                    ApiDiModule apiDiModule11 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory11 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule11.getClass();
                    retrofitFactory11.getClass();
                    Object objB11 = retrofitFactory11.c(BffApi.USER_API, AuthRequirement.ADD_SFID_AND_SLAS_HEADERS_ONLY_FOR_TWIST_LOGGED_IN_USER).b(CertificateDetailUrlApi.class);
                    objB11.getClass();
                    return (CertificateDetailUrlApi) objB11;
                case 110:
                    return new PlaceRepositoryImpl((PlaceApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.a2.get());
                case 111:
                    ApiDiModule apiDiModule12 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory12 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule12.getClass();
                    retrofitFactory12.getClass();
                    Object objB12 = retrofitFactory12.b(BffApi.PUBLICATION_API).b(PlaceApi.class);
                    objB12.getClass();
                    return (PlaceApi) objB12;
                case 112:
                    return new AddressRepositoryImpl((AddressLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d2.get(), new AddressRemoteDataSource((AddressesApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.e1.get(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), new AddressHttpErrorMapper()), (ProfileLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F.get());
                case 113:
                    Context context7 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context7);
                    return new AddressLocalDataSource(context7, (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get());
                case 114:
                    daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.getClass();
                    return new CivilityRepositoryImpl(new CivilityDataSource(new FormFilePathProvider(), (FileReader) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R1.get()));
                case 115:
                    Context context8 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context8);
                    return new AirportRepositoryImpl(context8, (AirportLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.i2.get(), (AirportApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.j2.get());
                case 116:
                    return new AirportLocalDataSource();
                case 117:
                    ApiDiModule apiDiModule13 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory13 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule13.getClass();
                    retrofitFactory13.getClass();
                    Retrofit.Builder builder = new Retrofit.Builder();
                    retrofitFactory13.m.f46983a.getClass();
                    builder.b("https://iot.louisvuitton.com/");
                    builder.f79461a = RetrofitFactoryKt.a(retrofitFactory13.f46985b, null, retrofitFactory13.l, retrofitFactory13.g, retrofitFactory13.f46989h, retrofitFactory13.n, retrofitFactory13.o, retrofitFactory13.p, true, false, AuthRequirement.TRIGGER_REFRESH_TOKEN, new gt0(4), new gt0(5), new gt0(6), new gt0(7));
                    builder.a(retrofitFactory13.f46986c.a());
                    Object objB13 = builder.d().b(AirportApi.class);
                    objB13.getClass();
                    return (AirportApi) objB13;
                case 118:
                    return new AudioGuideRepositoryImpl((AudioGuideApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.m2.get(), (AudioGuideLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n2.get());
                case 119:
                    ApiDiModule apiDiModule14 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory14 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule14.getClass();
                    retrofitFactory14.getClass();
                    Object objB14 = RetrofitFactory.a(retrofitFactory14, BffApi.PUBLICATION_API, null, 6).b(AudioGuideApi.class);
                    objB14.getClass();
                    return (AudioGuideApi) objB14;
                case 120:
                    return new AudioGuideLocalDataSource((DataStore) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D.get(), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get(), (CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get());
                case 121:
                    return new WebViewCookieCleanerImpl((CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get(), (CookieManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.q2.get());
                case 122:
                    CookieManager cookieManager = CookieManager.getInstance();
                    cookieManager.getClass();
                    return cookieManager;
                case 123:
                    return new OrderRepositoryImpl((OrdersRemoteDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u2.get(), (OrdersLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B.get(), (InvoiceRemoteDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.x2.get());
                case 124:
                    return new OrdersRemoteDataSource((OrdersApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.s2.get(), (OrderExchangeApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.t2.get(), (CartApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.w1.get(), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get());
                case 125:
                    ApiDiModule apiDiModule15 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory15 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule15.getClass();
                    retrofitFactory15.getClass();
                    Object objB15 = retrofitFactory15.c(BffApi.USER_API, AuthRequirement.ADD_SFID_AND_SLAS_HEADERS_ONLY_FOR_TWIST_LOGGED_IN_USER).b(OrdersApi.class);
                    objB15.getClass();
                    return (OrdersApi) objB15;
                case 126:
                    ApiDiModule apiDiModule16 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory16 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule16.getClass();
                    retrofitFactory16.getClass();
                    Object objB16 = RetrofitFactory.a(retrofitFactory16, BffApi.CATALOG_API, null, 6).b(OrderExchangeApi.class);
                    objB16.getClass();
                    return (OrderExchangeApi) objB16;
                case CertificateBody.profileType /* 127 */:
                    return new InvoiceRemoteDataSource((CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get(), (OrdersApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.s2.get(), (OrdersLegacyApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v2.get(), (FileStorageProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.w2.get());
                case 128:
                    ApiDiModule apiDiModule17 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory17 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule17.getClass();
                    retrofitFactory17.getClass();
                    Object objB17 = retrofitFactory17.c(BffApi.USER_API, AuthRequirement.ADD_SFID_AND_SLAS_HEADERS_ONLY_FOR_TWIST_LOGGED_IN_USER).b(OrdersLegacyApi.class);
                    objB17.getClass();
                    return (OrdersLegacyApi) objB17;
                case 129:
                    Context context9 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context9);
                    return new FileStorageProviderImpl(context9, (CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get());
                case 130:
                    daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.getClass();
                    SharedPreferences sharedPreferences2 = (SharedPreferences) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G.get();
                    Context context10 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context10);
                    return new PassRepositoryImpl(new PassLocalDataSource(sharedPreferences2, context10, (CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get()), new PassNetworkDataSource((PassApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.A2.get(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), new MultipartParser((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get())), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get());
                case 131:
                    ApiDiModule apiDiModule18 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory18 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule18.getClass();
                    retrofitFactory18.getClass();
                    Object objB18 = retrofitFactory18.c(BffApi.USER_API, AuthRequirement.ADD_SFID_AND_SLAS_HEADERS_ONLY_FOR_TWIST_LOGGED_IN_USER).b(PassApi.class);
                    objB18.getClass();
                    return (PassApi) objB18;
                case 132:
                    Logger logger2 = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
                    EnvironmentProvider environmentProvider = (EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b0.get();
                    Context context11 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context11);
                    return new DynamicYieldRepositoryImpl(logger2, environmentProvider, context11, new DynamicYieldDataSource((DataStore) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D.get()));
                case 133:
                    return new LightUpRepositoryImpl();
                case 134:
                    return new WatchRepositoryImpl((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (WatchApiV2) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.H2.get(), (BffWatchApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.I2.get(), (SendEmailApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.J2.get(), (ProductApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.I1.get(), (SharedPreferences) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.K2.get(), (ConnectedObjectLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.H.get(), (AuthTokenRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.U.get());
                case 135:
                    ApiDiModule apiDiModule19 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory19 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule19.getClass();
                    retrofitFactory19.getClass();
                    retrofitFactory19.m.f46983a.getClass();
                    Object objB19 = RetrofitFactory.f(retrofitFactory19, "https://iot.louisvuitton.com/", null, false, AuthRequirement.TRIGGER_REFRESH_TOKEN, 46).b(WatchApiV2.class);
                    objB19.getClass();
                    return (WatchApiV2) objB19;
                case 136:
                    ApiDiModule apiDiModule20 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory20 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule20.getClass();
                    retrofitFactory20.getClass();
                    Object objB20 = retrofitFactory20.c(BffApi.USER_API, AuthRequirement.ADD_SFID_HEADER_FOR_PERMANENT_USER).b(BffWatchApi.class);
                    objB20.getClass();
                    return (BffWatchApi) objB20;
                case 137:
                    ApiDiModule apiDiModule21 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory21 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule21.getClass();
                    retrofitFactory21.getClass();
                    Object objB21 = retrofitFactory21.b(BffApi.USER_API).b(SendEmailApi.class);
                    objB21.getClass();
                    return (SendEmailApi) objB21;
                case 138:
                    Context context12 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context12);
                    return SharedPreferencesFactory.a(context12, "connected_objects_config_sp");
                case 139:
                    return new CatalogRepositoryImpl((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), new GetProductDataSource((ProductApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.I1.get(), (ExclusiveApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.N2.get()), new GetProductAvailabilitiesATGDataSource((ProductApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.I1.get()), new GetProductAvailabilitiesTwistDataSource((ProductApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.I1.get()), (VideoApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.O2.get(), (CatalogApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.P2.get(), (ProductApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.I1.get(), (ExclusiveApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.N2.get(), (CatalogLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.Q2.get(), (WishlistLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.C.get(), (ATGSessionManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.a1.get(), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get(), (CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get());
                case 140:
                    ApiDiModule apiDiModule22 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory22 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule22.getClass();
                    retrofitFactory22.getClass();
                    Object objB22 = retrofitFactory22.c(BffApi.CATALOG_API, AuthRequirement.ADD_SFID_HEADER_FOR_PERMANENT_USER).b(ExclusiveApi.class);
                    objB22.getClass();
                    return (ExclusiveApi) objB22;
                case 141:
                    ApiDiModule apiDiModule23 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory23 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule23.getClass();
                    retrofitFactory23.getClass();
                    Object objB23 = retrofitFactory23.b(BffApi.PUBLICATION_API).b(VideoApi.class);
                    objB23.getClass();
                    return (VideoApi) objB23;
                case 142:
                    ApiDiModule apiDiModule24 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory24 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule24.getClass();
                    retrofitFactory24.getClass();
                    Object objB24 = RetrofitFactory.d(retrofitFactory24, BffApi.CATALOG_API, null, 2).b(CatalogApi.class);
                    objB24.getClass();
                    return (CatalogApi) objB24;
                case 143:
                    return new CatalogLocalDataSource();
                case 144:
                    return new BackInStockRepositoryImpl((CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get(), (BackInStockApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.T2.get());
                case 145:
                    ApiDiModule apiDiModule25 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory25 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule25.getClass();
                    retrofitFactory25.getClass();
                    Object objB25 = RetrofitFactory.a(retrofitFactory25, BffApi.USER_API, AuthRequirement.FORCE_ADD_SFID_AND_SLAS_HEADERS_FOR_TWIST_LOCALE, 2).b(BackInStockApi.class);
                    objB25.getClass();
                    return (BackInStockApi) objB25;
                case 146:
                    return new BeautyRepositoryImpl((BeautyLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.W2.get());
                case 147:
                    return new BeautyLocalDataSource();
                case 148:
                    return new BeautyConsentRepositoryImpl();
                case 149:
                    return new BookingRepositoryImpl((BookingApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b3.get(), new BookingHttpErrorMapper((Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get()), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get());
                case 150:
                    ApiDiModule apiDiModule26 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory26 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule26.getClass();
                    retrofitFactory26.getClass();
                    Object objB26 = RetrofitFactory.a(retrofitFactory26, BffApi.USER_API, AuthRequirement.FORCE_ADD_SFID_AND_SLAS_HEADERS_FOR_TWIST_LOCALE, 2).b(BookingApi.class);
                    objB26.getClass();
                    return (BookingApi) objB26;
                case 151:
                    return new RepairRepositoryImpl((RepairApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.e3.get(), (RepairLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.I.get());
                case 152:
                    ApiDiModule apiDiModule27 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory27 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule27.getClass();
                    retrofitFactory27.getClass();
                    Object objB27 = RetrofitFactory.f(retrofitFactory27, retrofitFactory27.l.e(), retrofitFactory27.f46992k, false, null, 60).b(RepairApi.class);
                    objB27.getClass();
                    return (RepairApi) objB27;
                case 153:
                    return new StoreModeRepositoryImpl(DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G), (StoreModeWelcomeApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.h3.get(), (StoreModeApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.i3.get(), (StoreModeCatalogApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.j3.get());
                case 154:
                    ApiDiModule apiDiModule28 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory28 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule28.getClass();
                    retrofitFactory28.getClass();
                    Object objB28 = RetrofitFactory.a(retrofitFactory28, BffApi.USER_API, null, 6).b(StoreModeWelcomeApi.class);
                    objB28.getClass();
                    return (StoreModeWelcomeApi) objB28;
                case 155:
                    ApiDiModule apiDiModule29 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory29 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule29.getClass();
                    retrofitFactory29.getClass();
                    Object objB29 = RetrofitFactory.a(retrofitFactory29, BffApi.PUBLICATION_API, null, 6).b(StoreModeApi.class);
                    objB29.getClass();
                    return (StoreModeApi) objB29;
                case 156:
                    ApiDiModule apiDiModule30 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory30 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule30.getClass();
                    retrofitFactory30.getClass();
                    Object objB30 = RetrofitFactory.a(retrofitFactory30, BffApi.CATALOG_API, null, 6).b(StoreModeCatalogApi.class);
                    objB30.getClass();
                    return (StoreModeCatalogApi) objB30;
                case 157:
                    return new ConnectedObjectsConfigRepositoryImpl(new ConnectedObjectsConfigRemoteDataSource((ConfigurationApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.c0.get()), new ConnectedObjectsConfigLocalDataSource((CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get(), (SharedPreferences) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.K2.get(), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get()));
                case 158:
                    return new EarphoneRepositoryImpl();
                case 159:
                    return new TrunkSpeakerRepositoryImpl();
                case 160:
                    return new HorizonSpeakerRepositoryImpl();
                case 161:
                    return new WatchV3RepositoryImpl();
                case 162:
                    return new AppointmentRepositoryImpl((AppointmentApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.w3.get(), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get());
                case 163:
                    ApiDiModule apiDiModule31 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory31 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule31.getClass();
                    retrofitFactory31.getClass();
                    Object objB31 = retrofitFactory31.c(BffApi.USER_API, AuthRequirement.ADD_SFID_HEADER_FOR_PERMANENT_USER).b(AppointmentApi.class);
                    objB31.getClass();
                    return (AppointmentApi) objB31;
                case 164:
                    return new AppLinkRepositoryImpl((AppLinkApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.z3.get(), new AppLinkLocalDataSource((CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get(), DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.A3), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get()), (DispatchMemCacheDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.V.get());
                case 165:
                    ApiDiModule apiDiModule32 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory32 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule32.getClass();
                    retrofitFactory32.getClass();
                    Object objB32 = RetrofitFactory.a(retrofitFactory32, BffApi.PUBLICATION_API, null, 6).b(AppLinkApi.class);
                    objB32.getClass();
                    return (AppLinkApi) objB32;
                case 166:
                    Context context13 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a;
                    Preconditions.c(context13);
                    return SharedPreferencesFactory.a(context13, "configs_version_sp");
                case 167:
                    return new DispatchAreaListRepositoryImpl((DispatchMemCacheDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.V.get(), new DispatchRemoteDataSource((DispatchApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D3.get()));
                case 168:
                    ApiDiModule apiDiModule33 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory33 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule33.getClass();
                    retrofitFactory33.getClass();
                    Object objB33 = RetrofitFactory.a(retrofitFactory33, BffApi.PUBLICATION_API, null, 4).b(DispatchApi.class);
                    objB33.getClass();
                    return (DispatchApi) objB33;
                case 169:
                    return new ConfigsVersionRepositoryImpl(new ConfigsVersionRemoteDataSource((ConfigurationApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.c0.get()), new ConfigsVersionLocalDataSource((CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get(), DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.A3), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get()));
                case 170:
                    return new LanguageManagerImpl();
                case 171:
                    return new AvatarRepositoryImpl((AvatarRemoteDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.L3.get(), (AvatarLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.L.get(), new SavedUserAvatarLocalDataSource(DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get()), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), (CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get());
                case 172:
                    return new AvatarRemoteDataSource((AvatarApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.K3.get());
                case 173:
                    ApiDiModule apiDiModule34 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory34 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule34.getClass();
                    retrofitFactory34.getClass();
                    Object objB34 = retrofitFactory34.b(BffApi.PUBLICATION_API).b(AvatarApi.class);
                    objB34.getClass();
                    return (AvatarApi) objB34;
                case 174:
                    return new SearchHistoryRepositoryImpl(DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get(), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get());
                case 175:
                    return new LastViewedProductRepositoryImpl(DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get());
                case 176:
                    return new CareServicesBffRepositoryImpl((CareServicesBffRemoteDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.U3.get());
                case 177:
                    return new CareServicesBffRemoteDataSourceImpl((CareServicesBffApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.S3.get());
                case 178:
                    ApiDiModule apiDiModule35 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory35 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule35.getClass();
                    retrofitFactory35.getClass();
                    Object objB35 = RetrofitFactory.a(retrofitFactory35, BffApi.USER_API, AuthRequirement.ADD_SFID_HEADER_FOR_PERMANENT_USER, 2).b(CareServicesBffApi.class);
                    objB35.getClass();
                    return (CareServicesBffApi) objB35;
                case 179:
                    return new CareServicesRepositoryImpl((CareServicesApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.X3.get(), (AuthTokenRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.U.get(), (EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b0.get());
                case Sink.ORIENTATION_180 /* 180 */:
                    ApiDiModule apiDiModule36 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory36 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule36.getClass();
                    retrofitFactory36.getClass();
                    Object objB36 = RetrofitFactory.a(retrofitFactory36, null, AuthRequirement.TRIGGER_REFRESH_TOKEN, 3).b(CareServicesApi.class);
                    objB36.getClass();
                    return (CareServicesApi) objB36;
                case 181:
                    return new ExclusiveSalesRepositoryImpl((ExclusiveSalesApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.a4.get());
                case 182:
                    ApiDiModule apiDiModule37 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory37 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule37.getClass();
                    retrofitFactory37.getClass();
                    Object objB37 = retrofitFactory37.c(BffApi.USER_API, AuthRequirement.ADD_SFID_AND_SLAS_HEADERS_ONLY_FOR_TWIST_LOGGED_IN_USER).b(ExclusiveSalesApi.class);
                    objB37.getClass();
                    return (ExclusiveSalesApi) objB37;
                case 183:
                    return new CalendarRepositoryImpl(DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get());
                case 184:
                    return new VideoRepositoryImpl((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (VideoApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.O2.get());
                case com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor.MODULE_VERSION /* 185 */:
                    return new FeedRepositoryImpl((FeedApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.h4.get());
                case 186:
                    ApiDiModule apiDiModule38 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory38 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule38.getClass();
                    retrofitFactory38.getClass();
                    Object objB38 = retrofitFactory38.b(BffApi.PUBLICATION_API).b(FeedApi.class);
                    objB38.getClass();
                    return (FeedApi) objB38;
                case 187:
                    return new OnlineStoreAppointmentRepositoryImpl((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (AppointmentApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.w3.get());
                case 188:
                    return new HotContentRepositoryImpl((HotContentLocalDataSource) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.M.get());
                case 189:
                    return new FilterCommand();
                case 190:
                    return new AvailabilityInStoreRepositoryImpl((StoreApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.p4.get());
                case 191:
                    ApiDiModule apiDiModule39 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory39 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule39.getClass();
                    retrofitFactory39.getClass();
                    Object objB39 = RetrofitFactory.a(retrofitFactory39, BffApi.CATALOG_API, null, 6).b(StoreApi.class);
                    objB39.getClass();
                    return (StoreApi) objB39;
                case 192:
                    return new Model3dAssetRepositoryImpl((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (Model3dApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.s4.get());
                case 193:
                    ApiDiModule apiDiModule40 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory40 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule40.getClass();
                    retrofitFactory40.getClass();
                    Object objB40 = RetrofitFactory.d(retrofitFactory40, BffApi.USER_API, null, 2).b(Model3dApi.class);
                    objB40.getClass();
                    return (Model3dApi) objB40;
                case 194:
                    return new LandingPageRepositoryImpl((LandingPageApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v4.get());
                case 195:
                    ApiDiModule apiDiModule41 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory41 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule41.getClass();
                    retrofitFactory41.getClass();
                    Object objB41 = retrofitFactory41.b(BffApi.CATALOG_API).b(LandingPageApi.class);
                    objB41.getClass();
                    return (LandingPageApi) objB41;
                case 196:
                    return new ImmersiveArticleRepositoryImpl((ImmersiveArticleApi) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y4.get());
                case 197:
                    ApiDiModule apiDiModule42 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.d;
                    RetrofitFactory retrofitFactory42 = (RetrofitFactory) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R0.get();
                    apiDiModule42.getClass();
                    retrofitFactory42.getClass();
                    Object objB42 = retrofitFactory42.b(BffApi.PUBLICATION_API).b(ImmersiveArticleApi.class);
                    objB42.getClass();
                    return (ImmersiveArticleApi) objB42;
                case 198:
                    return new PermissionsRepositoryImpl();
                case 199:
                    return new SdkVersionProviderImpl();
                default:
                    throw new AssertionError(i2);
            }
        }
    }

    public DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl(ApiDiModule apiDiModule, ApplicationContextModule applicationContextModule, AuthenticationDiModule authenticationDiModule, ControllerDiModule controllerDiModule, CoroutineDispatchersModule coroutineDispatchersModule, SerializationModule serializationModule) {
        this.f50496a = applicationContextModule;
        this.f50497b = coroutineDispatchersModule;
        this.f50498c = serializationModule;
        this.d = apiDiModule;
        this.f50499e = authenticationDiModule;
        this.f50500f = controllerDiModule;
        SwitchingProvider switchingProvider = new SwitchingProvider(this, 1);
        this.f50501h = switchingProvider;
        this.f50502i = DoubleCheck.b(switchingProvider);
        this.f50503j = DoubleCheck.b(new SwitchingProvider(this, 0));
        this.f50504k = DoubleCheck.b(new SwitchingProvider(this, 2));
        this.l = DoubleCheck.b(new SwitchingProvider(this, 3));
        this.m = DoubleCheck.b(new SwitchingProvider(this, 4));
        this.n = DoubleCheck.b(new SwitchingProvider(this, 7));
        this.o = DoubleCheck.b(new SwitchingProvider(this, 9));
        SwitchingProvider switchingProvider2 = new SwitchingProvider(this, 8);
        this.p = switchingProvider2;
        this.q = DoubleCheck.b(switchingProvider2);
        this.r = DoubleCheck.b(new SwitchingProvider(this, 6));
        SwitchingProvider switchingProvider3 = new SwitchingProvider(this, 10);
        this.s = switchingProvider3;
        this.t = DoubleCheck.b(switchingProvider3);
        this.u = DoubleCheck.b(new SwitchingProvider(this, 5));
        this.v = DoubleCheck.b(new SwitchingProvider(this, 12));
        this.w = DoubleCheck.b(new SwitchingProvider(this, 11));
        SwitchingProvider switchingProvider4 = new SwitchingProvider(this, 13);
        this.x = switchingProvider4;
        this.y = DoubleCheck.b(switchingProvider4);
        SwitchingProvider switchingProvider5 = new SwitchingProvider(this, 14);
        this.z = switchingProvider5;
        this.A = DoubleCheck.b(switchingProvider5);
        this.B = DoubleCheck.b(new SwitchingProvider(this, 17));
        this.C = DoubleCheck.b(new SwitchingProvider(this, 18));
        this.D = DoubleCheck.b(new SwitchingProvider(this, 20));
        this.E = DoubleCheck.b(new SwitchingProvider(this, 21));
        this.F = DoubleCheck.b(new SwitchingProvider(this, 19));
        this.G = DoubleCheck.b(new SwitchingProvider(this, 22));
        this.H = DoubleCheck.b(new SwitchingProvider(this, 23));
        this.I = DoubleCheck.b(new SwitchingProvider(this, 24));
        SwitchingProvider switchingProvider6 = new SwitchingProvider(this, 25);
        this.J = switchingProvider6;
        this.K = DoubleCheck.b(switchingProvider6);
        this.L = DoubleCheck.b(new SwitchingProvider(this, 26));
        this.M = DoubleCheck.b(new SwitchingProvider(this, 27));
        SwitchingProvider switchingProvider7 = new SwitchingProvider(this, 16);
        this.N = switchingProvider7;
        this.O = DoubleCheck.b(switchingProvider7);
        this.P = DoubleCheck.b(new SwitchingProvider(this, 28));
        SwitchingProvider switchingProvider8 = new SwitchingProvider(this, 30);
        this.Q = switchingProvider8;
        this.R = DoubleCheck.b(switchingProvider8);
        SwitchingProvider switchingProvider9 = new SwitchingProvider(this, 31);
        this.S = switchingProvider9;
        this.T = DoubleCheck.b(switchingProvider9);
        this.U = DoubleCheck.b(new SwitchingProvider(this, 29));
        this.V = DoubleCheck.b(new SwitchingProvider(this, 35));
        SwitchingProvider switchingProvider10 = new SwitchingProvider(this, 34);
        this.W = switchingProvider10;
        this.X = DoubleCheck.b(switchingProvider10);
        this.Y = DoubleCheck.b(new SwitchingProvider(this, 38));
        this.Z = DoubleCheck.b(new SwitchingProvider(this, 39));
        SwitchingProvider switchingProvider11 = new SwitchingProvider(this, 40);
        this.a0 = switchingProvider11;
        this.b0 = DoubleCheck.b(switchingProvider11);
        this.c0 = DoubleCheck.b(new SwitchingProvider(this, 37));
        SwitchingProvider switchingProvider12 = new SwitchingProvider(this, 36);
        this.d0 = switchingProvider12;
        this.e0 = DoubleCheck.b(switchingProvider12);
        SwitchingProvider switchingProvider13 = new SwitchingProvider(this, 41);
        this.f0 = switchingProvider13;
        this.g0 = DoubleCheck.b(switchingProvider13);
        SwitchingProvider switchingProvider14 = new SwitchingProvider(this, 33);
        this.h0 = switchingProvider14;
        this.i0 = DoubleCheck.b(switchingProvider14);
        this.j0 = DoubleCheck.b(new SwitchingProvider(this, 32));
        SwitchingProvider switchingProvider15 = new SwitchingProvider(this, 15);
        this.k0 = switchingProvider15;
        this.l0 = DoubleCheck.b(switchingProvider15);
        this.m0 = DoubleCheck.b(new SwitchingProvider(this, 43));
        this.n0 = SingleCheck.a(new SwitchingProvider(this, 42));
        SwitchingProvider switchingProvider16 = new SwitchingProvider(this, 46);
        this.o0 = switchingProvider16;
        this.p0 = DoubleCheck.b(switchingProvider16);
        SwitchingProvider switchingProvider17 = new SwitchingProvider(this, 45);
        this.q0 = switchingProvider17;
        this.r0 = DoubleCheck.b(switchingProvider17);
        SwitchingProvider switchingProvider18 = new SwitchingProvider(this, 47);
        this.s0 = switchingProvider18;
        this.t0 = DoubleCheck.b(switchingProvider18);
        SwitchingProvider switchingProvider19 = new SwitchingProvider(this, 48);
        this.u0 = switchingProvider19;
        this.v0 = DoubleCheck.b(switchingProvider19);
        SwitchingProvider switchingProvider20 = new SwitchingProvider(this, 49);
        this.w0 = switchingProvider20;
        this.x0 = DoubleCheck.b(switchingProvider20);
        SwitchingProvider switchingProvider21 = new SwitchingProvider(this, 44);
        this.y0 = switchingProvider21;
        this.z0 = DoubleCheck.b(switchingProvider21);
        SwitchingProvider switchingProvider22 = new SwitchingProvider(this, 50);
        this.A0 = switchingProvider22;
        this.B0 = DoubleCheck.b(switchingProvider22);
        this.C0 = DoubleCheck.b(new SwitchingProvider(this, 51));
        this.D0 = DoubleCheck.b(new SwitchingProvider(this, 52));
        this.E0 = DoubleCheck.b(new SwitchingProvider(this, 54));
        this.F0 = DoubleCheck.b(new SwitchingProvider(this, 59));
        this.G0 = DoubleCheck.b(new SwitchingProvider(this, 61));
        this.H0 = DoubleCheck.b(new SwitchingProvider(this, 60));
        this.I0 = DoubleCheck.b(new SwitchingProvider(this, 63));
        this.J0 = DoubleCheck.b(new SwitchingProvider(this, 64));
        SwitchingProvider switchingProvider23 = new SwitchingProvider(this, 62);
        this.K0 = switchingProvider23;
        this.L0 = DoubleCheck.b(switchingProvider23);
        SwitchingProvider switchingProvider24 = new SwitchingProvider(this, 66);
        this.M0 = switchingProvider24;
        this.N0 = DoubleCheck.b(switchingProvider24);
        SwitchingProvider switchingProvider25 = new SwitchingProvider(this, 67);
        this.O0 = switchingProvider25;
        this.P0 = DoubleCheck.b(switchingProvider25);
        this.Q0 = DoubleCheck.b(new SwitchingProvider(this, 65));
        this.R0 = DoubleCheck.b(new SwitchingProvider(this, 58));
        this.S0 = DoubleCheck.b(new SwitchingProvider(this, 57));
        this.T0 = DoubleCheck.b(new SwitchingProvider(this, 68));
        this.U0 = DoubleCheck.b(new SwitchingProvider(this, 56));
        SwitchingProvider switchingProvider26 = new SwitchingProvider(this, 70);
        this.V0 = switchingProvider26;
        this.W0 = DoubleCheck.b(switchingProvider26);
        this.X0 = DoubleCheck.b(new SwitchingProvider(this, 71));
        SwitchingProvider switchingProvider27 = new SwitchingProvider(this, 73);
        this.Y0 = switchingProvider27;
        this.Z0 = DoubleCheck.b(switchingProvider27);
        this.a1 = DoubleCheck.b(new SwitchingProvider(this, 72));
        this.b1 = DoubleCheck.b(new SwitchingProvider(this, 69));
        this.c1 = DoubleCheck.b(new SwitchingProvider(this, 75));
        this.d1 = DoubleCheck.b(new SwitchingProvider(this, 74));
        this.e1 = DoubleCheck.b(new SwitchingProvider(this, 76));
        this.f1 = DoubleCheck.b(new SwitchingProvider(this, 77));
        SwitchingProvider switchingProvider28 = new SwitchingProvider(this, 55);
        this.g1 = switchingProvider28;
        this.h1 = DoubleCheck.b(switchingProvider28);
        SwitchingProvider switchingProvider29 = new SwitchingProvider(this, 78);
        this.i1 = switchingProvider29;
        this.j1 = DoubleCheck.b(switchingProvider29);
        this.k1 = DoubleCheck.b(new SwitchingProvider(this, 53));
        this.l1 = DoubleCheck.b(new SwitchingProvider(this, 80));
        SwitchingProvider switchingProvider30 = new SwitchingProvider(this, 81);
        this.m1 = switchingProvider30;
        this.n1 = DoubleCheck.b(switchingProvider30);
        SwitchingProvider switchingProvider31 = new SwitchingProvider(this, 79);
        this.o1 = switchingProvider31;
        this.p1 = DoubleCheck.b(switchingProvider31);
        this.q1 = DoubleCheck.b(new SwitchingProvider(this, 84));
        SwitchingProvider switchingProvider32 = new SwitchingProvider(this, 85);
        this.r1 = switchingProvider32;
        this.s1 = DoubleCheck.b(switchingProvider32);
        SwitchingProvider switchingProvider33 = new SwitchingProvider(this, 86);
        this.t1 = switchingProvider33;
        this.u1 = DoubleCheck.b(switchingProvider33);
        this.v1 = DoubleCheck.b(new SwitchingProvider(this, 83));
        this.w1 = DoubleCheck.b(new SwitchingProvider(this, 88));
        this.x1 = DoubleCheck.b(new SwitchingProvider(this, 89));
        this.y1 = DoubleCheck.b(new SwitchingProvider(this, 90));
        SwitchingProvider switchingProvider34 = new SwitchingProvider(this, 87);
        this.z1 = switchingProvider34;
        this.A1 = DoubleCheck.b(switchingProvider34);
        this.B1 = DoubleCheck.b(new SwitchingProvider(this, 82));
        this.C1 = DoubleCheck.b(new SwitchingProvider(this, 91));
        this.D1 = DoubleCheck.b(new SwitchingProvider(this, 92));
        this.E1 = DoubleCheck.b(new SwitchingProvider(this, 94));
        this.F1 = DoubleCheck.b(new SwitchingProvider(this, 96));
        this.G1 = DoubleCheck.b(new SwitchingProvider(this, 95));
        this.H1 = DoubleCheck.b(new SwitchingProvider(this, 93));
        this.I1 = DoubleCheck.b(new SwitchingProvider(this, 98));
        this.J1 = DoubleCheck.b(new SwitchingProvider(this, 99));
        SwitchingProvider switchingProvider35 = new SwitchingProvider(this, 97);
        this.K1 = switchingProvider35;
        this.L1 = DoubleCheck.b(switchingProvider35);
        this.M1 = DoubleCheck.b(new SwitchingProvider(this, 102));
        this.N1 = DoubleCheck.b(new SwitchingProvider(this, 101));
        this.O1 = DoubleCheck.b(new SwitchingProvider(this, 103));
        SwitchingProvider switchingProvider36 = new SwitchingProvider(this, 100);
        this.P1 = switchingProvider36;
        this.Q1 = DoubleCheck.b(switchingProvider36);
        this.R1 = DoubleCheck.b(new SwitchingProvider(this, 106));
        SwitchingProvider switchingProvider37 = new SwitchingProvider(this, 105);
        this.S1 = switchingProvider37;
        this.T1 = DoubleCheck.b(switchingProvider37);
        SwitchingProvider switchingProvider38 = new SwitchingProvider(this, 104);
        this.U1 = switchingProvider38;
        this.V1 = DoubleCheck.b(switchingProvider38);
        this.W1 = DoubleCheck.b(new SwitchingProvider(this, 108));
        this.X1 = DoubleCheck.b(new SwitchingProvider(this, 109));
        SwitchingProvider switchingProvider39 = new SwitchingProvider(this, 107);
        this.Y1 = switchingProvider39;
        this.Z1 = DoubleCheck.b(switchingProvider39);
        this.a2 = DoubleCheck.b(new SwitchingProvider(this, 111));
        SwitchingProvider switchingProvider40 = new SwitchingProvider(this, 110);
        this.b2 = switchingProvider40;
        this.c2 = DoubleCheck.b(switchingProvider40);
        this.d2 = DoubleCheck.b(new SwitchingProvider(this, 113));
        SwitchingProvider switchingProvider41 = new SwitchingProvider(this, 112);
        this.e2 = switchingProvider41;
        this.f2 = DoubleCheck.b(switchingProvider41);
        SwitchingProvider switchingProvider42 = new SwitchingProvider(this, 114);
        this.g2 = switchingProvider42;
        this.h2 = DoubleCheck.b(switchingProvider42);
        this.i2 = DoubleCheck.b(new SwitchingProvider(this, 116));
        this.j2 = DoubleCheck.b(new SwitchingProvider(this, 117));
        SwitchingProvider switchingProvider43 = new SwitchingProvider(this, 115);
        this.k2 = switchingProvider43;
        this.l2 = DoubleCheck.b(switchingProvider43);
        this.m2 = DoubleCheck.b(new SwitchingProvider(this, 119));
        this.n2 = DoubleCheck.b(new SwitchingProvider(this, 120));
        SwitchingProvider switchingProvider44 = new SwitchingProvider(this, 118);
        this.o2 = switchingProvider44;
        this.p2 = DoubleCheck.b(switchingProvider44);
        this.q2 = DoubleCheck.b(new SwitchingProvider(this, 122));
        this.r2 = DoubleCheck.b(new SwitchingProvider(this, 121));
        this.s2 = DoubleCheck.b(new SwitchingProvider(this, 125));
        this.t2 = DoubleCheck.b(new SwitchingProvider(this, 126));
        this.u2 = DoubleCheck.b(new SwitchingProvider(this, 124));
        this.v2 = DoubleCheck.b(new SwitchingProvider(this, 128));
        this.w2 = DoubleCheck.b(new SwitchingProvider(this, 129));
        this.x2 = DoubleCheck.b(new SwitchingProvider(this, CertificateBody.profileType));
        SwitchingProvider switchingProvider45 = new SwitchingProvider(this, 123);
        this.y2 = switchingProvider45;
        this.z2 = DoubleCheck.b(switchingProvider45);
        this.A2 = DoubleCheck.b(new SwitchingProvider(this, 131));
        SwitchingProvider switchingProvider46 = new SwitchingProvider(this, 130);
        this.B2 = switchingProvider46;
        this.C2 = DoubleCheck.b(switchingProvider46);
        SwitchingProvider switchingProvider47 = new SwitchingProvider(this, 132);
        this.D2 = switchingProvider47;
        this.E2 = DoubleCheck.b(switchingProvider47);
        SwitchingProvider switchingProvider48 = new SwitchingProvider(this, 133);
        this.F2 = switchingProvider48;
        this.G2 = DoubleCheck.b(switchingProvider48);
        this.H2 = DoubleCheck.b(new SwitchingProvider(this, 135));
        this.I2 = DoubleCheck.b(new SwitchingProvider(this, 136));
        this.J2 = DoubleCheck.b(new SwitchingProvider(this, 137));
        this.K2 = DoubleCheck.b(new SwitchingProvider(this, 138));
        SwitchingProvider switchingProvider49 = new SwitchingProvider(this, 134);
        this.L2 = switchingProvider49;
        this.M2 = DoubleCheck.b(switchingProvider49);
        this.N2 = DoubleCheck.b(new SwitchingProvider(this, 140));
        this.O2 = DoubleCheck.b(new SwitchingProvider(this, 141));
        this.P2 = DoubleCheck.b(new SwitchingProvider(this, 142));
        this.Q2 = DoubleCheck.b(new SwitchingProvider(this, 143));
        SwitchingProvider switchingProvider50 = new SwitchingProvider(this, 139);
        this.R2 = switchingProvider50;
        this.S2 = DoubleCheck.b(switchingProvider50);
        this.T2 = DoubleCheck.b(new SwitchingProvider(this, 145));
        SwitchingProvider switchingProvider51 = new SwitchingProvider(this, 144);
        this.U2 = switchingProvider51;
        this.V2 = DoubleCheck.b(switchingProvider51);
        this.W2 = DoubleCheck.b(new SwitchingProvider(this, 147));
        SwitchingProvider switchingProvider52 = new SwitchingProvider(this, 146);
        this.X2 = switchingProvider52;
        this.Y2 = DoubleCheck.b(switchingProvider52);
        SwitchingProvider switchingProvider53 = new SwitchingProvider(this, 148);
        this.Z2 = switchingProvider53;
        this.a3 = DoubleCheck.b(switchingProvider53);
        this.b3 = DoubleCheck.b(new SwitchingProvider(this, 150));
        SwitchingProvider switchingProvider54 = new SwitchingProvider(this, 149);
        this.c3 = switchingProvider54;
        this.d3 = DoubleCheck.b(switchingProvider54);
        this.e3 = DoubleCheck.b(new SwitchingProvider(this, 152));
        SwitchingProvider switchingProvider55 = new SwitchingProvider(this, 151);
        this.f3 = switchingProvider55;
        this.g3 = DoubleCheck.b(switchingProvider55);
        this.h3 = DoubleCheck.b(new SwitchingProvider(this, 154));
        this.i3 = DoubleCheck.b(new SwitchingProvider(this, 155));
        this.j3 = DoubleCheck.b(new SwitchingProvider(this, 156));
        SwitchingProvider switchingProvider56 = new SwitchingProvider(this, 153);
        this.k3 = switchingProvider56;
        this.l3 = DoubleCheck.b(switchingProvider56);
        SwitchingProvider switchingProvider57 = new SwitchingProvider(this, 157);
        this.m3 = switchingProvider57;
        this.n3 = DoubleCheck.b(switchingProvider57);
        SwitchingProvider switchingProvider58 = new SwitchingProvider(this, 158);
        this.o3 = switchingProvider58;
        this.p3 = DoubleCheck.b(switchingProvider58);
        SwitchingProvider switchingProvider59 = new SwitchingProvider(this, 159);
        this.q3 = switchingProvider59;
        this.r3 = DoubleCheck.b(switchingProvider59);
        SwitchingProvider switchingProvider60 = new SwitchingProvider(this, 160);
        this.s3 = switchingProvider60;
        this.t3 = DoubleCheck.b(switchingProvider60);
        SwitchingProvider switchingProvider61 = new SwitchingProvider(this, 161);
        this.u3 = switchingProvider61;
        this.v3 = DoubleCheck.b(switchingProvider61);
        this.w3 = DoubleCheck.b(new SwitchingProvider(this, 163));
        SwitchingProvider switchingProvider62 = new SwitchingProvider(this, 162);
        this.x3 = switchingProvider62;
        this.y3 = DoubleCheck.b(switchingProvider62);
        this.z3 = DoubleCheck.b(new SwitchingProvider(this, 165));
        this.A3 = DoubleCheck.b(new SwitchingProvider(this, 166));
        SwitchingProvider switchingProvider63 = new SwitchingProvider(this, 164);
        this.B3 = switchingProvider63;
        this.C3 = DoubleCheck.b(switchingProvider63);
        this.D3 = DoubleCheck.b(new SwitchingProvider(this, 168));
        SwitchingProvider switchingProvider64 = new SwitchingProvider(this, 167);
        this.E3 = switchingProvider64;
        this.F3 = DoubleCheck.b(switchingProvider64);
        SwitchingProvider switchingProvider65 = new SwitchingProvider(this, 169);
        this.G3 = switchingProvider65;
        this.H3 = DoubleCheck.b(switchingProvider65);
        SwitchingProvider switchingProvider66 = new SwitchingProvider(this, 170);
        this.I3 = switchingProvider66;
        this.J3 = DoubleCheck.b(switchingProvider66);
        this.K3 = DoubleCheck.b(new SwitchingProvider(this, 173));
        this.L3 = DoubleCheck.b(new SwitchingProvider(this, 172));
        SwitchingProvider switchingProvider67 = new SwitchingProvider(this, 171);
        this.M3 = switchingProvider67;
        this.N3 = DoubleCheck.b(switchingProvider67);
        SwitchingProvider switchingProvider68 = new SwitchingProvider(this, 174);
        this.O3 = switchingProvider68;
        this.P3 = DoubleCheck.b(switchingProvider68);
        SwitchingProvider switchingProvider69 = new SwitchingProvider(this, 175);
        this.Q3 = switchingProvider69;
        this.R3 = DoubleCheck.b(switchingProvider69);
        this.S3 = DoubleCheck.b(new SwitchingProvider(this, 178));
        SwitchingProvider switchingProvider70 = new SwitchingProvider(this, 177);
        this.T3 = switchingProvider70;
        this.U3 = DoubleCheck.b(switchingProvider70);
        SwitchingProvider switchingProvider71 = new SwitchingProvider(this, 176);
        this.V3 = switchingProvider71;
        this.W3 = DoubleCheck.b(switchingProvider71);
        this.X3 = DoubleCheck.b(new SwitchingProvider(this, Sink.ORIENTATION_180));
        SwitchingProvider switchingProvider72 = new SwitchingProvider(this, 179);
        this.Y3 = switchingProvider72;
        this.Z3 = DoubleCheck.b(switchingProvider72);
        this.a4 = DoubleCheck.b(new SwitchingProvider(this, 182));
        SwitchingProvider switchingProvider73 = new SwitchingProvider(this, 181);
        this.b4 = switchingProvider73;
        this.c4 = DoubleCheck.b(switchingProvider73);
        SwitchingProvider switchingProvider74 = new SwitchingProvider(this, 183);
        this.d4 = switchingProvider74;
        this.e4 = DoubleCheck.b(switchingProvider74);
        SwitchingProvider switchingProvider75 = new SwitchingProvider(this, 184);
        this.f4 = switchingProvider75;
        this.g4 = DoubleCheck.b(switchingProvider75);
        this.h4 = DoubleCheck.b(new SwitchingProvider(this, 186));
        SwitchingProvider switchingProvider76 = new SwitchingProvider(this, com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor.MODULE_VERSION);
        this.i4 = switchingProvider76;
        this.j4 = DoubleCheck.b(switchingProvider76);
        SwitchingProvider switchingProvider77 = new SwitchingProvider(this, 187);
        this.k4 = switchingProvider77;
        this.l4 = DoubleCheck.b(switchingProvider77);
        SwitchingProvider switchingProvider78 = new SwitchingProvider(this, 188);
        this.m4 = switchingProvider78;
        this.n4 = DoubleCheck.b(switchingProvider78);
        this.o4 = DoubleCheck.b(new SwitchingProvider(this, 189));
        this.p4 = DoubleCheck.b(new SwitchingProvider(this, 191));
        SwitchingProvider switchingProvider79 = new SwitchingProvider(this, 190);
        this.q4 = switchingProvider79;
        this.r4 = DoubleCheck.b(switchingProvider79);
        this.s4 = DoubleCheck.b(new SwitchingProvider(this, 193));
        SwitchingProvider switchingProvider80 = new SwitchingProvider(this, 192);
        this.t4 = switchingProvider80;
        this.u4 = DoubleCheck.b(switchingProvider80);
        this.v4 = DoubleCheck.b(new SwitchingProvider(this, 195));
        SwitchingProvider switchingProvider81 = new SwitchingProvider(this, 194);
        this.w4 = switchingProvider81;
        this.x4 = DoubleCheck.b(switchingProvider81);
        this.y4 = DoubleCheck.b(new SwitchingProvider(this, 197));
        SwitchingProvider switchingProvider82 = new SwitchingProvider(this, 196);
        this.z4 = switchingProvider82;
        this.A4 = DoubleCheck.b(switchingProvider82);
        this.B4 = DoubleCheck.b(this.f0);
        SwitchingProvider switchingProvider83 = new SwitchingProvider(this, 198);
        this.C4 = switchingProvider83;
        this.D4 = DoubleCheck.b(switchingProvider83);
        this.E4 = DoubleCheck.b(new SwitchingProvider(this, 199));
        this.F4 = DoubleCheck.b(this.f0);
        SwitchingProvider switchingProvider84 = new SwitchingProvider(this, 200);
        this.G4 = switchingProvider84;
        this.H4 = DoubleCheck.b(switchingProvider84);
        this.I4 = DoubleCheck.b(new SwitchingProvider(this, 202));
        SwitchingProvider switchingProvider85 = new SwitchingProvider(this, 201);
        this.J4 = switchingProvider85;
        this.K4 = DoubleCheck.b(switchingProvider85);
        this.L4 = DoubleCheck.b(new SwitchingProvider(this, 204));
        SwitchingProvider switchingProvider86 = new SwitchingProvider(this, 203);
        this.M4 = switchingProvider86;
        this.N4 = DoubleCheck.b(switchingProvider86);
        SwitchingProvider switchingProvider87 = new SwitchingProvider(this, 205);
        this.O4 = switchingProvider87;
        this.P4 = DoubleCheck.b(switchingProvider87);
        this.Q4 = DoubleCheck.b(new SwitchingProvider(this, 207));
        SwitchingProvider switchingProvider88 = new SwitchingProvider(this, 206);
        this.R4 = switchingProvider88;
        this.S4 = DoubleCheck.b(switchingProvider88);
        this.T4 = DoubleCheck.b(new SwitchingProvider(this, 209));
        SwitchingProvider switchingProvider89 = new SwitchingProvider(this, 208);
        this.U4 = switchingProvider89;
        this.V4 = DoubleCheck.b(switchingProvider89);
        SwitchingProvider switchingProvider90 = new SwitchingProvider(this, 210);
        this.W4 = switchingProvider90;
        this.X4 = DoubleCheck.b(switchingProvider90);
        SwitchingProvider switchingProvider91 = new SwitchingProvider(this, Primes.SMALL_FACTOR_LIMIT);
        this.Y4 = switchingProvider91;
        this.Z4 = DoubleCheck.b(switchingProvider91);
        this.a5 = DoubleCheck.b(new SwitchingProvider(this, 213));
        this.b5 = DoubleCheck.b(new SwitchingProvider(this, 212));
        SwitchingProvider switchingProvider92 = new SwitchingProvider(this, 214);
        this.c5 = switchingProvider92;
        this.d5 = DoubleCheck.b(switchingProvider92);
        SwitchingProvider switchingProvider93 = new SwitchingProvider(this, 216);
        this.e5 = switchingProvider93;
        this.f5 = DoubleCheck.b(switchingProvider93);
        SwitchingProvider switchingProvider94 = new SwitchingProvider(this, 215);
        this.g5 = switchingProvider94;
        this.h5 = DoubleCheck.b(switchingProvider94);
        SwitchingProvider switchingProvider95 = new SwitchingProvider(this, 217);
        this.i5 = switchingProvider95;
        this.j5 = DoubleCheck.b(switchingProvider95);
        this.k5 = DoubleCheck.b(new SwitchingProvider(this, ModuleDescriptor.MODULE_VERSION));
        SwitchingProvider switchingProvider96 = new SwitchingProvider(this, 219);
        this.l5 = switchingProvider96;
        this.m5 = DoubleCheck.b(switchingProvider96);
        this.n5 = DoubleCheck.b(new SwitchingProvider(this, 221));
        SwitchingProvider switchingProvider97 = new SwitchingProvider(this, 220);
        this.o5 = switchingProvider97;
        this.p5 = DoubleCheck.b(switchingProvider97);
        this.q5 = DoubleCheck.b(new SwitchingProvider(this, BERTags.FLAGS));
        SwitchingProvider switchingProvider98 = new SwitchingProvider(this, 223);
        this.r5 = switchingProvider98;
        this.s5 = DoubleCheck.b(switchingProvider98);
        SwitchingProvider switchingProvider99 = new SwitchingProvider(this, 222);
        this.t5 = switchingProvider99;
        this.u5 = DoubleCheck.b(switchingProvider99);
        this.v5 = DoubleCheck.b(new SwitchingProvider(this, 225));
        SwitchingProvider switchingProvider100 = new SwitchingProvider(this, 226);
        this.w5 = switchingProvider100;
        this.x5 = DoubleCheck.b(switchingProvider100);
        this.y5 = DoubleCheck.b(new SwitchingProvider(this, 228));
        this.z5 = DoubleCheck.b(new SwitchingProvider(this, 229));
        SwitchingProvider switchingProvider101 = new SwitchingProvider(this, 227);
        this.A5 = switchingProvider101;
        this.B5 = DoubleCheck.b(switchingProvider101);
        this.C5 = DoubleCheck.b(new SwitchingProvider(this, 231));
        SwitchingProvider switchingProvider102 = new SwitchingProvider(this, 230);
        this.D5 = switchingProvider102;
        this.E5 = DoubleCheck.b(switchingProvider102);
        SwitchingProvider switchingProvider103 = new SwitchingProvider(this, 232);
        this.F5 = switchingProvider103;
        this.G5 = DoubleCheck.b(switchingProvider103);
        SwitchingProvider switchingProvider104 = new SwitchingProvider(this, 233);
        this.H5 = switchingProvider104;
        this.I5 = DoubleCheck.b(switchingProvider104);
    }

    public final GetConsentForCustomizationUseCase A() {
        return new GetConsentForCustomizationUseCase(F(), (ConsentRepository) this.p0.get());
    }

    public final GetProfileUseCase B() {
        return new GetProfileUseCase(F(), (AccountRepository) this.h1.get(), (LoginStateRepository) this.P.get(), D());
    }

    public final GetUserInAppDispatchOrNullUseCase C() {
        return new GetUserInAppDispatchOrNullUseCase((InAppDispatchRepository) this.X.get());
    }

    public final IsFeatureAvailableUseCase D() {
        GetUserInAppDispatchOrNullUseCase getUserInAppDispatchOrNullUseCaseC = C();
        Provider provider = this.e0;
        CachedAppConfigOrNullUseCase cachedAppConfigOrNullUseCase = new CachedAppConfigOrNullUseCase((AppConfigRepository) provider.get());
        AppConfigRepository appConfigRepository = (AppConfigRepository) provider.get();
        SharedPreferencesRepository sharedPreferencesRepository = (SharedPreferencesRepository) this.g0.get();
        Provider provider2 = this.y;
        return new IsFeatureAvailableUseCase(new DetermineFeatureStatusFromConfigsUseCase(getUserInAppDispatchOrNullUseCaseC, cachedAppConfigOrNullUseCase, appConfigRepository, sharedPreferencesRepository, (BuildConfigProvider) provider2.get()), (UserPreferencesRepository) this.K.get(), (BuildConfigProvider) provider2.get());
    }

    public final RequireCachedAppConfigUseCase E() {
        return new RequireCachedAppConfigUseCase((AppConfigRepository) this.e0.get());
    }

    public final RequireUserInAppDispatchUseCase F() {
        return new RequireUserInAppDispatchUseCase((InAppDispatchRepository) this.X.get());
    }

    public final UserSessionService G() {
        return new UserSessionService((CoroutineDispatchers) this.n.get(), (LocalCacheRepository) this.O.get(), (LoginStateRepository) this.P.get(), (AuthTokenRepository) this.U.get(), (TwistFeature) this.j0.get());
    }

    @Override // dagger.hilt.android.internal.managers.ServiceComponentManager.ServiceComponentBuilderEntryPoint
    public final ServiceComponentBuilder a() {
        final DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.g;
        return new LVApplication_HiltComponents$ServiceC.Builder(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl) { // from class: com.vuitton.android.presentation.DaggerLVApplication_HiltComponents_SingletonC$ServiceCBuilder

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl f50493a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public Service f50494b;

            {
                this.f50493a = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;
            }

            @Override // dagger.hilt.android.internal.builders.ServiceComponentBuilder
            public final ServiceComponentBuilder a(Service service) {
                service.getClass();
                this.f50494b = service;
                return this;
            }

            @Override // dagger.hilt.android.internal.builders.ServiceComponentBuilder
            public final ServiceComponent build() {
                Preconditions.a(Service.class, this.f50494b);
                final DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2 = this.f50493a;
                return new LVApplication_HiltComponents$ServiceC(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2) { // from class: com.vuitton.android.presentation.DaggerLVApplication_HiltComponents_SingletonC$ServiceCImpl

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl f50495a;

                    {
                        this.f50495a = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2;
                    }

                    @Override // com.vuitton.android.presentation.screen.maintenance.CheckMaintenanceStatusService_GeneratedInjector
                    public final void a(CheckMaintenanceStatusService checkMaintenanceStatusService) {
                        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3 = this.f50495a;
                        checkMaintenanceStatusService.f59191e = new AreConfigsInCacheUseCase(new RequireCachedConfigsVersionUseCase((ConfigsVersionRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.H3.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.E(), new RequireCachedConnectedObjectsConfigUseCase((ConnectedObjectsConfigRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.n3.get()));
                        checkMaintenanceStatusService.f59192f = new IsAppInMaintenanceUseCase((MaintenanceRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.p5.get());
                        checkMaintenanceStatusService.g = (CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.n.get();
                    }

                    @Override // com.vuitton.android.presentation.servicerecovery.RecoveryToolForService_GeneratedInjector
                    public final void b(RecoveryToolForService recoveryToolForService) {
                        recoveryToolForService.f65804e = (CoroutineDispatchers) this.f50495a.n.get();
                    }
                };
            }
        };
    }

    @Override // com.vuitton.android.presentation.tracking.GA4TrackerEntryPoint
    public final GA4Tracker b() {
        return new GA4Tracker(u());
    }

    @Override // com.vuitton.android.presentation.tracking.AppsFlyerTrackerEntryPoint
    public final AppsFlyerUiTracker c() {
        return new AppsFlyerUiTracker(v());
    }

    @Override // com.vuitton.android.presentation.di.CrashReporterEntryPoint
    public final CrashReporter d() {
        return (CrashReporter) this.t.get();
    }

    @Override // com.vuitton.android.presentation.screen.catalog.CatalogTrackerEntryPoint
    public final CatalogTracker e() {
        return new CatalogTracker(u());
    }

    @Override // com.vuitton.android.presentation.notification.NotificationBuilderEntryPoint
    public final NotificationBuilder f() {
        return new NotificationBuilder(z());
    }

    @Override // com.vuitton.android.presentation.screen.tracking.LegalConsentsTrackerEntryPoint
    public final LegalConsentsTracker g() {
        return new LegalConsentsTracker(u());
    }

    @Override // com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackerEntryPoint
    public final AICompanionTracker h() {
        return new AICompanionTracker(u());
    }

    @Override // com.vuitton.android.presentation.broadcast.ShareBroadcastReceiver_GeneratedInjector
    public final void i(ShareBroadcastReceiver shareBroadcastReceiver) {
        shareBroadcastReceiver.f50667c = u();
    }

    @Override // com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackerEntryPoint
    public final FeedTracker j() {
        return new FeedTracker(u());
    }

    @Override // dagger.hilt.android.flags.FragmentGetContextFix.FragmentGetContextFixEntryPoint
    public final Set k() {
        return ImmutableSet.v();
    }

    @Override // com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ContextualSizingTrackerEntryPoint
    public final ContextualSizingTracker l() {
        return new ContextualSizingTracker(u());
    }

    @Override // com.vuitton.android.presentation.screen.reinsurance.ReinsuranceTrackerEntryPoint
    public final ReinsuranceTracker m() {
        return new ReinsuranceTracker(u());
    }

    @Override // com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackerEntryPoint
    public final PdpTracker n() {
        return (PdpTracker) this.C0.get();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsTrackerEntryPoint
    public final ContactUsTracker o() {
        return new ContactUsTracker(u());
    }

    @Override // com.vuitton.android.presentation.LVApplication_GeneratedInjector
    public final void p(LVApplication lVApplication) {
        lVApplication.g = (Logger) this.f50503j.get();
        lVApplication.f50530h = (SecretsProvider) this.f50504k.get();
        lVApplication.f50531i = (RootDetector) this.l.get();
        lVApplication.f50532j = (CurrentActivityTracker) this.m.get();
        lVApplication.f50533k = (InAppBannerSupervisor) this.u.get();
        lVApplication.l = (LVTrunkDeviceManager) this.w.get();
        lVApplication.m = (BuildConfigProvider) this.y.get();
        lVApplication.n = new IsUiTestUseCase((AutomatedTestRepository) this.A.get());
        lVApplication.o = new SubscribeAppsFlyerDeepLinkUseCase((AppsFlyerRepository) this.l0.get());
        lVApplication.p = (EnvironmentProvider) this.b0.get();
        lVApplication.q = new HiltWorkerFactory(ImmutableMap.j(this.n0));
        lVApplication.r = G();
    }

    @Override // com.vuitton.android.presentation.screen.audioguide.AudioGuideTrackerEntryPoint
    public final AudioGuideTracker q() {
        return new AudioGuideTracker(u());
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTrackerEntryPoint
    public final ShadeFinderTracker r() {
        return new ShadeFinderTracker(u());
    }

    @Override // dagger.hilt.android.internal.managers.ActivityRetainedComponentManager.ActivityRetainedComponentBuilderEntryPoint
    public final ActivityRetainedComponentBuilder s() {
        final DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.g;
        return new LVApplication_HiltComponents$ActivityRetainedC.Builder(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl) { // from class: com.vuitton.android.presentation.DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCBuilder

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl f50475a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public SavedStateHandleHolder f50476b;

            {
                this.f50475a = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;
            }

            @Override // dagger.hilt.android.internal.builders.ActivityRetainedComponentBuilder
            public final ActivityRetainedComponentBuilder a(SavedStateHandleHolder savedStateHandleHolder) {
                this.f50476b = savedStateHandleHolder;
                return this;
            }

            @Override // dagger.hilt.android.internal.builders.ActivityRetainedComponentBuilder
            public final ActivityRetainedComponent build() {
                Preconditions.a(SavedStateHandleHolder.class, this.f50476b);
                final DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2 = this.f50475a;
                return new LVApplication_HiltComponents$ActivityRetainedC(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2) { // from class: com.vuitton.android.presentation.DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl f50477a;

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl f50478b = this;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final Provider f50479c = DoubleCheck.b(new SwitchingProvider());

                    public static final class SwitchingProvider<T> implements Provider<T> {
                        @Override // javax.inject.Provider
                        public final Object get() {
                            return new RetainedLifecycleImpl();
                        }
                    }

                    {
                        this.f50477a = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2;
                    }

                    @Override // dagger.hilt.android.internal.managers.ActivityComponentManager.ActivityComponentBuilderEntryPoint
                    public final ActivityComponentBuilder a() {
                        return new LVApplication_HiltComponents$ActivityC.Builder(this.f50477a, this.f50478b) { // from class: com.vuitton.android.presentation.DaggerLVApplication_HiltComponents_SingletonC$ActivityCBuilder

                            /* JADX INFO: renamed from: a, reason: collision with root package name */
                            public final DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl f50469a;

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public final DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl f50470b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public Activity f50471c;

                            {
                                this.f50469a = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;
                                this.f50470b = daggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;
                            }

                            @Override // dagger.hilt.android.internal.builders.ActivityComponentBuilder
                            public final ActivityComponentBuilder a(Activity activity) {
                                activity.getClass();
                                this.f50471c = activity;
                                return this;
                            }

                            @Override // dagger.hilt.android.internal.builders.ActivityComponentBuilder
                            public final ActivityComponent build() {
                                Preconditions.a(Activity.class, this.f50471c);
                                return new DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl(this.f50469a, this.f50470b);
                            }
                        };
                    }

                    @Override // dagger.hilt.android.internal.managers.ActivityRetainedComponentManager.ActivityRetainedLifecycleEntryPoint
                    public final ActivityRetainedLifecycle b() {
                        return (ActivityRetainedLifecycle) this.f50479c.get();
                    }
                };
            }
        };
    }

    public final AnalyticsTracker u() {
        Provider provider = this.z0;
        return new AnalyticsTracker(new SetUserPropertyUseCase(DoubleCheck.a(provider)), new SendHitUseCase(F(), DoubleCheck.a(provider)));
    }

    public final AppsFlyerTrackerImpl v() {
        Context context = this.f50496a.f68523a;
        Preconditions.c(context);
        return new AppsFlyerTrackerImpl(context);
    }

    public final AudioPlayerControllerImpl w() {
        Context context = this.f50496a.f68523a;
        Preconditions.c(context);
        this.f50500f.getClass();
        return new AudioPlayerControllerImpl(context);
    }

    public final AuthApi x() {
        String strB;
        ApplicationContextModule applicationContextModule = this.f50496a;
        Context context = applicationContextModule.f68523a;
        Preconditions.c(context);
        CookieJar cookieJar = (CookieJar) this.H0.get();
        EnvironmentProvider environmentProvider = (EnvironmentProvider) this.b0.get();
        AppConfigRepository appConfigRepository = (AppConfigRepository) this.e0.get();
        InAppDispatchRepository inAppDispatchRepository = (InAppDispatchRepository) this.X.get();
        BuildConfigProvider buildConfigProvider = (BuildConfigProvider) this.y.get();
        KotlinxSerializationConverterFactory kotlinxSerializationConverterFactory = (KotlinxSerializationConverterFactory) this.F0.get();
        DeviceIdLocalDataSource deviceIdLocalDataSource = (DeviceIdLocalDataSource) this.Z.get();
        Preconditions.c(applicationContextModule.f68523a);
        EmptySet emptySet = EmptySet.f71770b;
        Preconditions.c(emptySet);
        ImmutableSet immutableSetS = ImmutableSet.s(emptySet);
        this.f50499e.getClass();
        cookieJar.getClass();
        environmentProvider.getClass();
        appConfigRepository.getClass();
        inAppDispatchRepository.getClass();
        buildConfigProvider.getClass();
        kotlinxSerializationConverterFactory.getClass();
        deviceIdLocalDataSource.getClass();
        immutableSetS.getClass();
        BffApi bffApi = BffApi.USER_API;
        int i2 = bffApi == null ? -1 : AuthenticationDiModule.WhenMappings.f44284a[bffApi.ordinal()];
        if (i2 == -1) {
            strB = "https://fakeurl.com/";
        } else if (i2 == 1) {
            strB = environmentProvider.b();
        } else if (i2 == 2) {
            strB = environmentProvider.o();
        } else {
            if (i2 != 3) {
                v40.g();
                return null;
            }
            strB = environmentProvider.e();
        }
        Object objB = RetrofitFactoryKt.b(context, kotlinxSerializationConverterFactory, strB, appConfigRepository, inAppDispatchRepository, deviceIdLocalDataSource, environmentProvider, buildConfigProvider, immutableSetS, cookieJar, true, true, AuthRequirement.NONE, new gt0(0), new gt0(1), new gt0(2), new gt0(3)).b(AuthApi.class);
        objB.getClass();
        return (AuthApi) objB;
    }

    public final ContactUsDelegateImpl y() {
        IsFeatureAvailableUseCase isFeatureAvailableUseCaseD = D();
        RequireCachedAppConfigUseCase requireCachedAppConfigUseCaseE = E();
        Provider provider = this.p0;
        ChatConsentDelegateImpl chatConsentDelegateImpl = new ChatConsentDelegateImpl(new HasChatConsentUseCase((ConsentRepository) provider.get()), D(), G(), new UpdateChatConsentUseCase((ConsentRepository) provider.get()), B(), new ChatTrackerUseCase((ChatTracker) this.s1.get()), F());
        Provider provider2 = this.v1;
        return new ContactUsDelegateImpl(isFeatureAvailableUseCaseD, requireCachedAppConfigUseCaseE, chatConsentDelegateImpl, new StreamChatEventUseCase((ChatManager) provider2.get()), new IsChatEnabledUseCase((ChatManager) provider2.get()), u(), (LVEventSender) this.v.get());
    }

    public final GetAccessibilityValueUseCase z() {
        return new GetAccessibilityValueUseCase((AccessibilityPreferencesRepository) this.B0.get());
    }
}

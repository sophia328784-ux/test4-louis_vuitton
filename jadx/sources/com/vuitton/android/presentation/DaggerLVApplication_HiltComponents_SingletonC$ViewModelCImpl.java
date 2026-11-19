package com.vuitton.android.presentation;

import android.app.Application;
import androidx.credentials.CredentialManager;
import androidx.lifecycle.SavedStateHandle;
import com.google.common.collect.ImmutableMap;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.data.dto.profile.KisaConsentsParserImpl;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.provider.auth.CookieCleaner;
import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.android.domain.provider.sdk.SdkVersionProvider;
import com.vuitton.android.domain.repository.AICompanionRepository;
import com.vuitton.android.domain.repository.ATGSessionRepository;
import com.vuitton.android.domain.repository.AccessibilityPreferencesRepository;
import com.vuitton.android.domain.repository.AccountRepository;
import com.vuitton.android.domain.repository.AddressRepository;
import com.vuitton.android.domain.repository.AirportRepository;
import com.vuitton.android.domain.repository.AnalyticsWrapperRepository;
import com.vuitton.android.domain.repository.AppConfigRepository;
import com.vuitton.android.domain.repository.AppInitializationRepository;
import com.vuitton.android.domain.repository.AppLinkRepository;
import com.vuitton.android.domain.repository.AppVersionRepository;
import com.vuitton.android.domain.repository.AppointmentRepository;
import com.vuitton.android.domain.repository.AppsFlyerRepository;
import com.vuitton.android.domain.repository.ArLocationRepository;
import com.vuitton.android.domain.repository.AudioGuideRepository;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.android.domain.repository.AutomatedTestRepository;
import com.vuitton.android.domain.repository.AvailabilityInStoreRepository;
import com.vuitton.android.domain.repository.AvatarRepository;
import com.vuitton.android.domain.repository.BackInStockRepository;
import com.vuitton.android.domain.repository.BeautyConsentRepository;
import com.vuitton.android.domain.repository.BeautyRepository;
import com.vuitton.android.domain.repository.BookingRepository;
import com.vuitton.android.domain.repository.BotProtectionRepository;
import com.vuitton.android.domain.repository.CalendarRepository;
import com.vuitton.android.domain.repository.CareServicesBffRepository;
import com.vuitton.android.domain.repository.CareServicesRepository;
import com.vuitton.android.domain.repository.CartRepository;
import com.vuitton.android.domain.repository.CatalogRepository;
import com.vuitton.android.domain.repository.CertificateRepository;
import com.vuitton.android.domain.repository.ConfigsVersionRepository;
import com.vuitton.android.domain.repository.ConnectedObjectsConfigRepository;
import com.vuitton.android.domain.repository.ConsentRepository;
import com.vuitton.android.domain.repository.DeepLinkCacheRepository;
import com.vuitton.android.domain.repository.DeviceIdRepository;
import com.vuitton.android.domain.repository.DispatchAreaListRepository;
import com.vuitton.android.domain.repository.DynamicYieldRepository;
import com.vuitton.android.domain.repository.EarphoneRepository;
import com.vuitton.android.domain.repository.ExclusiveSalesRepository;
import com.vuitton.android.domain.repository.FeedRepository;
import com.vuitton.android.domain.repository.HorizonSpeakerRepository;
import com.vuitton.android.domain.repository.HotContentRepository;
import com.vuitton.android.domain.repository.ImmersiveArticleRepository;
import com.vuitton.android.domain.repository.InAppDispatchRepository;
import com.vuitton.android.domain.repository.InboxRepository;
import com.vuitton.android.domain.repository.LandingPageRepository;
import com.vuitton.android.domain.repository.LastViewedProductRepository;
import com.vuitton.android.domain.repository.LegalConsentRepository;
import com.vuitton.android.domain.repository.LightUpRepository;
import com.vuitton.android.domain.repository.LoggerRepository;
import com.vuitton.android.domain.repository.LoginStateRepository;
import com.vuitton.android.domain.repository.MaintenanceRepository;
import com.vuitton.android.domain.repository.Model3dAssetRepository;
import com.vuitton.android.domain.repository.NotificationsPreferencesRepository;
import com.vuitton.android.domain.repository.OnlineStoreAppointmentRepository;
import com.vuitton.android.domain.repository.OpenAppTimestampRepository;
import com.vuitton.android.domain.repository.OrderRepository;
import com.vuitton.android.domain.repository.PassRepository;
import com.vuitton.android.domain.repository.PermissionsRepository;
import com.vuitton.android.domain.repository.PersonalSelectionsRepository;
import com.vuitton.android.domain.repository.PhoneLocaleRepository;
import com.vuitton.android.domain.repository.PlaceRepository;
import com.vuitton.android.domain.repository.PortalRepository;
import com.vuitton.android.domain.repository.PrivacyRelatedToolRepository;
import com.vuitton.android.domain.repository.ProductRepository;
import com.vuitton.android.domain.repository.RecommendedSourceRepository;
import com.vuitton.android.domain.repository.RepairRepository;
import com.vuitton.android.domain.repository.SalesforceAuthRepository;
import com.vuitton.android.domain.repository.SearchHistoryRepository;
import com.vuitton.android.domain.repository.SearchRepository;
import com.vuitton.android.domain.repository.SpotlightRepository;
import com.vuitton.android.domain.repository.StoreModeRepository;
import com.vuitton.android.domain.repository.StoreRepository;
import com.vuitton.android.domain.repository.StoryRepository;
import com.vuitton.android.domain.repository.TravelRepository;
import com.vuitton.android.domain.repository.TrunkSpeakerRepository;
import com.vuitton.android.domain.repository.TwistAuthRepository;
import com.vuitton.android.domain.repository.UserPreferencesRepository;
import com.vuitton.android.domain.repository.VideoRepository;
import com.vuitton.android.domain.repository.WatchRepository;
import com.vuitton.android.domain.repository.WatchV3Repository;
import com.vuitton.android.domain.repository.WishlistRepository;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.service.localization.LanguageManager;
import com.vuitton.android.domain.usecase.account.CheckEligibilityForPassUseCase;
import com.vuitton.android.domain.usecase.account.GetAccountStatusUseCase;
import com.vuitton.android.domain.usecase.account.GetCachedAccessTokenUseCase;
import com.vuitton.android.domain.usecase.account.GetCachedUserIdUseCase;
import com.vuitton.android.domain.usecase.account.GetContactIdUseCase;
import com.vuitton.android.domain.usecase.account.GetLocaleCountryListUseCase;
import com.vuitton.android.domain.usecase.account.GetPassUseCase;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.account.GetUserIdentifierUseCase;
import com.vuitton.android.domain.usecase.account.GetUserWorldwideIdUseCase;
import com.vuitton.android.domain.usecase.account.RefreshFacadeUserSessionUseCase;
import com.vuitton.android.domain.usecase.account.ResetLoginDetailsUseCase;
import com.vuitton.android.domain.usecase.account.UpdateContactIdUseCase;
import com.vuitton.android.domain.usecase.account.accessibility.GetAccessibilityPreferencesUseCase;
import com.vuitton.android.domain.usecase.account.accessibility.GetAllAccessibilityValuesUseCase;
import com.vuitton.android.domain.usecase.account.accessibility.IsAccessibilitySystemContrastEnabledUseCase;
import com.vuitton.android.domain.usecase.account.accessibility.SaveAccessibilityPreferencesUseCase;
import com.vuitton.android.domain.usecase.account.address.AddAddressUseCase;
import com.vuitton.android.domain.usecase.account.address.DeleteAddressUseCase;
import com.vuitton.android.domain.usecase.account.address.EditAddressUseCase;
import com.vuitton.android.domain.usecase.account.address.GetAddressAutocompleteUseCase;
import com.vuitton.android.domain.usecase.account.address.GetAddressDetailsUseCase;
import com.vuitton.android.domain.usecase.account.address.GetAddressListUseCase;
import com.vuitton.android.domain.usecase.account.address.GetCNCityListUseCase;
import com.vuitton.android.domain.usecase.account.address.GetCNCountyListUseCase;
import com.vuitton.android.domain.usecase.account.address.GetPostalCodeAutocompleteUseCase;
import com.vuitton.android.domain.usecase.account.consent.GetUserConsentsUseCase;
import com.vuitton.android.domain.usecase.account.consent.PatchUserConsentsUseCase;
import com.vuitton.android.domain.usecase.account.notifications.GetContactabilityUseCase;
import com.vuitton.android.domain.usecase.account.notifications.GetNotificationsPreferencesUseCase;
import com.vuitton.android.domain.usecase.account.notifications.SaveNotificationsPreferencesUseCase;
import com.vuitton.android.domain.usecase.account.order.ClearOrdersCacheUseCase;
import com.vuitton.android.domain.usecase.account.order.ConfirmOrderReturnUseCase;
import com.vuitton.android.domain.usecase.account.order.GetExchangeVariationsUseCase;
import com.vuitton.android.domain.usecase.account.order.GetInvoiceUseCase;
import com.vuitton.android.domain.usecase.account.order.GetOngoingOrdersUseCase;
import com.vuitton.android.domain.usecase.account.order.GetOrderReturnReasonsUseCase;
import com.vuitton.android.domain.usecase.account.order.GetOrdersHistoryWithMostExpensiveProductUseCase;
import com.vuitton.android.domain.usecase.account.order.GetOrdersUseCase;
import com.vuitton.android.domain.usecase.account.order.SetupExchangeUseCase;
import com.vuitton.android.domain.usecase.account.order.SubmitExchangeUseCase;
import com.vuitton.android.domain.usecase.account.profile.DeleteAccountUseCase;
import com.vuitton.android.domain.usecase.account.profile.ListenProfileUseCase;
import com.vuitton.android.domain.usecase.account.profile.UpdatePasswordUseCase;
import com.vuitton.android.domain.usecase.account.profile.UpdateProfileInfoUseCase;
import com.vuitton.android.domain.usecase.accountactivation.AccountActivationInitiateUseCase;
import com.vuitton.android.domain.usecase.accountactivation.AccountActivationValidateUseCase;
import com.vuitton.android.domain.usecase.aicompanion.DeleteChatSessionFromHistoryUseCase;
import com.vuitton.android.domain.usecase.aicompanion.GetChatHistoryListUseCase;
import com.vuitton.android.domain.usecase.aicompanion.GetChatSessionByIdUseCase;
import com.vuitton.android.domain.usecase.aicompanion.HasAICompanionVideoBeenDisplayedUseCase;
import com.vuitton.android.domain.usecase.aicompanion.HasAITooltipBeenDisplayedUseCase;
import com.vuitton.android.domain.usecase.aicompanion.PostChatMessageUseCase;
import com.vuitton.android.domain.usecase.aicompanion.UpdateAICompanionVideoVisibilityUseCase;
import com.vuitton.android.domain.usecase.aicompanion.UpdateAITooltipVisibilityUseCase;
import com.vuitton.android.domain.usecase.analytics.AreAnalyticsInitializedUseCase;
import com.vuitton.android.domain.usecase.analytics.DisableAnalyticsUseCase;
import com.vuitton.android.domain.usecase.analytics.GetDeviceIdUseCase;
import com.vuitton.android.domain.usecase.analytics.InitAnalyticsUseCase;
import com.vuitton.android.domain.usecase.analytics.SendAbTestAnalyticsUseCase;
import com.vuitton.android.domain.usecase.analytics.SendHitUseCase;
import com.vuitton.android.domain.usecase.analytics.tools.InitializeDynatraceUseCase;
import com.vuitton.android.domain.usecase.analytics.tools.InitializeNotificationsManagerUseCase;
import com.vuitton.android.domain.usecase.analytics.tools.InitializePrivacyRelatedToolsUseCase;
import com.vuitton.android.domain.usecase.analytics.tools.InitializeTingyunUseCase;
import com.vuitton.android.domain.usecase.analytics.tools.appsflyer.ListenAppsFlyerDeeplinkUseCase;
import com.vuitton.android.domain.usecase.analytics.tools.appsflyer.SetAppsFlyerCustomerIdUseCase;
import com.vuitton.android.domain.usecase.analytics.tools.appsflyer.StartAppsFlyerUseCase;
import com.vuitton.android.domain.usecase.analytics.tools.appsflyer.StopAppsFlyerUseCase;
import com.vuitton.android.domain.usecase.analytics.tools.appsflyer.UnsetAppsFlyerCustomerIdUseCase;
import com.vuitton.android.domain.usecase.app.InitializeAppUseCase;
import com.vuitton.android.domain.usecase.app.ResetAppDataUseCase;
import com.vuitton.android.domain.usecase.app.monitoring.EndOpenAppMonitoringUseCase;
import com.vuitton.android.domain.usecase.app.monitoring.StartOpenAppMonitoringUseCase;
import com.vuitton.android.domain.usecase.applink.CheckAppLinkExcludedUseCase;
import com.vuitton.android.domain.usecase.applink.ClearContributionLinkToLaunchUseCase;
import com.vuitton.android.domain.usecase.applink.FetchAppLinkExclusionsUseCase;
import com.vuitton.android.domain.usecase.applink.GetContributionLinkFromAppLinkUseCase;
import com.vuitton.android.domain.usecase.applink.GetContributionLinkToLaunchUseCase;
import com.vuitton.android.domain.usecase.applink.SaveContributionLinkToLaunchUseCase;
import com.vuitton.android.domain.usecase.applink.UpdateLocaleUseCase;
import com.vuitton.android.domain.usecase.appointment.ConfirmAppointmentUseCase;
import com.vuitton.android.domain.usecase.appointment.GetAppointmentReasonListUseCase;
import com.vuitton.android.domain.usecase.appointment.GetStoreAvailabilityListUseCase;
import com.vuitton.android.domain.usecase.appointment.GetStoreTimeSlotListUseCase;
import com.vuitton.android.domain.usecase.appointment.ModifyAppointmentUseCase;
import com.vuitton.android.domain.usecase.appointment.PrebookAppointmentUseCase;
import com.vuitton.android.domain.usecase.audioguide.ClearAccessDataUseCase;
import com.vuitton.android.domain.usecase.audioguide.ClearCachedTracksUseCase;
import com.vuitton.android.domain.usecase.audioguide.GetAccessDataUseCase;
import com.vuitton.android.domain.usecase.audioguide.GetAudioGuideUseCase;
import com.vuitton.android.domain.usecase.audioguide.GetCompletedTracksUseCase;
import com.vuitton.android.domain.usecase.audioguide.GetTrackDetailUseCase;
import com.vuitton.android.domain.usecase.audioguide.SaveAccessDataUseCase;
import com.vuitton.android.domain.usecase.audioguide.SaveCompletedTrackUseCase;
import com.vuitton.android.domain.usecase.audioplayer.AddMediaItemUseCase;
import com.vuitton.android.domain.usecase.audioplayer.DestroyMediaControllerUseCase;
import com.vuitton.android.domain.usecase.audioplayer.GetCurrentPositionUseCase;
import com.vuitton.android.domain.usecase.audioplayer.PauseMediaUseCase;
import com.vuitton.android.domain.usecase.audioplayer.PlayMediaUseCase;
import com.vuitton.android.domain.usecase.audioplayer.ResumeMediaUseCase;
import com.vuitton.android.domain.usecase.audioplayer.SeekToPositionUseCase;
import com.vuitton.android.domain.usecase.audioplayer.SetMediaControllerCallbackUseCase;
import com.vuitton.android.domain.usecase.audioplayer.SetMediaSpeedUseCase;
import com.vuitton.android.domain.usecase.audioplayer.SetPlaylistUseCase;
import com.vuitton.android.domain.usecase.audioplayer.StopMediaUseCase;
import com.vuitton.android.domain.usecase.authentication.AuthenticateAtgCodeExchangeUseCase;
import com.vuitton.android.domain.usecase.authentication.CreateATGSessionUseCase;
import com.vuitton.android.domain.usecase.authentication.FinaliseSalesforceAuthenticationUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.AuthenticateCodeExchangeUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.AuthenticateGuestUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.AuthenticationAvailabilityUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.ClearWebViewCookiesUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.ForgetPasswordInitiateUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.ForgetPasswordValidateUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.GetAuthTokenUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.GetSfidTokenOrNullUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.GetSlasTokenOrNullUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.GetSotTokenForTwistUserOrNullUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.LoginUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.LogoutUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.NativeLoginUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.RefreshAuthFromCheckoutUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.RegisterInitiateUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.RegisterUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.RegisterValidateUseCase;
import com.vuitton.android.domain.usecase.authentication.social.SocialLoginUseCase;
import com.vuitton.android.domain.usecase.authentication.social.SocialRegisterUseCase;
import com.vuitton.android.domain.usecase.automatedtest.ApplyAutomatedTestConfigUseCase;
import com.vuitton.android.domain.usecase.automatedtest.ApplySavedSecurityCookieUseCase;
import com.vuitton.android.domain.usecase.automatedtest.SaveSecurityCookieUseCase;
import com.vuitton.android.domain.usecase.automatedtest.SetUiTestModeUseCase;
import com.vuitton.android.domain.usecase.avatar.GetAllAvatarsUseCase;
import com.vuitton.android.domain.usecase.avatar.GetUserAvatarUseCase;
import com.vuitton.android.domain.usecase.avatar.PreloadAvatarsCacheUseCase;
import com.vuitton.android.domain.usecase.avatar.SaveUserAvatarUseCase;
import com.vuitton.android.domain.usecase.booking.AddPreBookUseCase;
import com.vuitton.android.domain.usecase.booking.ConfirmPreBookUseCase;
import com.vuitton.android.domain.usecase.booking.DeleteAllPrebooksUseCase;
import com.vuitton.android.domain.usecase.booking.DeleteBookingUseCase;
import com.vuitton.android.domain.usecase.booking.DeletePrebookUseCase;
import com.vuitton.android.domain.usecase.booking.GetBookingFormUseCase;
import com.vuitton.android.domain.usecase.booking.GetBookingMegatrioUseCase;
import com.vuitton.android.domain.usecase.booking.GetBookingPassUseCase;
import com.vuitton.android.domain.usecase.booking.GetBookingsUseCase;
import com.vuitton.android.domain.usecase.booking.GetConfirmedBookingsUseCase;
import com.vuitton.android.domain.usecase.booking.GetPreBookSummaryUseCase;
import com.vuitton.android.domain.usecase.booking.PostBookingFormUpdateUseCase;
import com.vuitton.android.domain.usecase.booking.UpdateBookingUseCase;
import com.vuitton.android.domain.usecase.booking.UpdatePreBookUseCase;
import com.vuitton.android.domain.usecase.botprotection.InitializeBotProtectionUseCase;
import com.vuitton.android.domain.usecase.calendar.GetCalendarEventsUseCase;
import com.vuitton.android.domain.usecase.calendar.RemoveCalendarEventUseCase;
import com.vuitton.android.domain.usecase.calendar.UpdateCalendarEventsUseCase;
import com.vuitton.android.domain.usecase.careservices.AcceptCareServiceBffUseCase;
import com.vuitton.android.domain.usecase.careservices.CancelCareServiceBffUseCase;
import com.vuitton.android.domain.usecase.careservices.ConfirmCareServiceAddressBffUseCase;
import com.vuitton.android.domain.usecase.careservices.CreateCareServiceBffUseCase;
import com.vuitton.android.domain.usecase.careservices.CreateCareServiceUseCase;
import com.vuitton.android.domain.usecase.careservices.GetCareServiceByIdUseCase;
import com.vuitton.android.domain.usecase.careservices.GetCareServiceDetailBffUseCase;
import com.vuitton.android.domain.usecase.careservices.GetCareServiceListBffUseCase;
import com.vuitton.android.domain.usecase.careservices.GetCareServiceListUseCase;
import com.vuitton.android.domain.usecase.careservices.GetRepairCancellationReasonUseCase;
import com.vuitton.android.domain.usecase.careservices.UpdateCareServiceAddressBffUseCase;
import com.vuitton.android.domain.usecase.careservices.UpdateCareServiceAppointmentBffUseCase;
import com.vuitton.android.domain.usecase.careservices.UpdateCareServiceUseCase;
import com.vuitton.android.domain.usecase.cart.AddGiftMessageUseCase;
import com.vuitton.android.domain.usecase.cart.AddProductListToCartUseCase;
import com.vuitton.android.domain.usecase.cart.AddProductToCartUseCase;
import com.vuitton.android.domain.usecase.cart.ChooseSamplesUseCase;
import com.vuitton.android.domain.usecase.cart.GetCartContributionUseCase;
import com.vuitton.android.domain.usecase.cart.GetCartFullUseCase;
import com.vuitton.android.domain.usecase.cart.GetCartSizeUseCase;
import com.vuitton.android.domain.usecase.cart.GetCheckoutUrlUseCase;
import com.vuitton.android.domain.usecase.cart.GetConfirmationDetailsUseCase;
import com.vuitton.android.domain.usecase.cart.PutPrepareOrderUseCase;
import com.vuitton.android.domain.usecase.cart.RemoveCartItemUseCase;
import com.vuitton.android.domain.usecase.cart.ResetCartContainerUseCase;
import com.vuitton.android.domain.usecase.cart.SendCheckoutFeedbackUseCase;
import com.vuitton.android.domain.usecase.cart.UpdateCartItemQuantityUseCase;
import com.vuitton.android.domain.usecase.cart.UpdateShoppingBagUseCase;
import com.vuitton.android.domain.usecase.catalog.GetCatalogStoreModeUseCase;
import com.vuitton.android.domain.usecase.catalog.GetCatalogUseCase;
import com.vuitton.android.domain.usecase.catalog.GetThematicPlpThemesUseCase;
import com.vuitton.android.domain.usecase.certificate.AddCertificateChinaConsentUseCase;
import com.vuitton.android.domain.usecase.certificate.AddCertificateUseCase;
import com.vuitton.android.domain.usecase.certificate.GetCertificateDetailUrlUseCase;
import com.vuitton.android.domain.usecase.certificate.GetCertificateListUseCase;
import com.vuitton.android.domain.usecase.certificate.TransferCertificateUseCase;
import com.vuitton.android.domain.usecase.certificate.UnlockCertificateUseCase;
import com.vuitton.android.domain.usecase.config.AreCachedConfigsUpToDateUseCase;
import com.vuitton.android.domain.usecase.config.AreConfigsInCacheUseCase;
import com.vuitton.android.domain.usecase.config.CachedAppConfigOrNullUseCase;
import com.vuitton.android.domain.usecase.config.ClearAllConfigUseCase;
import com.vuitton.android.domain.usecase.config.GetConfigsVersionUseCase;
import com.vuitton.android.domain.usecase.config.GetDynamicYieldCampaignUseCase;
import com.vuitton.android.domain.usecase.config.GetDynamicYieldPreferredServerUseCase;
import com.vuitton.android.domain.usecase.config.GetECommerceStatusUseCase;
import com.vuitton.android.domain.usecase.config.GetLanguageTagOfFacadeMyLVApiUrlUseCase;
import com.vuitton.android.domain.usecase.config.GetNativeCartCommercialModalContentUseCase;
import com.vuitton.android.domain.usecase.config.GetNativeCartCommercialModalTitleUseCase;
import com.vuitton.android.domain.usecase.config.GetNativeCartCommercialTextUseCase;
import com.vuitton.android.domain.usecase.config.HandleAppUpdateUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.OnAppUpdatedUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedConfigsVersionUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedConnectedObjectsConfigUseCase;
import com.vuitton.android.domain.usecase.config.ShouldUpdateAppUseCase;
import com.vuitton.android.domain.usecase.config.ShouldUpdateOsUseCase;
import com.vuitton.android.domain.usecase.config.SyncConfigsWithRevisionsUseCase;
import com.vuitton.android.domain.usecase.connectivity.GetConnectedObjectListUseCase;
import com.vuitton.android.domain.usecase.connectivity.GetFaqCategoryListUseCase;
import com.vuitton.android.domain.usecase.connectivity.GetFaqItemListUseCase;
import com.vuitton.android.domain.usecase.connectivity.earphone.GetEarphoneSkuListUseCase;
import com.vuitton.android.domain.usecase.connectivity.earphone.GetEarphoneTutorialUseCase;
import com.vuitton.android.domain.usecase.connectivity.earphone.GetEarphoneVideoUseCase;
import com.vuitton.android.domain.usecase.connectivity.horizon.GetHorizonSpeakerSkuListUseCase;
import com.vuitton.android.domain.usecase.connectivity.horizon.GetHorizonSpeakerTutorialUseCase;
import com.vuitton.android.domain.usecase.connectivity.horizon.GetHorizonSpeakerVideoUseCase;
import com.vuitton.android.domain.usecase.connectivity.lightup.DeleteLightUpProductUseCase;
import com.vuitton.android.domain.usecase.connectivity.lightup.GetKeepAllFaqUseCase;
import com.vuitton.android.domain.usecase.connectivity.lightup.GetLightUpObjectsUseCase;
import com.vuitton.android.domain.usecase.connectivity.lightup.GetLightUpVideoUseCase;
import com.vuitton.android.domain.usecase.connectivity.lightup.GetSneakerFaqUseCase;
import com.vuitton.android.domain.usecase.connectivity.lightup.InsertLightUpProductUseCase;
import com.vuitton.android.domain.usecase.connectivity.lightup.UpdateLightUpProductUseCase;
import com.vuitton.android.domain.usecase.connectivity.trunkspeaker.GetTrunkSpeakerFaqUseCase;
import com.vuitton.android.domain.usecase.connectivity.trunkspeaker.GetTrunkSpeakerSkuListUseCase;
import com.vuitton.android.domain.usecase.connectivity.trunkspeaker.GetTrunkSpeakerVideoUseCase;
import com.vuitton.android.domain.usecase.connectivity.watch.GetWatchTutorialCategoryListUseCase;
import com.vuitton.android.domain.usecase.connectivity.watch.GetWatchUseCase;
import com.vuitton.android.domain.usecase.connectivity.watch.GetWatchVideoUseCase;
import com.vuitton.android.domain.usecase.connectivity.watch.RenameWatchUseCase;
import com.vuitton.android.domain.usecase.connectivity.watch.pairing.PairWatchV2UseCase;
import com.vuitton.android.domain.usecase.connectivity.watch.pairing.UnpairWatchV2UseCase;
import com.vuitton.android.domain.usecase.connectivity.watch.watchface.GetWatchfacePresentationForUserUseCase;
import com.vuitton.android.domain.usecase.connectivity.watch.watchface.GetWatchfacePresentationWithVersionUseCase;
import com.vuitton.android.domain.usecase.connectivity.watchv3.GetWatchV3SkuListUseCase;
import com.vuitton.android.domain.usecase.connectivity.watchv3.GetWatchV3TutorialUseCase;
import com.vuitton.android.domain.usecase.connectivity.watchv3.GetWatchV3VideoUseCase;
import com.vuitton.android.domain.usecase.deeplinkredirection.ClearDeepLinkForRedirectionUseCase;
import com.vuitton.android.domain.usecase.deeplinkredirection.GetSavedDeepLinkForRedirectionUseCase;
import com.vuitton.android.domain.usecase.deeplinkredirection.SaveDeepLinkForRedirectionUseCase;
import com.vuitton.android.domain.usecase.dispatch.ClearUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.dispatch.DetermineUserInAppDispatchStatusUseCase;
import com.vuitton.android.domain.usecase.dispatch.FindDispatchForPhoneUseCase;
import com.vuitton.android.domain.usecase.dispatch.FindUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.dispatch.GetDispatchAreaListUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.dispatch.SaveUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ActivateDynamicYieldUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.GetDYPdpChooseVariationUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.GetDYPlpChooseVariationUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.GetDYRecommendedProductsUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.InitializeDynamicYieldUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.IsDynamicYieldActivatedUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYAddToCartEventUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYAddToWishlistEventUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYClickUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYLoginEventUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYPurchaseEventUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYRemoveFromCartEventUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYSignUpEventUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYSlotClickUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ResetDynamicYieldIdUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.SetDynamicYieldConsentUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.SetDynamicYieldLocaleUseCase;
import com.vuitton.android.domain.usecase.environments.UpdateEnvironmentUseCase;
import com.vuitton.android.domain.usecase.exclusivesales.GetUserExclusiveSalesUseCase;
import com.vuitton.android.domain.usecase.feed.GetFeedDiscoverUseCase;
import com.vuitton.android.domain.usecase.feed.GetFeedForYouUseCase;
import com.vuitton.android.domain.usecase.feed.UpdateFeedWithLiveEventDataUseCase;
import com.vuitton.android.domain.usecase.forms.BestFormDispatchIdUseCase;
import com.vuitton.android.domain.usecase.forms.GetAccountActivationFormUseCase;
import com.vuitton.android.domain.usecase.forms.GetAuthenticationFormUseCase;
import com.vuitton.android.domain.usecase.forms.GetBookingPersonalInfoFormUseCase;
import com.vuitton.android.domain.usecase.forms.GetCareServiceFormUseCase;
import com.vuitton.android.domain.usecase.forms.GetCompleteProfileFormUseCase;
import com.vuitton.android.domain.usecase.forms.GetDispatchIdentifierListForFormUseCase;
import com.vuitton.android.domain.usecase.forms.GetGuestAppointmentFormUseCase;
import com.vuitton.android.domain.usecase.forms.GetMainAddressFormUseCase;
import com.vuitton.android.domain.usecase.forms.GetProfileFormUseCase;
import com.vuitton.android.domain.usecase.forms.GetRegistrationFormUseCase;
import com.vuitton.android.domain.usecase.forms.GetSecondaryAddressFormUseCase;
import com.vuitton.android.domain.usecase.forms.mapping.GetAddressCivilitiesMappingUseCase;
import com.vuitton.android.domain.usecase.forms.mapping.GetProfileCivilitiesMappingUseCase;
import com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase;
import com.vuitton.android.domain.usecase.hotcontent.HasCachedHotContentUseCase;
import com.vuitton.android.domain.usecase.immersivearticle.GetImmersiveArticleDetailByKeyUseCase;
import com.vuitton.android.domain.usecase.landingpage.GetLandingPageDetailsByIdUseCase;
import com.vuitton.android.domain.usecase.legal.GetLegalConsentUseCase;
import com.vuitton.android.domain.usecase.locale.ReactToInAppDispatchChangeUseCase;
import com.vuitton.android.domain.usecase.locale.ShouldResetGdprPreferencesUseCase;
import com.vuitton.android.domain.usecase.maintenance.IsAppInMaintenanceUseCase;
import com.vuitton.android.domain.usecase.model3dasset.GetModel3dAssetUseCase;
import com.vuitton.android.domain.usecase.onboarding.GetOnboardingStateUseCase;
import com.vuitton.android.domain.usecase.onboarding.SetOnboardingStateUseCase;
import com.vuitton.android.domain.usecase.osa.CancelAppointmentUseCase;
import com.vuitton.android.domain.usecase.osa.GetLocatedStoreListUseCase;
import com.vuitton.android.domain.usecase.osa.GetOnlineStoreAppointmentListUseCase;
import com.vuitton.android.domain.usecase.osa.GetStoreListByCodesUseCase;
import com.vuitton.android.domain.usecase.pdp.GetProductDetailUseCase;
import com.vuitton.android.domain.usecase.pdp.backinstock.SubscribeBackInStockUseCase;
import com.vuitton.android.domain.usecase.pdp.backinstock.UnsubscribeBackInStockUseCase;
import com.vuitton.android.domain.usecase.pdp.customization.GetCustomizationUseCase;
import com.vuitton.android.domain.usecase.pdp.customization.RemoveCustomizationUseCase;
import com.vuitton.android.domain.usecase.pdp.customization.SaveCustomizationUseCase;
import com.vuitton.android.domain.usecase.pdp.vto.GetShadeFinderConsentTimeStampUseCase;
import com.vuitton.android.domain.usecase.pdp.vto.GetShadeFinderRecommendationsUseCase;
import com.vuitton.android.domain.usecase.pdp.vto.GetTryOnProductListUseCase;
import com.vuitton.android.domain.usecase.pdp.vto.GetTutorialUseCase;
import com.vuitton.android.domain.usecase.pdp.vto.HasConsentedBeautyUseCase;
import com.vuitton.android.domain.usecase.pdp.vto.HasDoneShadeFinderIntroUseCase;
import com.vuitton.android.domain.usecase.pdp.vto.InitPerfectCorpUseCase;
import com.vuitton.android.domain.usecase.pdp.vto.SetBeautyConsentUseCase;
import com.vuitton.android.domain.usecase.pdp.vto.SetShadeFinderIntroDoneUseCase;
import com.vuitton.android.domain.usecase.permissions.SetNotificationsPermissionAskedUseCase;
import com.vuitton.android.domain.usecase.permissions.ShouldRequestNotificationsPermissionUseCase;
import com.vuitton.android.domain.usecase.personalselections.GetPersonalSelectionsDetailUseCase;
import com.vuitton.android.domain.usecase.personalselections.GetPersonalSelectionsListUseCase;
import com.vuitton.android.domain.usecase.personalselections.LikePersonalSelectionsUseCase;
import com.vuitton.android.domain.usecase.personalselections.UnlikePersonalSelectionsUseCase;
import com.vuitton.android.domain.usecase.plp.GetCategoryPlpUseCase;
import com.vuitton.android.domain.usecase.plp.GetExclusivePLPUseCase;
import com.vuitton.android.domain.usecase.plp.GetSearchPLPUseCase;
import com.vuitton.android.domain.usecase.plp.GetSkusPLPUseCase;
import com.vuitton.android.domain.usecase.portal.GetPortalSliderFeedUseCase;
import com.vuitton.android.domain.usecase.privacy.GetAnalyticsAndTrackersConsentUseCase;
import com.vuitton.android.domain.usecase.privacy.GetConsentForCustomisationTrackerUseCase;
import com.vuitton.android.domain.usecase.privacy.GetFunctionalConsentUseCase;
import com.vuitton.android.domain.usecase.privacy.NeedShowPrivacyConsentUseCase;
import com.vuitton.android.domain.usecase.privacy.UpdateAnalyticsConsentUseCase;
import com.vuitton.android.domain.usecase.privacy.UpdateConsentForCustomisationTrackerUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.GetConsentListUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.GetConsentTypeUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.GetPiplCbdtAgreementUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.HasConsentsUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.ResetConsentsUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.SetConsentsUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.SetPiplCbdtAgreementUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.UserHasConsentForAppsFlyerUseCase;
import com.vuitton.android.domain.usecase.products.AddLastViewedProductSkuUseCase;
import com.vuitton.android.domain.usecase.products.GetCrossSellProductListUseCase;
import com.vuitton.android.domain.usecase.products.GetProductAvailabilityUseCase;
import com.vuitton.android.domain.usecase.products.GetProductListBySkusUseCase;
import com.vuitton.android.domain.usecase.products.GetProductShortListUseCase;
import com.vuitton.android.domain.usecase.products.GetProductShortUseCase;
import com.vuitton.android.domain.usecase.products.GetProductVariationsAvailabilityUseCase;
import com.vuitton.android.domain.usecase.products.GetReinsuranceUseCase;
import com.vuitton.android.domain.usecase.products.GetRelatedProductsUseCase;
import com.vuitton.android.domain.usecase.products.GetSizeGuideUseCase;
import com.vuitton.android.domain.usecase.products.GetSkusProductsListUseCase;
import com.vuitton.android.domain.usecase.products.GetYmalProductListUseCase;
import com.vuitton.android.domain.usecase.products.ListenToLastViewedProductSkuListUseCase;
import com.vuitton.android.domain.usecase.products.RemoveLastViewedProductListUseCase;
import com.vuitton.android.domain.usecase.products.RemoveSkuFromLastViewedProductListUseCase;
import com.vuitton.android.domain.usecase.products.availability.GetPlaceGeocodingByLocationUseCase;
import com.vuitton.android.domain.usecase.products.availability.GetPlaceGeocodingByPlaceIdUseCase;
import com.vuitton.android.domain.usecase.products.availability.GetProductAvailabilityInStoresUseCase;
import com.vuitton.android.domain.usecase.repairs.GetRepairStatusMapUseCase;
import com.vuitton.android.domain.usecase.search.AddSearchHistoryProductUseCase;
import com.vuitton.android.domain.usecase.search.AddSearchHistoryTextualUseCase;
import com.vuitton.android.domain.usecase.search.GetAutocompleteListUseCase;
import com.vuitton.android.domain.usecase.search.GetLiveSearchUseCase;
import com.vuitton.android.domain.usecase.search.GetSearchHistoryUseCase;
import com.vuitton.android.domain.usecase.search.GetTrendingListUseCase;
import com.vuitton.android.domain.usecase.search.UpdateSearchHistoryUseCase;
import com.vuitton.android.domain.usecase.sharedPreferences.GetShowInboxLongPressTooltipUseCase;
import com.vuitton.android.domain.usecase.sharedPreferences.UpdateShowArLocationBottomSheetUseCase;
import com.vuitton.android.domain.usecase.sharedPreferences.UpdateShowInboxLongPressTooltipUseCase;
import com.vuitton.android.domain.usecase.spotlight.CancelCacheUseCase;
import com.vuitton.android.domain.usecase.spotlight.GetSpotlightUseCase;
import com.vuitton.android.domain.usecase.spotlight.ListenPreCacheUseCase;
import com.vuitton.android.domain.usecase.spotlight.PreCacheUseCase;
import com.vuitton.android.domain.usecase.storemode.DisableStoreModeUseCase;
import com.vuitton.android.domain.usecase.storemode.EnableStoreModeUseCase;
import com.vuitton.android.domain.usecase.storemode.GetRmsCodeUseCase;
import com.vuitton.android.domain.usecase.storemode.GetStoreModeAffiliationUseCase;
import com.vuitton.android.domain.usecase.storemode.GetStoreModeInfoUseCase;
import com.vuitton.android.domain.usecase.storemode.GetStoreModeValidityUseCase;
import com.vuitton.android.domain.usecase.storemode.IsStoreModeStillValidUseCase;
import com.vuitton.android.domain.usecase.story.GetStoryUseCase;
import com.vuitton.android.domain.usecase.travel.CreateTravelUseCase;
import com.vuitton.android.domain.usecase.travel.DeleteTravelUseCase;
import com.vuitton.android.domain.usecase.travel.EditTravelUseCase;
import com.vuitton.android.domain.usecase.travel.GetAirportListUseCase;
import com.vuitton.android.domain.usecase.travel.GetPlaceAutocompleteUseCase;
import com.vuitton.android.domain.usecase.travel.GetTravelListUseCase;
import com.vuitton.android.domain.usecase.video.GetLiveVideoUseCase;
import com.vuitton.android.domain.usecase.wishlist.AddProductListToWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.AddProductToWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.DeleteProductFromWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.GetLocalWishlistSummaryUseCase;
import com.vuitton.android.domain.usecase.wishlist.GetWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.IsProductInWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.RefreshWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.ShareWishlistContentUseCase;
import com.vuitton.android.platform.security.RootDetector;
import com.vuitton.android.presentation.chat.ChatCoordinator;
import com.vuitton.android.presentation.contact.ContactUsDelegateImpl;
import com.vuitton.android.presentation.helper.PhotoEncodingHelper;
import com.vuitton.android.presentation.link.builder.PassAppLinkBuilder;
import com.vuitton.android.presentation.link.builder.WebAppLinkBuilder;
import com.vuitton.android.presentation.link.parsing.LinkClassifier;
import com.vuitton.android.presentation.link.parsing.LinkParser;
import com.vuitton.android.presentation.link.parsing.PassAppLinkConverter;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.push.NotificationsManager;
import com.vuitton.android.presentation.redirectlink.AppLinkHandler;
import com.vuitton.android.presentation.redirectlink.DeepLinkAccountHandler;
import com.vuitton.android.presentation.redirectlink.DeepLinkAuthHandler;
import com.vuitton.android.presentation.redirectlink.DeepLinkCartHandler;
import com.vuitton.android.presentation.redirectlink.DeepLinkCatalogHandler;
import com.vuitton.android.presentation.redirectlink.DeepLinkConnectivityHandler;
import com.vuitton.android.presentation.redirectlink.DeepLinkHandler;
import com.vuitton.android.presentation.redirectlink.DeepLinkServicesHandler;
import com.vuitton.android.presentation.redirectlink.DynamicYieldLinkActivator;
import com.vuitton.android.presentation.redirectlink.LinkEffectEmitter;
import com.vuitton.android.presentation.redirectlink.LinkRedirectionState;
import com.vuitton.android.presentation.redirectlink.LinkViewModelImpl;
import com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModelImpl;
import com.vuitton.android.presentation.screen.account.addressbook.AddressBookViewModelImpl;
import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl;
import com.vuitton.android.presentation.screen.account.addresseditor.error.AddressErrorMessageMapper;
import com.vuitton.android.presentation.screen.account.addresseditor.validation.PhoneValidationRules;
import com.vuitton.android.presentation.screen.account.editavatar.EditAvatarViewModelImpl;
import com.vuitton.android.presentation.screen.account.inbox.InboxViewModelImpl;
import com.vuitton.android.presentation.screen.account.lvpass.QRCodeViewModelImpl;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl;
import com.vuitton.android.presentation.screen.account.userworldwideid.UserWorldwideIdViewModelImpl;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTrackerImpl;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModelImpl;
import com.vuitton.android.presentation.screen.audioplayer.AudioPlayerViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.accountmanager.GoogleSignInManagerImpl;
import com.vuitton.android.presentation.screen.authentication.accountmanager.KakaoSignInManagerImpl;
import com.vuitton.android.presentation.screen.authentication.accountmanager.LineSignInManagerImpl;
import com.vuitton.android.presentation.screen.authentication.common.validation.EmailValidationRules;
import com.vuitton.android.presentation.screen.authentication.common.validation.FormPasswordValidationRules;
import com.vuitton.android.presentation.screen.authentication.common.validation.GenericFieldValidationRules;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.oauth.OauthCodeHelper;
import com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.welcome.WelcomeViewModelImpl;
import com.vuitton.android.presentation.screen.booking.confirmation.BookingConfirmationViewModelImpl;
import com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModelImpl;
import com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl;
import com.vuitton.android.presentation.screen.booking.pass.BookingPassViewModelImpl;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl;
import com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModelImpl;
import com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl;
import com.vuitton.android.presentation.screen.cart.components.giftmessage.GiftMessageViewModelImpl;
import com.vuitton.android.presentation.screen.catalog.CatalogRoutingViewModelImpl;
import com.vuitton.android.presentation.screen.catalog.CatalogViewModelImpl;
import com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl;
import com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl;
import com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModelImpl;
import com.vuitton.android.presentation.screen.certificates.diamonds.transfer.CertificateTransferViewModelImpl;
import com.vuitton.android.presentation.screen.certificates.nfc.CertificateNfcScanViewModelImpl;
import com.vuitton.android.presentation.screen.certificates.nfc.NfcManager;
import com.vuitton.android.presentation.screen.connectivity.faq.FaqViewModel;
import com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesViewModel;
import com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailViewModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.pairing.DeviceDetectedViewModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.LightUpScanViewModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.keepall.KeepAllDetailViewModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerDetailViewModel;
import com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailViewModelImpl;
import com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListViewModelImpl;
import com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailViewModelImpl;
import com.vuitton.android.presentation.screen.connectivity.travel.form.TravelFormViewModelImpl;
import com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListViewModelImpl;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailViewModelImpl;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectToWifiViewModelImpl;
import com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialViewModelImpl;
import com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsViewModelImpl;
import com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsViewModel;
import com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories.WatchTutorialCategoriesViewModelImpl;
import com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationViewModelImpl;
import com.vuitton.android.presentation.screen.deeplink.DeepLinkDispatcherViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModelImpl;
import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModelImpl;
import com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisorImpl;
import com.vuitton.android.presentation.screen.exclusivesales.ExclusiveSalesViewModelImpl;
import com.vuitton.android.presentation.screen.feed.CalendarManager;
import com.vuitton.android.presentation.screen.feed.FeedViewModelImpl;
import com.vuitton.android.presentation.screen.filter.quickaccess.FilterCommand;
import com.vuitton.android.presentation.screen.filter.quickaccess.FiltersOverlayViewModelImpl;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModelImpl;
import com.vuitton.android.presentation.screen.forceupdate.ForceUpdateViewModelImpl;
import com.vuitton.android.presentation.screen.imagepicker.ImagePickerViewModel;
import com.vuitton.android.presentation.screen.imageviewer.ImageViewerViewModelImpl;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl;
import com.vuitton.android.presentation.screen.livevideo.LiveVideoTracker;
import com.vuitton.android.presentation.screen.livevideo.LiveVideoViewModelImpl;
import com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl;
import com.vuitton.android.presentation.screen.maintenance.MaintenanceViewModelImpl;
import com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl;
import com.vuitton.android.presentation.screen.mylv.TopBarAvatarViewModelImpl;
import com.vuitton.android.presentation.screen.onboarding.OnboardingViewModelImpl;
import com.vuitton.android.presentation.screen.options.OptionsViewModelImpl;
import com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModelImpl;
import com.vuitton.android.presentation.screen.options.appinfo.AppInfoViewModelImpl;
import com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModelImpl;
import com.vuitton.android.presentation.screen.options.legaltext.LegalTextViewModelImpl;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesTracker;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModelImpl;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.OptOutPrivacyMenuViewModelImpl;
import com.vuitton.android.presentation.screen.options.settings.SettingsTracker;
import com.vuitton.android.presentation.screen.options.settings.SettingsViewModelImpl;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnViewModelImpl;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl;
import com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl;
import com.vuitton.android.presentation.screen.osa.list.OsaListViewModelImpl;
import com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModelImpl;
import com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl;
import com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModelImpl;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModelImpl;
import com.vuitton.android.presentation.screen.personalselections.list.PersonalSelectionsListViewModelImpl;
import com.vuitton.android.presentation.screen.placesearch.PlaceSearchViewModelImpl;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPExclusiveViewModelImpl;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPSkusViewModelImpl;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.PSPViewModelImpl;
import com.vuitton.android.presentation.screen.portal.PortalSliderViewModelImpl;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModelImpl;
import com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl;
import com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewModelImpl;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffViewModelImpl;
import com.vuitton.android.presentation.screen.search.SearchViewModelImpl;
import com.vuitton.android.presentation.screen.services.ServicesViewModelImpl;
import com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl;
import com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl;
import com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModelImpl;
import com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModelImpl;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl;
import com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel;
import com.vuitton.android.presentation.screen.story.StoryViewModelImpl;
import com.vuitton.android.presentation.screen.thankyou.ThankYouViewModelImpl;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModelImpl;
import com.vuitton.android.presentation.screen.video.VideoViewModelImpl;
import com.vuitton.android.presentation.screen.webview.WebViewViewModel;
import com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl;
import com.vuitton.android.presentation.screenshot.ScreenshotViewModelImpl;
import com.vuitton.core.infrastructure.data.forms.repository.CivilityRepository;
import com.vuitton.core.infrastructure.data.forms.repository.FormRepository;
import com.vuitton.foundation.logger.Logger;
import dagger.hilt.android.internal.Contexts;
import dagger.hilt.android.internal.modules.ApplicationContextModule_ProvideApplicationFactory;
import dagger.internal.DoubleCheck;
import dagger.internal.LazyClassKeyMap;
import dagger.internal.Provider;
import dagger.internal.SingleCheck;
import kotlinx.serialization.json.Json;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
final class DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl extends LVApplication_HiltComponents$ViewModelC {
    public final Provider A;
    public final Provider A0;
    public final Provider A1;
    public final Provider B;
    public final Provider B0;
    public final Provider B1;
    public final Provider C;
    public final Provider C0;
    public final Provider C1;
    public final Provider D;
    public final Provider D0;
    public final Provider D1;
    public final Provider E;
    public final Provider E0;
    public final Provider E1;
    public final Provider F;
    public final Provider F0;
    public final Provider F1;
    public final Provider G;
    public final Provider G0;
    public final Provider G1;
    public final Provider H;
    public final Provider H0;
    public final Provider I;
    public final Provider I0;
    public final Provider J;
    public final Provider J0;
    public final Provider K;
    public final Provider K0;
    public final Provider L;
    public final Provider L0;
    public final Provider M;
    public final Provider M0;
    public final Provider N;
    public final Provider N0;
    public final Provider O;
    public final Provider O0;
    public final Provider P;
    public final Provider P0;
    public final Provider Q;
    public final Provider Q0;
    public final Provider R;
    public final Provider R0;
    public final Provider S;
    public final Provider S0;
    public final Provider T;
    public final Provider T0;
    public final Provider U;
    public final Provider U0;
    public final Provider V;
    public final Provider V0;
    public final Provider W;
    public final Provider W0;
    public final Provider X;
    public final Provider X0;
    public final Provider Y;
    public final Provider Y0;
    public final Provider Z;
    public final Provider Z0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SavedStateHandle f50511a;
    public final Provider a0;
    public final Provider a1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl f50512b;
    public final Provider b0;
    public final Provider b1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Provider f50513c;
    public final Provider c0;
    public final Provider c1;
    public final Provider d;
    public final Provider d0;
    public final Provider d1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Provider f50514e;
    public final Provider e0;
    public final Provider e1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Provider f50515f;
    public final Provider f0;
    public final Provider f1;
    public final Provider g;
    public final Provider g0;
    public final Provider g1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Provider f50516h;
    public final Provider h0;
    public final Provider h1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Provider f50517i;
    public final Provider i0;
    public final Provider i1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Provider f50518j;
    public final Provider j0;
    public final Provider j1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Provider f50519k;
    public final Provider k0;
    public final Provider k1;
    public final Provider l;
    public final Provider l0;
    public final Provider l1;
    public final Provider m;
    public final Provider m0;
    public final Provider m1;
    public final Provider n;
    public final Provider n0;
    public final Provider n1;
    public final Provider o;
    public final Provider o0;
    public final Provider o1;
    public final Provider p;
    public final Provider p0;
    public final Provider p1;
    public final Provider q;
    public final Provider q0;
    public final Provider q1;
    public final Provider r;
    public final Provider r0;
    public final Provider r1;
    public final Provider s;
    public final Provider s0;
    public final Provider s1;
    public final Provider t;
    public final Provider t0;
    public final Provider t1;
    public final Provider u;
    public final Provider u0;
    public final Provider u1;
    public final Provider v;
    public final Provider v0;
    public final Provider v1;
    public final Provider w;
    public final Provider w0;
    public final Provider w1;
    public final Provider x;
    public final Provider x0;
    public final Provider x1;
    public final Provider y;
    public final Provider y0;
    public final Provider y1;
    public final Provider z;
    public final Provider z0;
    public final Provider z1;

    public static final class SwitchingProvider<T> implements Provider<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl f50520a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl f50521b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f50522c;

        public SwitchingProvider(DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl, int i2) {
            this.f50520a = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;
            this.f50521b = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;
            this.f50522c = i2;
        }

        public final Object a() {
            DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50520a;
            DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl = this.f50521b;
            int i2 = this.f50522c;
            switch (i2) {
                case 0:
                    return new AICompanionViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.j2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.p0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.q0(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), new GetProductShortListUseCase((ProductRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.L1.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.o(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.I(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.M1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.Z2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K1());
                case 1:
                    return new AccessibilityPreferencesViewModelImpl(ApplicationContextModule_ProvideApplicationFactory.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.R(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.T1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.E2());
                case 2:
                    return new AccountActivationViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a, daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.S(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.M(), new FormPasswordValidationRules(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), new AccountActivationInitiateUseCase(), new AccountActivationValidateUseCase(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F());
                case 3:
                    return new AddCertificateViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a, (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.h(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.g(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B());
                case 4:
                    return new AddressAutocompleteViewModelImpl((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.T(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.V(), new CachedAppConfigOrNullUseCase((AppConfigRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.e0.get()));
                case 5:
                    return new AddressBookViewModelImpl((Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), new GetAddressListUseCase((AddressRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.f2.get()), new DeleteAddressUseCase((AddressRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.f2.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B());
                case 6:
                    return new AddressEditorViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a, daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.M(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), new AddressErrorMessageMapper(), new PhoneValidationRules(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.U(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.N(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f(), new DeleteAddressUseCase((AddressRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.f2.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.V0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.r1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.g0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.g1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f());
                case 7:
                    return new AirportListViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.W());
                case 8:
                    return new AppInfoViewModelImpl((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), ApplicationContextModule_ProvideApplicationFactory.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a), (AuthTokenRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.U.get());
                case 9:
                    RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCaseF = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F();
                    SavedStateHandle savedStateHandle = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a;
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new AudioGuideViewModelImpl(requireUserInAppDispatchUseCaseF, savedStateHandle, (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.a0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.A1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.r0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.F2(), new PlayMediaUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2.w()), new PauseMediaUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2.w()), new ResumeMediaUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2.w()), new SeekToPositionUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2.w()), new GetCurrentPositionUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2.w()), new SetMediaControllerCallbackUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2.w()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.L2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.S2(), new DestroyMediaControllerUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2.w()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.X(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.D2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.x(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.z(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.M2());
                case 10:
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl4 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new AudioPlayerViewModelImpl(new SetMediaControllerCallbackUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.w()), new GetCurrentPositionUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl4.w()), new DestroyMediaControllerUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl4.w()), new PlayMediaUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl4.w()), new PauseMediaUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl4.w()), new ResumeMediaUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl4.w()), new SeekToPositionUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl4.w()));
                case 11:
                    UserSessionService userSessionServiceG = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G();
                    IsFeatureAvailableUseCase isFeatureAvailableUseCaseD = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D();
                    RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCaseF2 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F();
                    AuthenticationAvailabilityUseCase authenticationAvailabilityUseCaseR = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.r();
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl5 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new AuthenticationViewModelImpl(userSessionServiceG, isFeatureAvailableUseCaseD, requireUserInAppDispatchUseCaseF2, authenticationAvailabilityUseCaseR, (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), new OauthCodeHelper(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y(), new KisaConsentsParserImpl(), (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.d2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.e2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.o2(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B(), new GetContactIdUseCase((AccountRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl5.h1.get()), new GetConsentListUseCase((ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl5.p0.get()), new RefreshWishlistUseCase((WishlistRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl5.Q1.get()), new UpdateContactIdUseCase((UserPreferencesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl5.K.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.v2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.q(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.x2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.C2(), new SetAppsFlyerCustomerIdUseCase((AppsFlyerRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl5.l0.get(), (UserPreferencesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl5.K.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.t0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.X2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.m2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.p(), new FinaliseSalesforceAuthenticationUseCase((ATGSessionRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl5.Z0.get(), (SalesforceAuthRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl5.N0.get()));
                case 12:
                    Application applicationA = ApplicationContextModule_ProvideApplicationFactory.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a);
                    SavedStateHandle savedStateHandle2 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a;
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl6 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new BeautyVtoViewModelImpl(applicationA, savedStateHandle2, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.r(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.E1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.L1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.V1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.x1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.D1(), new SubscribeBackInStockUseCase((BackInStockRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl6.V2.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl6.D()), new AddProductListToCartUseCase(new GetSotTokenForTwistUserOrNullUseCase(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.b0()), (CartRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl6.A1.get()), new ReportDYAddToCartEventUseCase((DynamicYieldRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl6.E2.get()), new GetProductAvailabilityUseCase((CatalogRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl6.S2.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl6.D(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl6.E()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.N2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.P1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.m(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.X(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.u1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.t1());
                case 13:
                    return new BookingConfirmationViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.s0(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F());
                case 14:
                    return new BookingListViewModelImpl(new GetBookingsUseCase((BookingRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.d3.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.a3(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.H(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F());
                case 15:
                    return new BookingPersonalInfoViewModelImpl(new GetAccountStatusUseCase((AccountRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.h1.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.e0(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B(), new GetProfileCivilitiesMappingUseCase((CivilityRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.h2.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.d0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.M(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F());
                case 16:
                    return new CancellationReasonsBffViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                case 17:
                    return new CancellationReasonsViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.o1());
                case 18:
                    return new CatalogRoutingViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a, daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.W1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.L());
                case 19:
                    return new CatalogViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y(), new GetCatalogUseCase((CatalogRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.S2.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.X());
                case 20:
                    return new CertificateNfcScanViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y(), (NfcManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.C1.get(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.s1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.y1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.W2(), (BuildConfigProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F());
                case 21:
                    return new CertificateTransferViewModelImpl(ApplicationContextModule_ProvideApplicationFactory.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.U2(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f());
                case 22:
                    return new CertificateViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a, (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), new GetCertificateListUseCase((CertificateRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.Z1.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.o0(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y());
                case 23:
                    return new ConnectToWifiViewModelImpl();
                case 24:
                    return new ConnectivitySectionDetailViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.J1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.E0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.D0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.S0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.C1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.B1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.M0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.N0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.I1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.H1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                case 25:
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl7 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new ConnectivityViewModel(new GetLightUpObjectsUseCase((LightUpRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl7.G2.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl7.D()), new DeleteLightUpProductUseCase((LightUpRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.G2.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.t0(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.h0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.h2(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                case 26:
                    Logger logger = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
                    Monitor monitor = (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get();
                    RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCaseF3 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F();
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl8 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    GetStoreAvailabilityListUseCase getStoreAvailabilityListUseCase = new GetStoreAvailabilityListUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl8.E(), (AppointmentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl8.y3.get());
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl9 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new DatePickerViewModelImpl(logger, monitor, requireUserInAppDispatchUseCaseF3, getStoreAvailabilityListUseCase, new GetStoreTimeSlotListUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl9.E(), (AppointmentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl9.y3.get()), new PrebookAppointmentUseCase((AppointmentRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.y3.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f());
                case 27:
                    return new DeepLinkDispatcherViewModel(new CachedAppConfigOrNullUseCase((AppConfigRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.e0.get()), (AppLinkRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.C3.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D());
                case 28:
                    return new DeviceDetectedViewModel(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.S1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                case 29:
                    return new DispatchCountryViewModelImpl((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.C(), new GetDispatchAreaListUseCase((DispatchAreaListRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.F3.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.l2(), new UpdateSearchHistoryUseCase((SearchHistoryRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.P3.get()), new RemoveLastViewedProductListUseCase((LastViewedProductRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.R3.get()));
                case 30:
                    Application applicationA2 = ApplicationContextModule_ProvideApplicationFactory.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a);
                    SavedStateHandle savedStateHandle3 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a;
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new DistantRepairAssessmentBffViewModelImpl(applicationA2, savedStateHandle3, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), new GetCareServiceDetailBffUseCase((CareServicesBffRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.W3.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.b3(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.B(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.d(), new CancelCareServiceBffUseCase((CareServicesBffRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.W3.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B(), new GetAddressListUseCase((AddressRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.f2.get()), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f());
                case 31:
                    Application applicationA3 = ApplicationContextModule_ProvideApplicationFactory.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a);
                    SavedStateHandle savedStateHandle4 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a;
                    AnalyticsTracker analyticsTrackerU = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u();
                    Logger logger2 = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
                    Monitor monitor2 = (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get();
                    Json json = (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get();
                    RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCaseF4 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F();
                    RequireCachedAppConfigUseCase requireCachedAppConfigUseCaseE = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E();
                    IsFeatureAvailableUseCase isFeatureAvailableUseCaseD2 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D();
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl11 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new DistantRepairAssessmentViewModelImpl(applicationA3, savedStateHandle4, analyticsTrackerU, logger2, monitor2, json, requireUserInAppDispatchUseCaseF4, requireCachedAppConfigUseCaseE, isFeatureAvailableUseCaseD2, new GetCareServiceByIdUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl11.E(), (CareServicesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl11.Z3.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.c3(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B(), new GetAddressListUseCase((AddressRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.f2.get()), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f());
                case 32:
                    return new DistantRepairFormBffViewModelImpl(ApplicationContextModule_ProvideApplicationFactory.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), new PhotoEncodingHelper(), (LoginStateRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.P.get(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.M(), new GenericFieldValidationRules(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.V0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.i0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.D(), new GetLocaleCountryListUseCase((AddressRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.f2.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E());
                case 33:
                    Application applicationA4 = ApplicationContextModule_ProvideApplicationFactory.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a);
                    RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCaseF5 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F();
                    Logger logger3 = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
                    Monitor monitor3 = (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get();
                    LVEventSender lVEventSender = (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get();
                    ContactUsDelegateImpl contactUsDelegateImplY = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y();
                    PhotoEncodingHelper photoEncodingHelper = new PhotoEncodingHelper();
                    NotificationBuilder notificationBuilderF = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f();
                    LoginStateRepository loginStateRepository = (LoginStateRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.P.get();
                    AnalyticsTracker analyticsTrackerU2 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u();
                    AppsFlyerTrackerImpl appsFlyerTrackerImplV = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v();
                    GetProfileUseCase getProfileUseCaseB = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B();
                    CreateCareServiceUseCase createCareServiceUseCaseE = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.E();
                    UpdateCareServiceUseCase updateCareServiceUseCaseC3 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.c3();
                    IsFeatureAvailableUseCase isFeatureAvailableUseCaseD3 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D();
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl12 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new DistantRepairFormViewModelImpl(applicationA4, requireUserInAppDispatchUseCaseF5, logger3, monitor3, lVEventSender, contactUsDelegateImplY, photoEncodingHelper, notificationBuilderF, loginStateRepository, analyticsTrackerU2, appsFlyerTrackerImplV, getProfileUseCaseB, createCareServiceUseCaseE, updateCareServiceUseCaseC3, isFeatureAvailableUseCaseD3, new ConfirmAppointmentUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl12.E(), (AppointmentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl12.y3.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.V0(), new GetLocaleCountryListUseCase((AddressRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.f2.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E());
                case 34:
                    return new EditAvatarViewModelImpl((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.Y(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.F1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.I2(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                case 35:
                    return new ExclusiveSalesViewModelImpl((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.m2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.G1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f());
                case 36:
                    return new FaqCategoriesViewModel(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.H0(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                case 37:
                    return new FaqViewModel(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.I0(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                case 38:
                    RequireCachedAppConfigUseCase requireCachedAppConfigUseCaseE2 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E();
                    RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCaseF6 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F();
                    LVEventSender lVEventSender2 = (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get();
                    Logger logger4 = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
                    Monitor monitor4 = (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get();
                    Application applicationA5 = ApplicationContextModule_ProvideApplicationFactory.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a);
                    CalendarManager calendarManagerT = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.t();
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl13 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new FeedViewModelImpl(requireCachedAppConfigUseCaseE2, requireUserInAppDispatchUseCaseF6, lVEventSender2, logger4, monitor4, applicationA5, calendarManagerT, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.T0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.Q(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.u2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.J0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.a1(), new ReportDYSlotClickUseCase((DynamicYieldRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl13.E2.get(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl13.f50503j.get()), new GetHotContentUseCase(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.a1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.b1(), new GetCareServiceListBffUseCase((CareServicesBffRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl13.W3.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl13.D(), (HotContentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl13.n4.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.N1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), new GetProductShortListUseCase((ProductRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl13.L1.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.v(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.U1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.C0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.X(), new HasAITooltipBeenDisplayedUseCase((AICompanionRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl13.H1.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.x0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.b2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.u0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.s2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.c1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.n1());
                case 39:
                    return new FiltersOverlayViewModelImpl((FilterCommand) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.o4.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                case 40:
                    AnalyticsTracker analyticsTrackerU3 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u();
                    RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCaseF7 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F();
                    GetPlaceGeocodingByLocationUseCase getPlaceGeocodingByLocationUseCaseE1 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.e1();
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl14 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new FindInStoreViewModelImpl(analyticsTrackerU3, requireUserInAppDispatchUseCaseF7, getPlaceGeocodingByLocationUseCaseE1, new GetPlaceGeocodingByPlaceIdUseCase((PlaceRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl14.c2.get()), new GetPlaceAutocompleteUseCase((PlaceRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl14.c2.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.i1());
                case 41:
                    return new ForceUpdateViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.y2());
                case EACTags.CURRENCY_CODE /* 42 */:
                    return new ForgetPasswordViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a, (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.O(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.P(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.M(), new GetRegistrationFormUseCase(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.s(), (FormRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.V1.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), new FormPasswordValidationRules(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                case EACTags.DATE_OF_BIRTH /* 43 */:
                    return new GiftMessageViewModelImpl(ApplicationContextModule_ProvideApplicationFactory.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                    return new ImagePickerViewModel();
                case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                    return new ImageViewerViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.z());
                case 46:
                    return new ImmersiveArticleViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), ApplicationContextModule_ProvideApplicationFactory.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.i2(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.k(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.W0(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.V1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.x1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.o(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.X(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.Q0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.t2(), new GetImmersiveArticleDetailByKeyUseCase((ImmersiveArticleRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.A4.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.T0());
                case EACTags.PIN_USAGE_POLICY /* 47 */:
                    return new InboxViewModelImpl(ApplicationContextModule_ProvideApplicationFactory.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.A(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.v1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.m3());
                case 48:
                    return new KeepAllDetailViewModel(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.P0());
                case 49:
                    return new LegalTextViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F());
                case 50:
                    return new LightUpDetailViewModel(new DeleteLightUpProductUseCase((LightUpRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.G2.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f3(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                case EACTags.TRANSACTION_DATE /* 51 */:
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl15 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new LightUpScanViewModel(new GetLightUpObjectsUseCase((LightUpRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl15.G2.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl15.D()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                    return new LinkViewModelImpl((LinkEffectEmitter) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.c0.get(), (DeepLinkHandler) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.l0.get(), (AppLinkHandler) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.m0.get());
                case EACTags.SEX /* 53 */:
                    return new LinkEffectEmitter();
                case EACTags.CURRENCY_EXPONENT /* 54 */:
                    return new DeepLinkHandler(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.Y1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), (DynamicYieldLinkActivator) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.d0.get(), (LinkEffectEmitter) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.c0.get(), (LinkRedirectionState) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.e0.get(), (DeepLinkAuthHandler) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f0.get(), (DeepLinkServicesHandler) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.g0.get(), (DeepLinkAccountHandler) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.h0.get(), (DeepLinkCartHandler) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.i0.get(), (DeepLinkConnectivityHandler) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.j0.get(), (DeepLinkCatalogHandler) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.k0.get(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get());
                case 55:
                    return new DynamicYieldLinkActivator(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.e());
                case 56:
                    return new LinkRedirectionState((LinkEffectEmitter) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.c0.get());
                case 57:
                    return new DeepLinkAuthHandler((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (LinkEffectEmitter) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.c0.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), (LinkRedirectionState) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.e0.get());
                case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                    return new DeepLinkServicesHandler((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (LinkEffectEmitter) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.c0.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), (DeepLinkAuthHandler) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f0.get());
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    return new DeepLinkAccountHandler((LinkEffectEmitter) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.c0.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), (LinkRedirectionState) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.e0.get());
                case 60:
                    return new DeepLinkCartHandler((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (LinkEffectEmitter) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.c0.get(), new WebAppLinkBuilder(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.E()));
                case 61:
                    return new DeepLinkConnectivityHandler((LinkEffectEmitter) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.c0.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), (LinkRedirectionState) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.e0.get());
                case 62:
                    return new DeepLinkCatalogHandler((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (LinkEffectEmitter) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.c0.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D());
                case 63:
                    return new AppLinkHandler((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), new WebAppLinkBuilder(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.E()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.G2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.w0(), (DynamicYieldLinkActivator) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.d0.get(), (LinkEffectEmitter) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.c0.get());
                case 64:
                    return new LiveVideoViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a, daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.T0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.c2());
                case EACTags.ELEMENT_LIST /* 65 */:
                    Application applicationA6 = ApplicationContextModule_ProvideApplicationFactory.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a);
                    RequireCachedAppConfigUseCase requireCachedAppConfigUseCaseE3 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E();
                    ListenAppsFlyerDeeplinkUseCase listenAppsFlyerDeeplinkUseCaseZ1 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.Z1();
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl16 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new MainActivityViewModelImpl(applicationA6, requireCachedAppConfigUseCaseE3, listenAppsFlyerDeeplinkUseCaseZ1, (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y(), (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.e2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.m0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.g3(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.Q2(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), new GetECommerceStatusUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl16.E()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.C2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.W1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.Q1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.X2(), new UpdateAITooltipVisibilityUseCase((AICompanionRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl16.H1.get()), new HasAITooltipBeenDisplayedUseCase((AICompanionRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl16.H1.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.A(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.P2());
                case EACTags.ADDRESS /* 66 */:
                    return new MaintenanceViewModelImpl((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E());
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    RequireCachedAppConfigUseCase requireCachedAppConfigUseCaseE4 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E();
                    RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCaseF8 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F();
                    Logger logger5 = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
                    Monitor monitor5 = (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get();
                    AnalyticsTracker analyticsTrackerU4 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u();
                    NotificationBuilder notificationBuilderF2 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f();
                    NotificationsManager notificationsManager = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
                    DynamicFormSupervisorImpl dynamicFormSupervisorImplM = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.M();
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl17 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new MyInformationViewModelImpl(requireCachedAppConfigUseCaseE4, requireUserInAppDispatchUseCaseF8, logger5, monitor5, analyticsTrackerU4, notificationBuilderF2, notificationsManager, dynamicFormSupervisorImplM, new AddressErrorMessageMapper(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.e2(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.F(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.m1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.h3(), new GetUserConsentsUseCase((AccountRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl17.h1.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.j3(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.C2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.X2(), new GetProfileCivilitiesMappingUseCase((CivilityRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl17.h2.get()));
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    Monitor monitor6 = (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get();
                    RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCaseF9 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F();
                    ContactUsDelegateImpl contactUsDelegateImplY2 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y();
                    LVEventSender lVEventSender3 = (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get();
                    Logger logger6 = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
                    NotificationBuilder notificationBuilderF3 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f();
                    NotificationsManager notificationsManager2 = (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get();
                    AnalyticsTracker analyticsTrackerU5 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u();
                    UserSessionService userSessionServiceG2 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G();
                    RequireCachedAppConfigUseCase requireCachedAppConfigUseCaseE5 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E();
                    GetProfileUseCase getProfileUseCaseB2 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B();
                    GetOngoingOrdersUseCase getOngoingOrdersUseCaseA1 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.a1();
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl18 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new MyLvViewModelImpl(monitor6, requireUserInAppDispatchUseCaseF9, contactUsDelegateImplY2, lVEventSender3, logger6, notificationBuilderF3, notificationsManager2, analyticsTrackerU5, userSessionServiceG2, requireCachedAppConfigUseCaseE5, getProfileUseCaseB2, getOngoingOrdersUseCaseA1, new ClearOrdersCacheUseCase((OrderRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl18.z2.get()), new GetHotContentUseCase(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.a1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.b1(), new GetCareServiceListBffUseCase((CareServicesBffRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl18.W3.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl18.D(), (HotContentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl18.n4.get()), new GetCareServiceListBffUseCase((CareServicesBffRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl18.W3.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.j0(), new GetBookingsUseCase((BookingRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl18.d3.get()), new GetCertificateListUseCase((CertificateRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl18.Z1.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.G1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.b1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.v(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), new GetECommerceStatusUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl18.E()), new GetUserConsentsUseCase((AccountRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl18.h1.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.a2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.F1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.z());
                case EACTags.DISPLAY_IMAGE /* 69 */:
                    RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCaseF10 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F();
                    Logger logger7 = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
                    Monitor monitor7 = (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get();
                    AnalyticsTracker analyticsTrackerU6 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u();
                    LVEventSender lVEventSender4 = (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get();
                    AppsFlyerTrackerImpl appsFlyerTrackerImplV2 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v();
                    ContactUsDelegateImpl contactUsDelegateImplY3 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y();
                    UserSessionService userSessionServiceG3 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G();
                    NotificationBuilder notificationBuilderF4 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f();
                    GetCartFullUseCase getCartFullUseCaseL0 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.l0();
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl19 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new NativeCartViewModelImpl(requireUserInAppDispatchUseCaseF10, logger7, monitor7, analyticsTrackerU6, lVEventSender4, appsFlyerTrackerImplV2, contactUsDelegateImplY3, userSessionServiceG3, notificationBuilderF4, getCartFullUseCaseL0, daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.w(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.i(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.q2(), new GetCheckoutUrlUseCase((CartRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl19.A1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl19.D()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.k2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.k3(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.B2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.V1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.k0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.o(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.d3(), new ReportDYAddToCartEventUseCase((DynamicYieldRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl19.E2.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.t2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.Z0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.w2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.Y0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.X0());
                case 70:
                    RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCaseF11 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F();
                    SavedStateHandle savedStateHandle5 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a;
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl20 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new NativeLoginViewModelImpl(requireUserInAppDispatchUseCaseF11, savedStateHandle5, (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.g2(), new EmailValidationRules(), new FormPasswordValidationRules(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.M(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.c0(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.v2(), (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get(), new GetContactIdUseCase((AccountRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl20.h1.get()), new UpdateContactIdUseCase((UserPreferencesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl20.K.get()), new SetAppsFlyerCustomerIdUseCase((AppsFlyerRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl20.l0.get(), (UserPreferencesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl20.K.get()));
                case EACTags.MESSAGE_REFERENCE /* 71 */:
                    Application applicationA7 = ApplicationContextModule_ProvideApplicationFactory.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a);
                    SavedStateHandle savedStateHandle6 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a;
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl21 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new NativeRegisterViewModelImpl(applicationA7, savedStateHandle6, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), new EmailValidationRules(), new PhoneValidationRules(), new FormPasswordValidationRules(), new GenericFieldValidationRules(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.M(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.M(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.M(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.M(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.M(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.M(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.M(), new GetAccountStatusUseCase((AccountRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl21.h1.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.n2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.p2(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.x2(), new GetRegistrationFormUseCase(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.s(), (FormRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl21.V1.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.U());
                case 72:
                    Application applicationA8 = ApplicationContextModule_ProvideApplicationFactory.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a);
                    GetConsentForCustomisationTrackerUseCase getConsentForCustomisationTrackerUseCaseU0 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.u0();
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl22 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new NotificationsPreferencesViewModelImpl(applicationA8, getConsentForCustomisationTrackerUseCaseU0, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), (NotificationsPreferencesTracker) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E0.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), new GetNotificationsPreferencesUseCase((NotificationsPreferencesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl22.j1.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.Y2(), new SaveNotificationsPreferencesUseCase((NotificationsPreferencesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl22.j1.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f());
                case 73:
                    Application applicationA9 = ApplicationContextModule_ProvideApplicationFactory.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a);
                    AnalyticsTracker analyticsTrackerU7 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u();
                    UserSessionService userSessionServiceG4 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G();
                    GetLiveVideoUseCase getLiveVideoUseCaseT0 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.T0();
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl23 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new OnboardingViewModelImpl(applicationA9, analyticsTrackerU7, userSessionServiceG4, getLiveVideoUseCaseT0, daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.l3(), new SetNotificationsPermissionAskedUseCase((PermissionsRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl23.D4.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), new GetOnboardingStateUseCase((UserPreferencesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl23.K.get()), new SetOnboardingStateUseCase((UserPreferencesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl23.K.get()), (EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b0.get());
                case EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY /* 74 */:
                    return new OptOutPrivacyMenuViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                case EACTags.DEPRECATED /* 75 */:
                    return new OptionsViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), (BuildConfigProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get(), (AutomatedTestRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.A.get(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.e2(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.C2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.X2());
                case 76:
                    Application applicationA10 = ApplicationContextModule_ProvideApplicationFactory.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a);
                    SavedStateHandle savedStateHandle7 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a;
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl24 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new OrderReturnOrExchangeViewModelImpl(applicationA10, savedStateHandle7, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), new GetOrdersUseCase((OrderRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl24.z2.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), new GetOrderReturnReasonsUseCase((OrderRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl24.z2.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.F0(), new ConfirmOrderReturnUseCase((OrderRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl24.z2.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.O2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.T2(), new GetSizeGuideUseCase((CatalogRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl24.S2.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl24.D()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f());
                case EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID /* 77 */:
                    return new OrderReturnViewModelImpl(ApplicationContextModule_ProvideApplicationFactory.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), new GetOrderReturnReasonsUseCase((OrderRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.z2.get()), new ConfirmOrderReturnUseCase((OrderRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.z2.get()));
                case 78:
                    SavedStateHandle savedStateHandle8 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a;
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl25 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new OrderViewModelImpl(savedStateHandle8, (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), new GetOrdersUseCase((OrderRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl25.z2.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.a1(), new ClearOrdersCacheUseCase((OrderRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl25.z2.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.O0(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f());
                case 79:
                    Application applicationA11 = ApplicationContextModule_ProvideApplicationFactory.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a);
                    SavedStateHandle savedStateHandle9 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a;
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl26 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new OsaContactFormViewModelImpl(applicationA11, savedStateHandle9, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), (Json) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E.get(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), new PhoneValidationRules(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.M(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.M(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.M(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B(), new GetAccountStatusUseCase((AccountRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl26.h1.get()), new CancelAppointmentUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl26.E(), (OnlineStoreAppointmentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl26.l4.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f2(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), new ConfirmAppointmentUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl26.E(), (AppointmentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl26.y3.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.L0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.U(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.b1());
                case EACTags.UNIFORM_RESOURCE_LOCATOR /* 80 */:
                    RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCaseF12 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F();
                    Monitor monitor8 = (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get();
                    LVEventSender lVEventSender5 = (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get();
                    UserSessionService userSessionServiceG5 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G();
                    NotificationBuilder notificationBuilderF5 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f();
                    AnalyticsTracker analyticsTrackerU8 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u();
                    AppsFlyerTrackerImpl appsFlyerTrackerImplV3 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v();
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl27 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new OsaListViewModelImpl(requireUserInAppDispatchUseCaseF12, monitor8, lVEventSender5, userSessionServiceG5, notificationBuilderF5, analyticsTrackerU8, appsFlyerTrackerImplV3, new CancelAppointmentUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl27.E(), (OnlineStoreAppointmentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl27.l4.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.b1());
                case EACTags.ANSWER_TO_RESET /* 81 */:
                    SavedStateHandle savedStateHandle10 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a;
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl28 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new OsaLocationFormViewModelImpl(savedStateHandle10, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), (EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b0.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.T0(), new PatchUserConsentsUseCase((AccountRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl28.h1.get(), (LoginStateRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl28.P.get()), new PrebookAppointmentUseCase((AppointmentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl28.y3.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.z1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.U0(), new GetStoreTimeSlotListUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl28.E(), (AppointmentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl28.y3.get()), new GetStoreAvailabilityListUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl28.E(), (AppointmentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl28.y3.get()));
                case EACTags.HISTORICAL_BYTES /* 82 */:
                    return new OsaReasonsFormViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.Z());
                case 83:
                    return new PLPCatalogViewModelImpl((Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), (FilterCommand) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.o4.get(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a, daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.n0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.V1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.o(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.t2(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v(), new GetCatalogUseCase((CatalogRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.S2.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.B0());
                case 84:
                    return new PLPExclusiveViewModelImpl((Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), (FilterCommand) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.o4.get(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a, daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.G0(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.V1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.o(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.t2(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.B0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.G1());
                case 85:
                    Monitor monitor9 = (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get();
                    LVEventSender lVEventSender6 = (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get();
                    GetSkusPLPUseCase getSkusPLPUseCaseW1 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.w1();
                    GetWishlistUseCase getWishlistUseCaseK1 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K1();
                    NotificationBuilder notificationBuilderF6 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f();
                    IsProductInWishlistUseCase isProductInWishlistUseCaseV1 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.V1();
                    AddProductToWishlistUseCase addProductToWishlistUseCaseO = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.o();
                    DeleteProductFromWishlistUseCase deleteProductFromWishlistUseCaseK = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K();
                    RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCaseF13 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F();
                    ReportDYAddToWishlistEventUseCase reportDYAddToWishlistEventUseCaseT2 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.t2();
                    AnalyticsTracker analyticsTrackerU9 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u();
                    AppsFlyerTrackerImpl appsFlyerTrackerImplV4 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v();
                    SavedStateHandle savedStateHandle11 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a;
                    ContactUsDelegateImpl contactUsDelegateImplY4 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y();
                    UserSessionService userSessionServiceG6 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G();
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl29 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new PLPSkusViewModelImpl(monitor9, lVEventSender6, getSkusPLPUseCaseW1, getWishlistUseCaseK1, notificationBuilderF6, isProductInWishlistUseCaseV1, addProductToWishlistUseCaseO, deleteProductFromWishlistUseCaseK, requireUserInAppDispatchUseCaseF13, reportDYAddToWishlistEventUseCaseT2, analyticsTrackerU9, appsFlyerTrackerImplV4, savedStateHandle11, contactUsDelegateImplY4, userSessionServiceG6, new ReportDYSlotClickUseCase((DynamicYieldRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl29.E2.get(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl29.f50503j.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.B0());
                case 86:
                    return new PLPStoreModeViewModelImpl((Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), (FilterCommand) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.o4.get(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.n0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.V1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.o(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.t2(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.p1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.L(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.W1());
                case 87:
                    return new PSPStoreModeViewModelImpl((Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), (FilterCommand) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.o4.get(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.q1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.V1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.o(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.t2(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.p1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.L(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.W1());
                case 88:
                    return new PSPViewModelImpl((Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), (FilterCommand) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.o4.get(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.q1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.V1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.o(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.t2(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), new AddSearchHistoryProductUseCase((SearchHistoryRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.P3.get()));
                case 89:
                    SavedStateHandle savedStateHandle12 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a;
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl30 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new PdpViewModelImpl(savedStateHandle12, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), ApplicationContextModule_ProvideApplicationFactory.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), (PdpTracker) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.C0.get(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), new GetSizeGuideUseCase((CatalogRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl30.S2.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl30.D()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.R0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.z0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.n(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.L(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.j1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.J2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.H2(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.L1(), new GetECommerceStatusUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl30.E()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.O1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.V1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.r2(), new SubscribeBackInStockUseCase((BackInStockRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl30.V2.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl30.D()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.o(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.W1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.z(), new GetProductAvailabilityUseCase((CatalogRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl30.S2.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl30.D(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl30.E()), new ReportDYAddToCartEventUseCase((DynamicYieldRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl30.E2.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.A0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.y0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.j(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.t2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.l1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.u0(), new HasAITooltipBeenDisplayedUseCase((AICompanionRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl30.H1.get()), new UpdateAITooltipVisibilityUseCase((AICompanionRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl30.H1.get()));
                case Sink.ORIENTATION_90 /* 90 */:
                    Application applicationA12 = ApplicationContextModule_ProvideApplicationFactory.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a);
                    SavedStateHandle savedStateHandle13 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a;
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl31 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new PermissionsViewModelImpl(applicationA12, savedStateHandle13, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), (NotificationsPreferencesTracker) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E0.get(), new GetNotificationsPreferencesUseCase((NotificationsPreferencesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl31.j1.get()), new SaveNotificationsPreferencesUseCase((NotificationsPreferencesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl31.j1.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.v0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.u0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.P2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.e3());
                case 91:
                    return new PersonalSelectionsCurationAdvisorViewModelImpl(ApplicationContextModule_ProvideApplicationFactory.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a, (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.i2(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.k1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.x1(), new GetPersonalSelectionsDetailUseCase((PersonalSelectionsRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.S4.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.X1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.V2());
                case 92:
                    return new PersonalSelectionsInStoreViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.t2(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), ApplicationContextModule_ProvideApplicationFactory.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.o(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), new GetPersonalSelectionsDetailUseCase((PersonalSelectionsRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.S4.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.x1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.V1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y());
                case 93:
                    return new PersonalSelectionsListViewModelImpl((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), new GetPersonalSelectionsListUseCase((PersonalSelectionsRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.S4.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y());
                case 94:
                    return new PlaceSearchViewModelImpl(new GetPlaceAutocompleteUseCase((PlaceRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.c2.get()), new GetPlaceGeocodingByPlaceIdUseCase((PlaceRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.c2.get()));
                case 95:
                    return new PortalSliderViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.z());
                case 96:
                    return new PrebookSummaryViewModelImpl((CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.h1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.l(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.i3(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.J(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.G(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.C(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F());
                case 97:
                    Application applicationA13 = ApplicationContextModule_ProvideApplicationFactory.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a);
                    AnalyticsTracker analyticsTrackerU10 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u();
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl32 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl33 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new PrivacyViewModelImpl(applicationA13, analyticsTrackerU10, new GetConsentTypeUseCase((ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl32.p0.get()), new GetConsentListUseCase((ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl33.p0.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.P2(), new SetNotificationsPermissionAskedUseCase((PermissionsRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl33.D4.get()), new SetPiplCbdtAgreementUseCase((ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl33.p0.get()), new GetPiplCbdtAgreementUseCase((ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl33.p0.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.R1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.Q2(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.R2(), new UserHasConsentForAppsFlyerUseCase((ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl33.p0.get()), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D());
                case 98:
                    return new ProductFilterViewModel(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.n0(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.q1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                case 99:
                    return new QRCodeViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.d1(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get());
                default:
                    throw new AssertionError(i2);
            }
        }

        @Override // javax.inject.Provider
        public final Object get() {
            int i2 = this.f50522c;
            int i3 = i2 / 100;
            if (i3 == 0) {
                return a();
            }
            if (i3 != 1) {
                throw new AssertionError(i2);
            }
            DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl = this.f50521b;
            DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50520a;
            switch (i2) {
                case 100:
                    return new QuickAccessFiltersViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a, (FilterCommand) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.o4.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                case 101:
                    return new ReinsuranceViewModelImpl((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), new GetReinsuranceUseCase((CatalogRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.S2.get()));
                case 102:
                    SavedStateHandle savedStateHandle = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a;
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new RepairBffViewModelImpl(savedStateHandle, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), (LoginStateRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.P.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), new GetRepairStatusMapUseCase((RepairRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2.g3.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2.F()), new GetCareServiceListBffUseCase((CareServicesBffRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2.W3.get()), new CancelCareServiceBffUseCase((CareServicesBffRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2.W3.get()), new GetCareServiceDetailBffUseCase((CareServicesBffRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2.W3.get()), new UpdateCareServiceAppointmentBffUseCase((CareServicesBffRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl2.W3.get()));
                case 103:
                    SavedStateHandle savedStateHandle2 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a;
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new RepairViewModelImpl(savedStateHandle2, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), (LoginStateRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.P.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.c3(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.j0(), new GetCareServiceByIdUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.E(), (CareServicesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.Z3.get()), new GetRepairStatusMapUseCase((RepairRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.g3.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.F()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.x1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), new UpdateCareServiceAppointmentBffUseCase((CareServicesBffRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl3.W3.get()));
                case 104:
                    return new ScreenshotViewModelImpl(Contexts.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a));
                case 105:
                    RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCaseF = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F();
                    Logger logger = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
                    Monitor monitor = (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get();
                    AnalyticsTracker analyticsTrackerU = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u();
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl4 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl5 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new SearchViewModelImpl(requireUserInAppDispatchUseCaseF, logger, monitor, analyticsTrackerU, new GetLiveSearchUseCase((SearchRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl4.K4.get()), new GetTrendingListUseCase((SearchRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl4.K4.get()), new GetSearchHistoryUseCase((SearchHistoryRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl4.P3.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), new GetProductListBySkusUseCase((CatalogRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl4.S2.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl4.E()), new UpdateSearchHistoryUseCase((SearchHistoryRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl5.P3.get()), new GetAutocompleteListUseCase((SearchRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl4.K4.get()), new AddSearchHistoryProductUseCase((SearchHistoryRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl5.P3.get()), new AddSearchHistoryTextualUseCase((SearchHistoryRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl4.P3.get()));
                case 106:
                    Application applicationA = Contexts.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a);
                    Logger logger2 = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
                    Monitor monitor2 = (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get();
                    UserSessionService userSessionServiceG = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G();
                    AnalyticsTracker analyticsTrackerU2 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u();
                    RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCaseF2 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F();
                    IsFeatureAvailableUseCase isFeatureAvailableUseCaseD = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D();
                    GetCareServiceListUseCase getCareServiceListUseCaseJ0 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.j0();
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl6 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new ServicesViewModelImpl(applicationA, logger2, monitor2, userSessionServiceG, analyticsTrackerU2, requireUserInAppDispatchUseCaseF2, isFeatureAvailableUseCaseD, getCareServiceListUseCaseJ0, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.b1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), new GetPersonalSelectionsListUseCase((PersonalSelectionsRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl6.S4.get()), new GetBookingsUseCase((BookingRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl6.d3.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.v(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.z());
                case 107:
                    Application applicationA2 = Contexts.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a);
                    UserSessionService userSessionServiceG2 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G();
                    AnalyticsTracker analyticsTrackerU3 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u();
                    RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCaseF3 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F();
                    IsFeatureAvailableUseCase isFeatureAvailableUseCaseD2 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D();
                    GetProfileUseCase getProfileUseCaseB = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B();
                    daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.getClass();
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl7 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new SettingsViewModelImpl(applicationA2, userSessionServiceG2, analyticsTrackerU3, requireUserInAppDispatchUseCaseF3, isFeatureAvailableUseCaseD2, getProfileUseCaseB, new SettingsTracker(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl7.u()), new GetUserConsentsUseCase((AccountRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl7.h1.get()), new PatchUserConsentsUseCase((AccountRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl7.h1.get(), (LoginStateRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl7.P.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f());
                case 108:
                    return new SneakerDetailViewModel(new GetSneakerFaqUseCase(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.z2(), (LightUpRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.G2.get()));
                case 109:
                    return new SocialLoginViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), new LineSignInManagerImpl((EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b0.get()), new GoogleSignInManagerImpl((CredentialManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.l1.get(), (EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b0.get()), new KakaoSignInManagerImpl(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), new SocialLoginUseCase((TwistAuthRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.L0.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.v2());
                case 110:
                    Application applicationA3 = Contexts.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a);
                    SavedStateHandle savedStateHandle3 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a;
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl8 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new SocialRegisterViewModelImpl(applicationA3, savedStateHandle3, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), new GenericFieldValidationRules(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.M(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.M(), new SocialRegisterUseCase((TwistAuthRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl8.L0.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl8.F(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl8.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.U()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.x2(), new GetCompleteProfileFormUseCase(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.s(), (FormRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl8.V1.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D());
                case 111:
                    Logger logger3 = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
                    Application applicationA4 = Contexts.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a);
                    CoroutineDispatchers coroutineDispatchers = (CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n.get();
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl9 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new SplashScreenViewModelImpl(logger3, applicationA4, coroutineDispatchers, new DetermineUserInAppDispatchStatusUseCase(new GetDispatchAreaListUseCase((DispatchAreaListRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl9.F3.get()), new FindDispatchForPhoneUseCase((PhoneLocaleRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.d5.get()), new FindUserInAppDispatchUseCase((InAppDispatchRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.X.get()), new SaveUserInAppDispatchUseCase((InAppDispatchRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.X.get(), (LanguageManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.J3.get()), new ClearUserInAppDispatchUseCase((InAppDispatchRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.X.get())), new GetConfigsVersionUseCase((ConfigsVersionRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.H3.get()), new ApplyAutomatedTestConfigUseCase(new SaveSecurityCookieUseCase((AutomatedTestRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.A.get()), new UpdateEnvironmentUseCase(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.A2(), (UserPreferencesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.K.get()), (InAppDispatchRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.X.get()), new SetUiTestModeUseCase((AutomatedTestRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.A.get()), new ApplySavedSecurityCookieUseCase((AutomatedTestRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.A.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), new GetPiplCbdtAgreementUseCase((ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.p0.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), new NeedShowPrivacyConsentUseCase((ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.p0.get(), new GetConsentTypeUseCase((ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.p0.get()), (CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.n.get()), new HandleAppUpdateUseCase((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.f50503j.get(), (AppVersionRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.h5.get(), new OnAppUpdatedUseCase(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.y())), new SyncConfigsWithRevisionsUseCase((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.F(), new InitializeAppUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.F(), new com.vuitton.android.domain.usecase.analytics.UpdateContactIdUseCase((AccountRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.h1.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.R1(), new UpdateAnalyticsConsentUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.F(), (ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.p0.get()), new InitAnalyticsUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.F(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.E(), DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.z0), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.D()), new SendAbTestAnalyticsUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.F(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.E(), new SendHitUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.F(), DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.z0)), (AppConfigRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.e0.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.G(), (LoggerRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.j5.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.b0(), new AuthenticateGuestUseCase((TwistAuthRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.L0.get()), new RefreshWishlistUseCase((WishlistRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.Q1.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.t0(), new CreateATGSessionUseCase(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.b0(), (ATGSessionRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.Z0.get()), (AppInitializationRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.k5.get(), (CatalogRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.S2.get(), new InitPerfectCorpUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.F(), DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.m5))), (AppConfigRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.e0.get(), (ConnectedObjectsConfigRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.n3.get(), new AreConfigsInCacheUseCase(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.y2(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.E(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.z2()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.y(), new AreCachedConfigsUpToDateUseCase(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.y2(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.E(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.z2())), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.y2(), new ShouldUpdateOsUseCase(), new ShouldUpdateAppUseCase(), new IsAppInMaintenanceUseCase((MaintenanceRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.p5.get()), new GetSavedDeepLinkForRedirectionUseCase((DeepLinkCacheRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.u5.get()), new SaveDeepLinkForRedirectionUseCase((DeepLinkCacheRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.u5.get()), new ClearDeepLinkForRedirectionUseCase((DeepLinkCacheRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.u5.get()), new StartOpenAppMonitoringUseCase((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.f50503j.get(), (OpenAppTimestampRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.v5.get()), new EndOpenAppMonitoringUseCase((Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.n1.get(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.C(), (OpenAppTimestampRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.v5.get()), new GetConsentTypeUseCase((ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.p0.get()), new HasConsentsUseCase((ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.p0.get(), (CoroutineDispatchers) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.n.get()), new GetOnboardingStateUseCase((UserPreferencesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.K.get()), new SetOnboardingStateUseCase((UserPreferencesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.K.get()), new FetchAppLinkExclusionsUseCase((AppLinkRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.C3.get()), new PreloadAvatarsCacheUseCase((AvatarRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.N3.get()), new InitializeBotProtectionUseCase((BotProtectionRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.x5.get()), (RootDetector) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.l.get(), new UpdateEnvironmentUseCase(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.A2(), (UserPreferencesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl10.K.get()));
                case 112:
                    Application applicationA5 = Contexts.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a);
                    SavedStateHandle savedStateHandle4 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a;
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl11 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new SpotlightViewModelImpl(applicationA5, savedStateHandle4, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.q5), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), new PreCacheUseCase((SpotlightRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl11.B5.get()), new ListenPreCacheUseCase((SpotlightRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl11.B5.get()), new CancelCacheUseCase((SpotlightRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl11.B5.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), new GetSpotlightUseCase((SpotlightRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl11.B5.get()), new GetProductShortListUseCase((ProductRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl11.L1.get()));
                case 113:
                    SavedStateHandle savedStateHandle5 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a;
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl12 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new StoreModeViewModelImpl(savedStateHandle5, (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.p1(), new GetCatalogStoreModeUseCase((CatalogRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl12.S2.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), new EnableStoreModeUseCase((StoreModeRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl12.l3.get()), new GetStoreModeInfoUseCase((StoreModeRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl12.l3.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl12.B()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.L(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), new GetStoreModeValidityUseCase((StoreModeRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl12.l3.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K1(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.W1(), new GetLocalWishlistSummaryUseCase((WishlistRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl12.Q1.get()));
                case 114:
                    return new StoryViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), new GetStoryUseCase((StoryRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.E5.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.X(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a);
                case 115:
                    SavedStateHandle savedStateHandle6 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a;
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl13 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new ThankYouViewModelImpl(savedStateHandle6, (ChatCoordinator) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), (LoginStateRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.P.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), new SendCheckoutFeedbackUseCase((CartRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl13.A1.get()), new ReportDYPurchaseEventUseCase((DynamicYieldRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl13.E2.get()), new GetConfirmationDetailsUseCase((CartRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.A1.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E());
                case 116:
                    return new TheLookImmersiveArticleViewModelImpl(Contexts.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a, daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.i2(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), new GetImmersiveArticleDetailByKeyUseCase((ImmersiveArticleRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.A4.get()));
                case 117:
                    return new ThematicPlpViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.o(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.t2(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.V1(), new GetThematicPlpThemesUseCase((CatalogRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.S2.get()));
                case 118:
                    return new TopBarAvatarViewModelImpl((LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.F1(), (NotificationsManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.k1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B());
                case 119:
                    return new TravelDetailViewModelImpl(new DeleteTravelUseCase((TravelRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.G5.get()), new EditTravelUseCase((TravelRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.G5.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                case 120:
                    return new TravelFormViewModelImpl(new CreateTravelUseCase((TravelRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.G5.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.h0(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                case 121:
                    return new TravelListViewModelImpl(new GetTravelListUseCase((TravelRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.G5.get()));
                case 122:
                    RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCaseZ2 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.z2();
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl14 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new TutorialViewModelImpl(new GetWatchV3TutorialUseCase(requireCachedConnectedObjectsConfigUseCaseZ2, (WatchV3Repository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl14.v3.get()), new GetEarphoneTutorialUseCase(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.z2(), (EarphoneRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl14.p3.get()), new GetHorizonSpeakerTutorialUseCase(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.z2(), (HorizonSpeakerRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl14.t3.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                case 123:
                    return new UserWorldwideIdViewModelImpl((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), new GetUserWorldwideIdUseCase((AccountRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.h1.get()), new GetStoreModeAffiliationUseCase((StoreModeRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.l3.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.p1());
                case 124:
                    return new VideoViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get());
                case 125:
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl15 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl16 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new WatchDetailsViewModelImpl(new GetTravelListUseCase((TravelRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl15.G5.get()), new GetWatchUseCase((WatchRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl16.M2.get()), new GetWatchfacePresentationWithVersionUseCase(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.z2(), (WatchRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl16.M2.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                case 126:
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl17 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new WatchSettingsViewModel(new UnpairWatchV2UseCase((WatchRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl17.M2.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl17.F()), new RenameWatchUseCase((WatchRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.M2.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.h0(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                case CertificateBody.profileType /* 127 */:
                    return new WatchTutorialCategoriesViewModelImpl(new GetWatchTutorialCategoryListUseCase(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.z2(), (WatchRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.M2.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                case 128:
                    RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCaseZ3 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.z2();
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl18 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new WatchfacePresentationViewModelImpl(new GetWatchfacePresentationWithVersionUseCase(requireCachedConnectedObjectsConfigUseCaseZ3, (WatchRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl18.M2.get()), new GetWatchfacePresentationForUserUseCase(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.z2(), (WatchRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl18.M2.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl18.G()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u());
                case 129:
                    UserSessionService userSessionServiceG3 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G();
                    RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCaseF4 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F();
                    RequireCachedAppConfigUseCase requireCachedAppConfigUseCaseE = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E();
                    RefreshFacadeUserSessionUseCase refreshFacadeUserSessionUseCaseM2 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.m2();
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl19 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new WebViewViewModel(userSessionServiceG3, requireUserInAppDispatchUseCaseF4, requireCachedAppConfigUseCaseE, refreshFacadeUserSessionUseCaseM2, new GetConsentListUseCase((ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl19.p0.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.h0(), new GetCachedAccessTokenUseCase((UserPreferencesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl19.K.get()), new GetCheckoutUrlUseCase((CartRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl19.A1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl19.D()), new GetDeviceIdUseCase((DeviceIdRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl19.I5.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), new RefreshAuthFromCheckoutUseCase((TwistAuthRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl19.L0.get(), (AuthTokenRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl19.U.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl19.D(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl19.E(), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl19.v.get(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl19.f50503j.get()), (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get());
                case 130:
                    return new WelcomeViewModelImpl(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50511a, daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.T0(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), (EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b0.get());
                case 131:
                    return new WifiDeviceDetailViewModelImpl(new GetTrunkSpeakerFaqUseCase(daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.z2(), (TrunkSpeakerRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b.r3.get()));
                case 132:
                    Application applicationA6 = Contexts.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a);
                    Logger logger4 = (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get();
                    Monitor monitor3 = (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n1.get();
                    LVEventSender lVEventSender = (LVEventSender) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v.get();
                    AnalyticsTracker analyticsTrackerU4 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.u();
                    RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCaseF5 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F();
                    GetWishlistUseCase getWishlistUseCaseK1 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K1();
                    DeleteProductFromWishlistUseCase deleteProductFromWishlistUseCaseK = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.K();
                    IsStoreModeStillValidUseCase isStoreModeStillValidUseCaseW1 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.W1();
                    DisableStoreModeUseCase disableStoreModeUseCaseL = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.L();
                    GetProfileUseCase getProfileUseCaseB2 = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B();
                    DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl20 = daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.f50512b;
                    return new WishlistViewModelImpl(applicationA6, logger4, monitor3, lVEventSender, analyticsTrackerU4, requireUserInAppDispatchUseCaseF5, getWishlistUseCaseK1, deleteProductFromWishlistUseCaseK, isStoreModeStillValidUseCaseW1, disableStoreModeUseCaseL, getProfileUseCaseB2, new ShareWishlistContentUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl20.F(), (AuthTokenRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl20.U.get(), (WishlistRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl20.Q1.get()), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.x1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl.p1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.y());
                case 133:
                    return new BookingExperienceViewModelImpl.Factory() { // from class: com.vuitton.android.presentation.DaggerLVApplication_HiltComponents_SingletonC.ViewModelCImpl.SwitchingProvider.1
                        @Override // com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModelImpl.Factory
                        public final BookingExperienceViewModelImpl b(String str, String str2, String str3, boolean z) {
                            SwitchingProvider switchingProvider = SwitchingProvider.this;
                            DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl2 = switchingProvider.f50521b;
                            GetBookingFormUseCase getBookingFormUseCase = new GetBookingFormUseCase((BookingRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl2.f50512b.d3.get());
                            PostBookingFormUpdateUseCase postBookingFormUpdateUseCase = new PostBookingFormUpdateUseCase((BookingRepository) daggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl2.f50512b.d3.get());
                            DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl21 = switchingProvider.f50520a;
                            return new BookingExperienceViewModelImpl(str, str2, str3, z, getBookingFormUseCase, postBookingFormUpdateUseCase, daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl21.f(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl21.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl21.u(), (Monitor) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl21.n1.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl21.F());
                        }
                    };
                case 134:
                    return new BookingPassViewModelImpl.Factory() { // from class: com.vuitton.android.presentation.DaggerLVApplication_HiltComponents_SingletonC.ViewModelCImpl.SwitchingProvider.2
                        @Override // com.vuitton.android.presentation.screen.booking.pass.BookingPassViewModelImpl.Factory
                        public final BookingPassViewModelImpl a(String str) {
                            return new BookingPassViewModelImpl(str, new GetBookingPassUseCase((BookingRepository) SwitchingProvider.this.f50521b.f50512b.d3.get()));
                        }
                    };
                default:
                    throw new AssertionError(i2);
            }
        }
    }

    public DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl(DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl daggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl, SavedStateHandle savedStateHandle) {
        this.f50512b = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;
        this.f50511a = savedStateHandle;
        this.f50513c = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 0);
        this.d = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 1);
        this.f50514e = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 2);
        this.f50515f = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 3);
        this.g = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 4);
        this.f50516h = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 5);
        this.f50517i = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 6);
        this.f50518j = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 7);
        this.f50519k = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 8);
        this.l = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 9);
        this.m = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 10);
        this.n = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 11);
        this.o = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 12);
        this.p = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 13);
        this.q = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 14);
        this.r = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 15);
        this.s = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 16);
        this.t = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 17);
        this.u = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 18);
        this.v = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 19);
        this.w = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 20);
        this.x = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 21);
        this.y = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 22);
        this.z = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 23);
        this.A = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 24);
        this.B = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 25);
        this.C = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 26);
        this.D = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 27);
        this.E = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 28);
        this.F = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 29);
        this.G = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 30);
        this.H = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 31);
        this.I = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 32);
        this.J = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 33);
        this.K = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 34);
        this.L = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 35);
        this.M = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 36);
        this.N = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 37);
        this.O = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 38);
        this.P = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 39);
        this.Q = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 40);
        this.R = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 41);
        this.S = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 42);
        this.T = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 43);
        this.U = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 44);
        this.V = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 45);
        this.W = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 46);
        this.X = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 47);
        this.Y = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 48);
        this.Z = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 49);
        this.a0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 50);
        this.b0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 51);
        this.c0 = DoubleCheck.b(new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 53));
        this.d0 = DoubleCheck.b(new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 55));
        this.e0 = DoubleCheck.b(new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 56));
        this.f0 = DoubleCheck.b(new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 57));
        this.g0 = DoubleCheck.b(new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 58));
        this.h0 = DoubleCheck.b(new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 59));
        this.i0 = DoubleCheck.b(new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 60));
        this.j0 = DoubleCheck.b(new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 61));
        this.k0 = DoubleCheck.b(new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 62));
        this.l0 = DoubleCheck.b(new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 54));
        this.m0 = DoubleCheck.b(new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 63));
        this.n0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 52);
        this.o0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 64);
        this.p0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 65);
        this.q0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 66);
        this.r0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 67);
        this.s0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 68);
        this.t0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 69);
        this.u0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 70);
        this.v0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 71);
        this.w0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 72);
        this.x0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 73);
        this.y0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 74);
        this.z0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 75);
        this.A0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 76);
        this.B0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 77);
        this.C0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 78);
        this.D0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 79);
        this.E0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 80);
        this.F0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 81);
        this.G0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 82);
        this.H0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 83);
        this.I0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 84);
        this.J0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 85);
        this.K0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 86);
        this.L0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 87);
        this.M0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 88);
        this.N0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 89);
        this.O0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 90);
        this.P0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 91);
        this.Q0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 92);
        this.R0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 93);
        this.S0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 94);
        this.T0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 95);
        this.U0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 96);
        this.V0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 97);
        this.W0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 98);
        this.X0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 99);
        this.Y0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 100);
        this.Z0 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 101);
        this.a1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 102);
        this.b1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 103);
        this.c1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 104);
        this.d1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 105);
        this.e1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 106);
        this.f1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 107);
        this.g1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 108);
        this.h1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 109);
        this.i1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 110);
        this.j1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 111);
        this.k1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 112);
        this.l1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 113);
        this.m1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 114);
        this.n1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 115);
        this.o1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 116);
        this.p1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 117);
        this.q1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 118);
        this.r1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 119);
        this.s1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 120);
        this.t1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 121);
        this.u1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 122);
        this.v1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 123);
        this.w1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 124);
        this.x1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 125);
        this.y1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 126);
        this.z1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, CertificateBody.profileType);
        this.A1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 128);
        this.B1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 129);
        this.C1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 130);
        this.D1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 131);
        this.E1 = new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 132);
        this.F1 = SingleCheck.a(new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 133));
        this.G1 = SingleCheck.a(new SwitchingProvider(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, this, 134));
    }

    public final ClearContributionLinkToLaunchUseCase A() {
        return new ClearContributionLinkToLaunchUseCase((AppLinkRepository) this.f50512b.C3.get());
    }

    public final GetDYPdpChooseVariationUseCase A0() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new GetDYPdpChooseVariationUseCase((DynamicYieldRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E2.get(), new GetDynamicYieldCampaignUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E()));
    }

    public final GetTrackDetailUseCase A1() {
        return new GetTrackDetailUseCase((AudioGuideRepository) this.f50512b.p2.get());
    }

    public final ResetAppDataUseCase A2() {
        ClearAllConfigUseCase clearAllConfigUseCaseY = y();
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new ResetAppDataUseCase(clearAllConfigUseCaseY, new ResetLoginDetailsUseCase((AccountRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.h1.get(), (OrderRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.z2.get(), (WishlistRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.Q1.get()));
    }

    public final ConfirmCareServiceAddressBffUseCase B() {
        return new ConfirmCareServiceAddressBffUseCase((CareServicesBffRepository) this.f50512b.W3.get());
    }

    public final GetDYPlpChooseVariationUseCase B0() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new GetDYPlpChooseVariationUseCase((DynamicYieldRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E2.get(), new GetDynamicYieldCampaignUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E()));
    }

    public final GetTrunkSpeakerSkuListUseCase B1() {
        return new GetTrunkSpeakerSkuListUseCase(z2(), (TrunkSpeakerRepository) this.f50512b.r3.get());
    }

    public final ResetCartContainerUseCase B2() {
        return new ResetCartContainerUseCase((CartRepository) this.f50512b.A1.get());
    }

    public final ConfirmPreBookUseCase C() {
        return new ConfirmPreBookUseCase((BookingRepository) this.f50512b.d3.get());
    }

    public final GetDYRecommendedProductsUseCase C0() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new GetDYRecommendedProductsUseCase((DynamicYieldRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E2.get(), new GetDynamicYieldCampaignUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E()), (ProductRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.L1.get());
    }

    public final GetTrunkSpeakerVideoUseCase C1() {
        return new GetTrunkSpeakerVideoUseCase(z2(), (TrunkSpeakerRepository) this.f50512b.r3.get());
    }

    public final ResetDynamicYieldIdUseCase C2() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new ResetDynamicYieldIdUseCase((DynamicYieldRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E2.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D());
    }

    public final CreateCareServiceBffUseCase D() {
        return new CreateCareServiceBffUseCase((CareServicesBffRepository) this.f50512b.W3.get());
    }

    public final GetEarphoneSkuListUseCase D0() {
        return new GetEarphoneSkuListUseCase(z2(), (EarphoneRepository) this.f50512b.p3.get());
    }

    public final GetTryOnProductListUseCase D1() {
        return new GetTryOnProductListUseCase((ProductRepository) this.f50512b.L1.get());
    }

    public final SaveAccessDataUseCase D2() {
        return new SaveAccessDataUseCase((AudioGuideRepository) this.f50512b.p2.get());
    }

    public final CreateCareServiceUseCase E() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new CreateCareServiceUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), (CareServicesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.Z3.get());
    }

    public final GetEarphoneVideoUseCase E0() {
        return new GetEarphoneVideoUseCase(z2(), (EarphoneRepository) this.f50512b.p3.get());
    }

    public final GetTutorialUseCase E1() {
        return new GetTutorialUseCase((ProductRepository) this.f50512b.L1.get());
    }

    public final SaveAccessibilityPreferencesUseCase E2() {
        return new SaveAccessibilityPreferencesUseCase((AccessibilityPreferencesRepository) this.f50512b.B0.get());
    }

    public final DeleteAccountUseCase F() {
        return new DeleteAccountUseCase((AccountRepository) this.f50512b.h1.get());
    }

    public final GetExchangeVariationsUseCase F0() {
        return new GetExchangeVariationsUseCase((OrderRepository) this.f50512b.z2.get());
    }

    public final GetUserAvatarUseCase F1() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new GetUserAvatarUseCase((AvatarRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.N3.get(), new GetUserIdentifierUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B()));
    }

    public final SaveCompletedTrackUseCase F2() {
        return new SaveCompletedTrackUseCase((AudioGuideRepository) this.f50512b.p2.get());
    }

    public final DeleteAllPrebooksUseCase G() {
        return new DeleteAllPrebooksUseCase((BookingRepository) this.f50512b.d3.get());
    }

    public final GetExclusivePLPUseCase G0() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new GetExclusivePLPUseCase((CatalogRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.S2.get(), new GetSotTokenForTwistUserOrNullUseCase(b0()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E());
    }

    public final GetUserExclusiveSalesUseCase G1() {
        return new GetUserExclusiveSalesUseCase((ExclusiveSalesRepository) this.f50512b.c4.get(), new GetSotTokenForTwistUserOrNullUseCase(b0()));
    }

    public final SaveContributionLinkToLaunchUseCase G2() {
        return new SaveContributionLinkToLaunchUseCase((AppLinkRepository) this.f50512b.C3.get());
    }

    public final DeleteBookingUseCase H() {
        return new DeleteBookingUseCase((BookingRepository) this.f50512b.d3.get());
    }

    public final GetFaqCategoryListUseCase H0() {
        RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCaseZ2 = z2();
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new GetFaqCategoryListUseCase(requireCachedConnectedObjectsConfigUseCaseZ2, (EarphoneRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.p3.get(), (WatchV3Repository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.v3.get(), (LightUpRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G2.get(), (TrunkSpeakerRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.r3.get(), (HorizonSpeakerRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.t3.get());
    }

    public final GetWatchV3SkuListUseCase H1() {
        return new GetWatchV3SkuListUseCase(z2(), (WatchV3Repository) this.f50512b.v3.get());
    }

    public final SaveCustomizationUseCase H2() {
        return new SaveCustomizationUseCase((ProductRepository) this.f50512b.L1.get());
    }

    public final DeleteChatSessionFromHistoryUseCase I() {
        return new DeleteChatSessionFromHistoryUseCase((AICompanionRepository) this.f50512b.H1.get());
    }

    public final GetFaqItemListUseCase I0() {
        RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCaseZ2 = z2();
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new GetFaqItemListUseCase(requireCachedConnectedObjectsConfigUseCaseZ2, (WatchRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.M2.get(), (LightUpRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G2.get(), (TrunkSpeakerRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.r3.get(), (HorizonSpeakerRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.t3.get());
    }

    public final GetWatchV3VideoUseCase I1() {
        return new GetWatchV3VideoUseCase(z2(), (WatchV3Repository) this.f50512b.v3.get());
    }

    public final SaveUserAvatarUseCase I2() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new SaveUserAvatarUseCase((AvatarRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.N3.get(), new GetUserIdentifierUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B()));
    }

    public final DeletePrebookUseCase J() {
        return new DeletePrebookUseCase((BookingRepository) this.f50512b.d3.get());
    }

    public final GetFeedDiscoverUseCase J0() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new GetFeedDiscoverUseCase((FeedRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.j4.get(), new UpdateFeedWithLiveEventDataUseCase(T0()), G1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D());
    }

    public final GetWatchVideoUseCase J1() {
        return new GetWatchVideoUseCase(z2(), (WatchRepository) this.f50512b.M2.get());
    }

    public final SetBeautyConsentUseCase J2() {
        return new SetBeautyConsentUseCase((BeautyConsentRepository) this.f50512b.a3.get());
    }

    public final DeleteProductFromWishlistUseCase K() {
        return new DeleteProductFromWishlistUseCase((WishlistRepository) this.f50512b.Q1.get());
    }

    public final GetFeedForYouUseCase K0() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new GetFeedForYouUseCase((FeedRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.j4.get(), new UpdateFeedWithLiveEventDataUseCase(T0()), G1(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D());
    }

    public final GetWishlistUseCase K1() {
        return new GetWishlistUseCase((WishlistRepository) this.f50512b.Q1.get());
    }

    public final SetConsentsUseCase K2() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new SetConsentsUseCase((ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.p0.get(), new RemoveLastViewedProductListUseCase((LastViewedProductRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R3.get()), new SetDynamicYieldConsentUseCase((DynamicYieldRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E2.get()));
    }

    public final DisableStoreModeUseCase L() {
        return new DisableStoreModeUseCase((StoreModeRepository) this.f50512b.l3.get());
    }

    public final GetGuestAppointmentFormUseCase L0() {
        return new GetGuestAppointmentFormUseCase(s(), (FormRepository) this.f50512b.V1.get());
    }

    public final GetYmalProductListUseCase L1() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new GetYmalProductListUseCase((ProductRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.L1.get(), (AuthTokenRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.U.get(), (AnalyticsWrapperRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.z0.get());
    }

    public final SetMediaSpeedUseCase L2() {
        return new SetMediaSpeedUseCase(this.f50512b.w());
    }

    public final DynamicFormSupervisorImpl M() {
        return new DynamicFormSupervisorImpl((Logger) this.f50512b.f50503j.get());
    }

    public final GetHorizonSpeakerSkuListUseCase M0() {
        return new GetHorizonSpeakerSkuListUseCase(z2(), (HorizonSpeakerRepository) this.f50512b.t3.get());
    }

    public final HasAICompanionVideoBeenDisplayedUseCase M1() {
        return new HasAICompanionVideoBeenDisplayedUseCase((AICompanionRepository) this.f50512b.H1.get());
    }

    public final SetPlaylistUseCase M2() {
        return new SetPlaylistUseCase(this.f50512b.w());
    }

    public final EditAddressUseCase N() {
        return new EditAddressUseCase((AddressRepository) this.f50512b.f2.get());
    }

    public final GetHorizonSpeakerVideoUseCase N0() {
        return new GetHorizonSpeakerVideoUseCase(z2(), (HorizonSpeakerRepository) this.f50512b.t3.get());
    }

    public final HasCachedHotContentUseCase N1() {
        return new HasCachedHotContentUseCase((HotContentRepository) this.f50512b.n4.get());
    }

    public final SetShadeFinderIntroDoneUseCase N2() {
        return new SetShadeFinderIntroDoneUseCase((BeautyRepository) this.f50512b.Y2.get());
    }

    public final ForgetPasswordInitiateUseCase O() {
        return new ForgetPasswordInitiateUseCase((TwistAuthRepository) this.f50512b.L0.get());
    }

    public final GetInvoiceUseCase O0() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new GetInvoiceUseCase((OrderRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.z2.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D());
    }

    public final HasConsentedBeautyUseCase O1() {
        return new HasConsentedBeautyUseCase((BeautyConsentRepository) this.f50512b.a3.get());
    }

    public final SetupExchangeUseCase O2() {
        return new SetupExchangeUseCase((OrderRepository) this.f50512b.z2.get());
    }

    public final ForgetPasswordValidateUseCase P() {
        return new ForgetPasswordValidateUseCase((TwistAuthRepository) this.f50512b.L0.get());
    }

    public final GetKeepAllFaqUseCase P0() {
        return new GetKeepAllFaqUseCase(z2(), (LightUpRepository) this.f50512b.G2.get());
    }

    public final HasDoneShadeFinderIntroUseCase P1() {
        return new HasDoneShadeFinderIntroUseCase((BeautyRepository) this.f50512b.Y2.get());
    }

    public final ShouldRequestNotificationsPermissionUseCase P2() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new ShouldRequestNotificationsPermissionUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), (ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.p0.get(), (PermissionsRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D4.get(), (SdkVersionProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E4.get());
    }

    public final GetAccessDataUseCase Q() {
        return new GetAccessDataUseCase((AudioGuideRepository) this.f50512b.p2.get());
    }

    public final GetLandingPageDetailsByIdUseCase Q0() {
        return new GetLandingPageDetailsByIdUseCase((LandingPageRepository) this.f50512b.x4.get());
    }

    public final InitializeDynamicYieldUseCase Q1() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new InitializeDynamicYieldUseCase((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (DynamicYieldRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E2.get(), (InAppDispatchRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.X.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B(), new GetDynamicYieldCampaignUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.A(), new GetDynamicYieldPreferredServerUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E()));
    }

    public final StartAppsFlyerUseCase Q2() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new StartAppsFlyerUseCase((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (AppsFlyerRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.l0.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), new UserHasConsentForAppsFlyerUseCase((ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.p0.get()), new GetAnalyticsAndTrackersConsentUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), (ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.p0.get()));
    }

    public final GetAccessibilityPreferencesUseCase R() {
        return new GetAccessibilityPreferencesUseCase((AccessibilityPreferencesRepository) this.f50512b.B0.get());
    }

    public final GetLegalConsentUseCase R0() {
        return new GetLegalConsentUseCase((LegalConsentRepository) this.f50512b.N4.get());
    }

    public final InitializePrivacyRelatedToolsUseCase R1() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new InitializePrivacyRelatedToolsUseCase(new InitializeDynatraceUseCase(new GetFunctionalConsentUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), (ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.p0.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), (PrivacyRelatedToolRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.X4.get()), new InitializeTingyunUseCase(new GetFunctionalConsentUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), (ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.p0.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), (PrivacyRelatedToolRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.Z4.get()), new InitializeNotificationsManagerUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.A(), new com.vuitton.android.domain.usecase.analytics.UpdateContactIdUseCase((AccountRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.h1.get()), (PrivacyRelatedToolRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b5.get()));
    }

    public final StopAppsFlyerUseCase R2() {
        return new StopAppsFlyerUseCase((AppsFlyerRepository) this.f50512b.l0.get());
    }

    public final GetAccountActivationFormUseCase S() {
        return new GetAccountActivationFormUseCase(s(), (FormRepository) this.f50512b.V1.get());
    }

    public final GetLightUpVideoUseCase S0() {
        return new GetLightUpVideoUseCase(z2(), (LightUpRepository) this.f50512b.G2.get());
    }

    public final InsertLightUpProductUseCase S1() {
        return new InsertLightUpProductUseCase((LightUpRepository) this.f50512b.G2.get());
    }

    public final StopMediaUseCase S2() {
        return new StopMediaUseCase(this.f50512b.w());
    }

    public final GetAddressAutocompleteUseCase T() {
        return new GetAddressAutocompleteUseCase((PlaceRepository) this.f50512b.c2.get());
    }

    public final GetLiveVideoUseCase T0() {
        return new GetLiveVideoUseCase((VideoRepository) this.f50512b.g4.get());
    }

    public final IsAccessibilitySystemContrastEnabledUseCase T1() {
        return new IsAccessibilitySystemContrastEnabledUseCase((AccessibilityPreferencesRepository) this.f50512b.B0.get());
    }

    public final SubmitExchangeUseCase T2() {
        return new SubmitExchangeUseCase((OrderRepository) this.f50512b.z2.get());
    }

    public final GetAddressCivilitiesMappingUseCase U() {
        return new GetAddressCivilitiesMappingUseCase((CivilityRepository) this.f50512b.h2.get());
    }

    public final GetLocatedStoreListUseCase U0() {
        return new GetLocatedStoreListUseCase((StoreRepository) this.f50512b.H4.get());
    }

    public final IsDynamicYieldActivatedUseCase U1() {
        return new IsDynamicYieldActivatedUseCase((DynamicYieldRepository) this.f50512b.E2.get());
    }

    public final TransferCertificateUseCase U2() {
        return new TransferCertificateUseCase((CertificateRepository) this.f50512b.Z1.get());
    }

    public final GetAddressDetailsUseCase V() {
        return new GetAddressDetailsUseCase((PlaceRepository) this.f50512b.c2.get());
    }

    public final GetMainAddressFormUseCase V0() {
        return new GetMainAddressFormUseCase(s(), (FormRepository) this.f50512b.V1.get());
    }

    public final IsProductInWishlistUseCase V1() {
        return new IsProductInWishlistUseCase((WishlistRepository) this.f50512b.Q1.get());
    }

    public final UnlikePersonalSelectionsUseCase V2() {
        return new UnlikePersonalSelectionsUseCase((PersonalSelectionsRepository) this.f50512b.S4.get());
    }

    public final GetAirportListUseCase W() {
        return new GetAirportListUseCase((AirportRepository) this.f50512b.l2.get());
    }

    public final GetModel3dAssetUseCase W0() {
        return new GetModel3dAssetUseCase((Model3dAssetRepository) this.f50512b.u4.get());
    }

    public final IsStoreModeStillValidUseCase W1() {
        return new IsStoreModeStillValidUseCase((StoreModeRepository) this.f50512b.l3.get());
    }

    public final UnlockCertificateUseCase W2() {
        return new UnlockCertificateUseCase((CertificateRepository) this.f50512b.Z1.get());
    }

    public final GetAllAccessibilityValuesUseCase X() {
        return new GetAllAccessibilityValuesUseCase((AccessibilityPreferencesRepository) this.f50512b.B0.get());
    }

    public final GetNativeCartCommercialModalContentUseCase X0() {
        return new GetNativeCartCommercialModalContentUseCase(this.f50512b.E());
    }

    public final LikePersonalSelectionsUseCase X1() {
        return new LikePersonalSelectionsUseCase((PersonalSelectionsRepository) this.f50512b.S4.get());
    }

    public final UnsetAppsFlyerCustomerIdUseCase X2() {
        return new UnsetAppsFlyerCustomerIdUseCase((AppsFlyerRepository) this.f50512b.l0.get());
    }

    public final GetAllAvatarsUseCase Y() {
        return new GetAllAvatarsUseCase((AvatarRepository) this.f50512b.N3.get());
    }

    public final GetNativeCartCommercialModalTitleUseCase Y0() {
        return new GetNativeCartCommercialModalTitleUseCase(this.f50512b.E());
    }

    public final LinkParser Y1() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new LinkParser(new LinkClassifier((EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b0.get()), new PassAppLinkConverter(new LinkClassifier((EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b0.get())), (EnvironmentProvider) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.b0.get(), new WebAppLinkBuilder(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E()));
    }

    public final UnsubscribeBackInStockUseCase Y2() {
        return new UnsubscribeBackInStockUseCase((BackInStockRepository) this.f50512b.V2.get());
    }

    public final GetAppointmentReasonListUseCase Z() {
        return new GetAppointmentReasonListUseCase((AppointmentRepository) this.f50512b.y3.get());
    }

    public final GetNativeCartCommercialTextUseCase Z0() {
        return new GetNativeCartCommercialTextUseCase(this.f50512b.E());
    }

    public final ListenAppsFlyerDeeplinkUseCase Z1() {
        return new ListenAppsFlyerDeeplinkUseCase((AppsFlyerRepository) this.f50512b.l0.get());
    }

    public final UpdateAICompanionVideoVisibilityUseCase Z2() {
        return new UpdateAICompanionVideoVisibilityUseCase((AICompanionRepository) this.f50512b.H1.get());
    }

    @Override // dagger.hilt.android.internal.lifecycle.HiltViewModelFactory.ViewModelFactoriesEntryPoint
    public final LazyClassKeyMap a() {
        ImmutableMap.Builder builderA = ImmutableMap.a(122);
        builderA.d("com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl", this.f50513c);
        builderA.d("com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModelImpl", this.d);
        builderA.d("com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModelImpl", this.f50514e);
        builderA.d("com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModelImpl", this.f50515f);
        builderA.d("com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModelImpl", this.g);
        builderA.d("com.vuitton.android.presentation.screen.account.addressbook.AddressBookViewModelImpl", this.f50516h);
        builderA.d("com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl", this.f50517i);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListViewModelImpl", this.f50518j);
        builderA.d("com.vuitton.android.presentation.screen.options.appinfo.AppInfoViewModelImpl", this.f50519k);
        builderA.d("com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModelImpl", this.l);
        builderA.d("com.vuitton.android.presentation.screen.audioplayer.AudioPlayerViewModelImpl", this.m);
        builderA.d("com.vuitton.android.presentation.screen.authentication.AuthenticationViewModelImpl", this.n);
        builderA.d("com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl", this.o);
        builderA.d("com.vuitton.android.presentation.screen.booking.confirmation.BookingConfirmationViewModelImpl", this.p);
        builderA.d("com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl", this.q);
        builderA.d("com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl", this.r);
        builderA.d("com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffViewModelImpl", this.s);
        builderA.d("com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewModelImpl", this.t);
        builderA.d("com.vuitton.android.presentation.screen.catalog.CatalogRoutingViewModelImpl", this.u);
        builderA.d("com.vuitton.android.presentation.screen.catalog.CatalogViewModelImpl", this.v);
        builderA.d("com.vuitton.android.presentation.screen.certificates.nfc.CertificateNfcScanViewModelImpl", this.w);
        builderA.d("com.vuitton.android.presentation.screen.certificates.diamonds.transfer.CertificateTransferViewModelImpl", this.x);
        builderA.d("com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl", this.y);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectToWifiViewModelImpl", this.z);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailViewModelImpl", this.A);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel", this.B);
        builderA.d("com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModelImpl", this.C);
        builderA.d("com.vuitton.android.presentation.screen.deeplink.DeepLinkDispatcherViewModel", this.D);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.lightup.common.pairing.DeviceDetectedViewModel", this.E);
        builderA.d("com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModelImpl", this.F);
        builderA.d("com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl", this.G);
        builderA.d("com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl", this.H);
        builderA.d("com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl", this.I);
        builderA.d("com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModelImpl", this.J);
        builderA.d("com.vuitton.android.presentation.screen.account.editavatar.EditAvatarViewModelImpl", this.K);
        builderA.d("com.vuitton.android.presentation.screen.exclusivesales.ExclusiveSalesViewModelImpl", this.L);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesViewModel", this.M);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.faq.FaqViewModel", this.N);
        builderA.d("com.vuitton.android.presentation.screen.feed.FeedViewModelImpl", this.O);
        builderA.d("com.vuitton.android.presentation.screen.filter.quickaccess.FiltersOverlayViewModelImpl", this.P);
        builderA.d("com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl", this.Q);
        builderA.d("com.vuitton.android.presentation.screen.forceupdate.ForceUpdateViewModelImpl", this.R);
        builderA.d("com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModelImpl", this.S);
        builderA.d("com.vuitton.android.presentation.screen.cart.components.giftmessage.GiftMessageViewModelImpl", this.T);
        builderA.d("com.vuitton.android.presentation.screen.imagepicker.ImagePickerViewModel", this.U);
        builderA.d("com.vuitton.android.presentation.screen.imageviewer.ImageViewerViewModelImpl", this.V);
        builderA.d("com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl", this.W);
        builderA.d("com.vuitton.android.presentation.screen.account.inbox.InboxViewModelImpl", this.X);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.lightup.keepall.KeepAllDetailViewModel", this.Y);
        builderA.d("com.vuitton.android.presentation.screen.options.legaltext.LegalTextViewModelImpl", this.Z);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailViewModel", this.a0);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.LightUpScanViewModel", this.b0);
        builderA.d("com.vuitton.android.presentation.redirectlink.LinkViewModelImpl", this.n0);
        builderA.d("com.vuitton.android.presentation.screen.livevideo.LiveVideoViewModelImpl", this.o0);
        builderA.d("com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl", this.p0);
        builderA.d("com.vuitton.android.presentation.screen.maintenance.MaintenanceViewModelImpl", this.q0);
        builderA.d("com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl", this.r0);
        builderA.d("com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl", this.s0);
        builderA.d("com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl", this.t0);
        builderA.d("com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl", this.u0);
        builderA.d("com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl", this.v0);
        builderA.d("com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModelImpl", this.w0);
        builderA.d("com.vuitton.android.presentation.screen.onboarding.OnboardingViewModelImpl", this.x0);
        builderA.d("com.vuitton.android.presentation.screen.options.optoutprivacymenu.OptOutPrivacyMenuViewModelImpl", this.y0);
        builderA.d("com.vuitton.android.presentation.screen.options.OptionsViewModelImpl", this.z0);
        builderA.d("com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl", this.A0);
        builderA.d("com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnViewModelImpl", this.B0);
        builderA.d("com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl", this.C0);
        builderA.d("com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl", this.D0);
        builderA.d("com.vuitton.android.presentation.screen.osa.list.OsaListViewModelImpl", this.E0);
        builderA.d("com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl", this.F0);
        builderA.d("com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModelImpl", this.G0);
        builderA.d("com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl", this.H0);
        builderA.d("com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPExclusiveViewModelImpl", this.I0);
        builderA.d("com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPSkusViewModelImpl", this.J0);
        builderA.d("com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModelImpl", this.K0);
        builderA.d("com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModelImpl", this.L0);
        builderA.d("com.vuitton.android.presentation.screen.plp.viewmodels.impl.PSPViewModelImpl", this.M0);
        builderA.d("com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl", this.N0);
        builderA.d("com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl", this.O0);
        builderA.d("com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModelImpl", this.P0);
        builderA.d("com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModelImpl", this.Q0);
        builderA.d("com.vuitton.android.presentation.screen.personalselections.list.PersonalSelectionsListViewModelImpl", this.R0);
        builderA.d("com.vuitton.android.presentation.screen.placesearch.PlaceSearchViewModelImpl", this.S0);
        builderA.d("com.vuitton.android.presentation.screen.portal.PortalSliderViewModelImpl", this.T0);
        builderA.d("com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModelImpl", this.U0);
        builderA.d("com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl", this.V0);
        builderA.d("com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel", this.W0);
        builderA.d("com.vuitton.android.presentation.screen.account.lvpass.QRCodeViewModelImpl", this.X0);
        builderA.d("com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModelImpl", this.Y0);
        builderA.d("com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModelImpl", this.Z0);
        builderA.d("com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl", this.a1);
        builderA.d("com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl", this.b1);
        builderA.d("com.vuitton.android.presentation.screenshot.ScreenshotViewModelImpl", this.c1);
        builderA.d("com.vuitton.android.presentation.screen.search.SearchViewModelImpl", this.d1);
        builderA.d("com.vuitton.android.presentation.screen.services.ServicesViewModelImpl", this.e1);
        builderA.d("com.vuitton.android.presentation.screen.options.settings.SettingsViewModelImpl", this.f1);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerDetailViewModel", this.g1);
        builderA.d("com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModelImpl", this.h1);
        builderA.d("com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl", this.i1);
        builderA.d("com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl", this.j1);
        builderA.d("com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl", this.k1);
        builderA.d("com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl", this.l1);
        builderA.d("com.vuitton.android.presentation.screen.story.StoryViewModelImpl", this.m1);
        builderA.d("com.vuitton.android.presentation.screen.thankyou.ThankYouViewModelImpl", this.n1);
        builderA.d("com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModelImpl", this.o1);
        builderA.d("com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl", this.p1);
        builderA.d("com.vuitton.android.presentation.screen.mylv.TopBarAvatarViewModelImpl", this.q1);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailViewModelImpl", this.r1);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.travel.form.TravelFormViewModelImpl", this.s1);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListViewModelImpl", this.t1);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialViewModelImpl", this.u1);
        builderA.d("com.vuitton.android.presentation.screen.account.userworldwideid.UserWorldwideIdViewModelImpl", this.v1);
        builderA.d("com.vuitton.android.presentation.screen.video.VideoViewModelImpl", this.w1);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsViewModelImpl", this.x1);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsViewModel", this.y1);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories.WatchTutorialCategoriesViewModelImpl", this.z1);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationViewModelImpl", this.A1);
        builderA.d("com.vuitton.android.presentation.screen.webview.WebViewViewModel", this.B1);
        builderA.d("com.vuitton.android.presentation.screen.authentication.welcome.WelcomeViewModelImpl", this.C1);
        builderA.d("com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailViewModelImpl", this.D1);
        builderA.d("com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl", this.E1);
        return new LazyClassKeyMap(builderA.a(true));
    }

    public final GetAudioGuideUseCase a0() {
        return new GetAudioGuideUseCase((AudioGuideRepository) this.f50512b.p2.get());
    }

    public final GetOngoingOrdersUseCase a1() {
        return new GetOngoingOrdersUseCase((OrderRepository) this.f50512b.z2.get());
    }

    public final ListenProfileUseCase a2() {
        return new ListenProfileUseCase((AccountRepository) this.f50512b.h1.get());
    }

    public final UpdateBookingUseCase a3() {
        return new UpdateBookingUseCase((BookingRepository) this.f50512b.d3.get());
    }

    @Override // dagger.hilt.android.internal.lifecycle.HiltViewModelFactory.ViewModelFactoriesEntryPoint
    public final LazyClassKeyMap b() {
        return new LazyClassKeyMap(ImmutableMap.k("com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModelImpl", this.F1.get(), "com.vuitton.android.presentation.screen.booking.pass.BookingPassViewModelImpl", this.G1.get()));
    }

    public final GetAuthTokenUseCase b0() {
        return new GetAuthTokenUseCase((AuthTokenRepository) this.f50512b.U.get());
    }

    public final GetOnlineStoreAppointmentListUseCase b1() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new GetOnlineStoreAppointmentListUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), (OnlineStoreAppointmentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.l4.get());
    }

    public final ListenToLastViewedProductSkuListUseCase b2() {
        return new ListenToLastViewedProductSkuListUseCase((LastViewedProductRepository) this.f50512b.R3.get());
    }

    public final UpdateCareServiceAddressBffUseCase b3() {
        return new UpdateCareServiceAddressBffUseCase((CareServicesBffRepository) this.f50512b.W3.get());
    }

    public final GetAuthenticationFormUseCase c0() {
        return new GetAuthenticationFormUseCase(s(), (FormRepository) this.f50512b.V1.get());
    }

    public final GetOrdersHistoryWithMostExpensiveProductUseCase c1() {
        return new GetOrdersHistoryWithMostExpensiveProductUseCase((OrderRepository) this.f50512b.z2.get());
    }

    public final LiveVideoTracker c2() {
        return new LiveVideoTracker(this.f50512b.u());
    }

    public final UpdateCareServiceUseCase c3() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new UpdateCareServiceUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), (CareServicesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.Z3.get());
    }

    public final AcceptCareServiceBffUseCase d() {
        return new AcceptCareServiceBffUseCase((CareServicesBffRepository) this.f50512b.W3.get());
    }

    public final GetBookingMegatrioUseCase d0() {
        return new GetBookingMegatrioUseCase((BookingRepository) this.f50512b.d3.get());
    }

    public final GetPassUseCase d1() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new GetPassUseCase((PassRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.C2.get(), (AccountRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.h1.get());
    }

    public final LoginUseCase d2() {
        return new LoginUseCase((TwistAuthRepository) this.f50512b.L0.get());
    }

    public final UpdateCartItemQuantityUseCase d3() {
        return new UpdateCartItemQuantityUseCase((CartRepository) this.f50512b.A1.get());
    }

    public final ActivateDynamicYieldUseCase e() {
        return new ActivateDynamicYieldUseCase((DynamicYieldRepository) this.f50512b.E2.get());
    }

    public final GetBookingPersonalInfoFormUseCase e0() {
        return new GetBookingPersonalInfoFormUseCase(s(), (FormRepository) this.f50512b.V1.get());
    }

    public final GetPlaceGeocodingByLocationUseCase e1() {
        return new GetPlaceGeocodingByLocationUseCase((PlaceRepository) this.f50512b.c2.get());
    }

    public final LogoutUseCase e2() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new LogoutUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), new ClearWebViewCookiesUseCase((CookieCleaner) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.r2.get()), new ApplySavedSecurityCookieUseCase((AutomatedTestRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.A.get()), (OrderRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.z2.get(), (WishlistRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.Q1.get(), (TwistAuthRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.L0.get(), (SalesforceAuthRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.N0.get(), (PassRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.C2.get());
    }

    public final UpdateConsentForCustomisationTrackerUseCase e3() {
        return new UpdateConsentForCustomisationTrackerUseCase((ConsentRepository) this.f50512b.p0.get());
    }

    public final AddAddressUseCase f() {
        return new AddAddressUseCase((AddressRepository) this.f50512b.f2.get());
    }

    public final GetCNCityListUseCase f0() {
        return new GetCNCityListUseCase((AddressRepository) this.f50512b.f2.get());
    }

    public final GetPortalSliderFeedUseCase f1() {
        return new GetPortalSliderFeedUseCase((PortalRepository) this.f50512b.V4.get());
    }

    public final ModifyAppointmentUseCase f2() {
        return new ModifyAppointmentUseCase((AppointmentRepository) this.f50512b.y3.get());
    }

    public final UpdateLightUpProductUseCase f3() {
        return new UpdateLightUpProductUseCase((LightUpRepository) this.f50512b.G2.get());
    }

    public final AddCertificateChinaConsentUseCase g() {
        return new AddCertificateChinaConsentUseCase((AccountRepository) this.f50512b.h1.get());
    }

    public final GetCNCountyListUseCase g0() {
        return new GetCNCountyListUseCase((AddressRepository) this.f50512b.f2.get());
    }

    public final GetPostalCodeAutocompleteUseCase g1() {
        return new GetPostalCodeAutocompleteUseCase((PlaceRepository) this.f50512b.c2.get());
    }

    public final NativeLoginUseCase g2() {
        return new NativeLoginUseCase((TwistAuthRepository) this.f50512b.L0.get());
    }

    public final UpdateLocaleUseCase g3() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new UpdateLocaleUseCase((InAppDispatchRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.X.get(), (AppConfigRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.e0.get());
    }

    public final AddCertificateUseCase h() {
        return new AddCertificateUseCase((CertificateRepository) this.f50512b.Z1.get());
    }

    public final GetCachedUserIdUseCase h0() {
        return new GetCachedUserIdUseCase((UserPreferencesRepository) this.f50512b.K.get());
    }

    public final GetPreBookSummaryUseCase h1() {
        return new GetPreBookSummaryUseCase((BookingRepository) this.f50512b.d3.get());
    }

    public final PairWatchV2UseCase h2() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new PairWatchV2UseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), (WatchRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.M2.get());
    }

    public final UpdatePasswordUseCase h3() {
        return new UpdatePasswordUseCase((AccountRepository) this.f50512b.h1.get());
    }

    public final AddGiftMessageUseCase i() {
        return new AddGiftMessageUseCase((CartRepository) this.f50512b.A1.get());
    }

    public final GetCareServiceFormUseCase i0() {
        return new GetCareServiceFormUseCase(s(), (FormRepository) this.f50512b.V1.get());
    }

    public final GetProductAvailabilityInStoresUseCase i1() {
        return new GetProductAvailabilityInStoresUseCase((AvailabilityInStoreRepository) this.f50512b.r4.get());
    }

    public final PassAppLinkBuilder i2() {
        return new PassAppLinkBuilder(new GetLanguageTagOfFacadeMyLVApiUrlUseCase(this.f50512b.E()));
    }

    public final UpdatePreBookUseCase i3() {
        return new UpdatePreBookUseCase((BookingRepository) this.f50512b.d3.get());
    }

    public final AddLastViewedProductSkuUseCase j() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new AddLastViewedProductSkuUseCase((LastViewedProductRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.R3.get(), (RecommendedSourceRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.P4.get());
    }

    public final GetCareServiceListUseCase j0() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new GetCareServiceListUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), (CareServicesRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.Z3.get());
    }

    public final GetProductDetailUseCase j1() {
        RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCaseZ2 = z2();
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new GetProductDetailUseCase(requireCachedConnectedObjectsConfigUseCaseZ2, new GetECommerceStatusUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E()), (CatalogRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.S2.get(), (TrunkSpeakerRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.r3.get(), (HorizonSpeakerRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.t3.get(), new GetSotTokenForTwistUserOrNullUseCase(b0()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D());
    }

    public final PostChatMessageUseCase j2() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new PostChatMessageUseCase((AICompanionRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.H1.get(), (AnalyticsWrapperRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.z0.get(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get());
    }

    public final UpdateProfileInfoUseCase j3() {
        return new UpdateProfileInfoUseCase((AccountRepository) this.f50512b.h1.get());
    }

    public final AddMediaItemUseCase k() {
        return new AddMediaItemUseCase(this.f50512b.w());
    }

    public final GetCartContributionUseCase k0() {
        return new GetCartContributionUseCase((CartRepository) this.f50512b.A1.get());
    }

    public final GetProductShortUseCase k1() {
        return new GetProductShortUseCase((ProductRepository) this.f50512b.L1.get());
    }

    public final PutPrepareOrderUseCase k2() {
        return new PutPrepareOrderUseCase((CartRepository) this.f50512b.A1.get());
    }

    public final UpdateShoppingBagUseCase k3() {
        return new UpdateShoppingBagUseCase((CartRepository) this.f50512b.A1.get());
    }

    public final AddPreBookUseCase l() {
        return new AddPreBookUseCase((BookingRepository) this.f50512b.d3.get());
    }

    public final GetCartFullUseCase l0() {
        return new GetCartFullUseCase((CartRepository) this.f50512b.A1.get());
    }

    public final GetProductVariationsAvailabilityUseCase l1() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new GetProductVariationsAvailabilityUseCase((CatalogRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.S2.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E());
    }

    public final ReactToInAppDispatchChangeUseCase l2() {
        ResetAppDataUseCase resetAppDataUseCaseA2 = A2();
        DisableStoreModeUseCase disableStoreModeUseCaseL = L();
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new ReactToInAppDispatchChangeUseCase(resetAppDataUseCaseA2, disableStoreModeUseCaseL, new ShouldResetGdprPreferencesUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.C()), new ResetConsentsUseCase((ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.p0.get()), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.C(), new SaveUserInAppDispatchUseCase((InAppDispatchRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.X.get(), (LanguageManager) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.J3.get()), new SetPiplCbdtAgreementUseCase((ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.p0.get()), new AreAnalyticsInitializedUseCase(DoubleCheck.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.z0)), new DisableAnalyticsUseCase((AnalyticsWrapperRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.z0.get()), (CatalogRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.S2.get(), new PreloadAvatarsCacheUseCase((AvatarRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.N3.get()), new SetDynamicYieldLocaleUseCase((DynamicYieldRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E2.get()));
    }

    public final UpdateShowArLocationBottomSheetUseCase l3() {
        return new UpdateShowArLocationBottomSheetUseCase((ArLocationRepository) this.f50512b.F4.get());
    }

    public final AddProductListToWishlistUseCase m() {
        return new AddProductListToWishlistUseCase((WishlistRepository) this.f50512b.Q1.get());
    }

    public final GetCartSizeUseCase m0() {
        return new GetCartSizeUseCase((CartRepository) this.f50512b.A1.get());
    }

    public final GetProfileFormUseCase m1() {
        return new GetProfileFormUseCase(s(), (FormRepository) this.f50512b.V1.get());
    }

    public final RefreshFacadeUserSessionUseCase m2() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new RefreshFacadeUserSessionUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), (AccountRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.h1.get());
    }

    public final UpdateShowInboxLongPressTooltipUseCase m3() {
        return new UpdateShowInboxLongPressTooltipUseCase((InboxRepository) this.f50512b.B4.get());
    }

    public final AddProductToCartUseCase n() {
        return new AddProductToCartUseCase(new AddProductListToCartUseCase(new GetSotTokenForTwistUserOrNullUseCase(b0()), (CartRepository) this.f50512b.A1.get()));
    }

    public final GetCategoryPlpUseCase n0() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new GetCategoryPlpUseCase((CatalogRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.S2.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E());
    }

    public final GetRelatedProductsUseCase n1() {
        return new GetRelatedProductsUseCase((ProductRepository) this.f50512b.L1.get());
    }

    public final RegisterInitiateUseCase n2() {
        return new RegisterInitiateUseCase((TwistAuthRepository) this.f50512b.L0.get());
    }

    public final AddProductToWishlistUseCase o() {
        return new AddProductToWishlistUseCase((WishlistRepository) this.f50512b.Q1.get());
    }

    public final GetCertificateDetailUrlUseCase o0() {
        return new GetCertificateDetailUrlUseCase((CertificateRepository) this.f50512b.Z1.get());
    }

    public final GetRepairCancellationReasonUseCase o1() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new GetRepairCancellationReasonUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E(), (RepairRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.g3.get());
    }

    public final RegisterUseCase o2() {
        return new RegisterUseCase((TwistAuthRepository) this.f50512b.L0.get());
    }

    public final AuthenticateAtgCodeExchangeUseCase p() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new AuthenticateAtgCodeExchangeUseCase((SalesforceAuthRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.N0.get(), new FinaliseSalesforceAuthenticationUseCase((ATGSessionRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.Z0.get(), (SalesforceAuthRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.N0.get()));
    }

    public final GetChatHistoryListUseCase p0() {
        return new GetChatHistoryListUseCase((AICompanionRepository) this.f50512b.H1.get());
    }

    public final GetRmsCodeUseCase p1() {
        return new GetRmsCodeUseCase((StoreModeRepository) this.f50512b.l3.get());
    }

    public final RegisterValidateUseCase p2() {
        return new RegisterValidateUseCase((TwistAuthRepository) this.f50512b.L0.get());
    }

    public final AuthenticateCodeExchangeUseCase q() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new AuthenticateCodeExchangeUseCase((TwistAuthRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.L0.get(), (AuthTokenRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.U.get());
    }

    public final GetChatSessionByIdUseCase q0() {
        return new GetChatSessionByIdUseCase((AICompanionRepository) this.f50512b.H1.get());
    }

    public final GetSearchPLPUseCase q1() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new GetSearchPLPUseCase((SearchRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.K4.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E());
    }

    public final RemoveCartItemUseCase q2() {
        return new RemoveCartItemUseCase((CartRepository) this.f50512b.A1.get());
    }

    public final AuthenticationAvailabilityUseCase r() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new AuthenticationAvailabilityUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D());
    }

    public final GetCompletedTracksUseCase r0() {
        return new GetCompletedTracksUseCase((AudioGuideRepository) this.f50512b.p2.get());
    }

    public final GetSecondaryAddressFormUseCase r1() {
        return new GetSecondaryAddressFormUseCase(s(), (FormRepository) this.f50512b.V1.get());
    }

    public final RemoveCustomizationUseCase r2() {
        return new RemoveCustomizationUseCase((ProductRepository) this.f50512b.L1.get());
    }

    public final BestFormDispatchIdUseCase s() {
        return new BestFormDispatchIdUseCase(new GetDispatchIdentifierListForFormUseCase((FormRepository) this.f50512b.V1.get()));
    }

    public final GetConfirmedBookingsUseCase s0() {
        return new GetConfirmedBookingsUseCase((BookingRepository) this.f50512b.d3.get());
    }

    public final GetSfidTokenOrNullUseCase s1() {
        return new GetSfidTokenOrNullUseCase(b0());
    }

    public final RemoveSkuFromLastViewedProductListUseCase s2() {
        return new RemoveSkuFromLastViewedProductListUseCase((LastViewedProductRepository) this.f50512b.R3.get());
    }

    public final CalendarManager t() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new CalendarManager(Contexts.a(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50496a.f68523a), i2(), new GetCalendarEventsUseCase((CalendarRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.e4.get()), new RemoveCalendarEventUseCase((CalendarRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.e4.get()), new UpdateCalendarEventsUseCase((CalendarRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.e4.get()));
    }

    public final GetConnectedObjectListUseCase t0() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new GetConnectedObjectListUseCase(daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.D(), (LightUpRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.G2.get(), (WatchRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.M2.get());
    }

    public final GetShadeFinderConsentTimeStampUseCase t1() {
        return new GetShadeFinderConsentTimeStampUseCase((BeautyConsentRepository) this.f50512b.a3.get());
    }

    public final ReportDYAddToWishlistEventUseCase t2() {
        return new ReportDYAddToWishlistEventUseCase((DynamicYieldRepository) this.f50512b.E2.get());
    }

    public final CheckAppLinkExcludedUseCase u() {
        return new CheckAppLinkExcludedUseCase((AppLinkRepository) this.f50512b.C3.get());
    }

    public final GetConsentForCustomisationTrackerUseCase u0() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new GetConsentForCustomisationTrackerUseCase((ConsentRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.p0.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.F());
    }

    public final GetShadeFinderRecommendationsUseCase u1() {
        return new GetShadeFinderRecommendationsUseCase((ProductRepository) this.f50512b.L1.get());
    }

    public final ReportDYClickUseCase u2() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new ReportDYClickUseCase((DynamicYieldRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E2.get(), (Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get());
    }

    public final CheckEligibilityForPassUseCase v() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new CheckEligibilityForPassUseCase((PassRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.C2.get(), (AccountRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.h1.get());
    }

    public final GetContactabilityUseCase v0() {
        return new GetContactabilityUseCase((NotificationsPreferencesRepository) this.f50512b.j1.get());
    }

    public final GetShowInboxLongPressTooltipUseCase v1() {
        return new GetShowInboxLongPressTooltipUseCase((InboxRepository) this.f50512b.B4.get());
    }

    public final ReportDYLoginEventUseCase v2() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new ReportDYLoginEventUseCase((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B(), (DynamicYieldRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E2.get());
    }

    public final ChooseSamplesUseCase w() {
        return new ChooseSamplesUseCase((CartRepository) this.f50512b.A1.get());
    }

    public final GetContributionLinkFromAppLinkUseCase w0() {
        return new GetContributionLinkFromAppLinkUseCase((AppLinkRepository) this.f50512b.C3.get());
    }

    public final GetSkusPLPUseCase w1() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new GetSkusPLPUseCase((CatalogRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.S2.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E());
    }

    public final ReportDYRemoveFromCartEventUseCase w2() {
        return new ReportDYRemoveFromCartEventUseCase((DynamicYieldRepository) this.f50512b.E2.get());
    }

    public final ClearAccessDataUseCase x() {
        return new ClearAccessDataUseCase((AudioGuideRepository) this.f50512b.p2.get());
    }

    public final GetContributionLinkToLaunchUseCase x0() {
        return new GetContributionLinkToLaunchUseCase((AppLinkRepository) this.f50512b.C3.get());
    }

    public final GetSkusProductsListUseCase x1() {
        return new GetSkusProductsListUseCase((CatalogRepository) this.f50512b.S2.get());
    }

    public final ReportDYSignUpEventUseCase x2() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new ReportDYSignUpEventUseCase((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.B(), (DynamicYieldRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.E2.get());
    }

    public final ClearAllConfigUseCase y() {
        DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl = this.f50512b;
        return new ClearAllConfigUseCase((Logger) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.f50503j.get(), (AppConfigRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.e0.get(), (ConfigsVersionRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.H3.get(), (ConnectedObjectsConfigRepository) daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl.n3.get());
    }

    public final GetCrossSellProductListUseCase y0() {
        return new GetCrossSellProductListUseCase((ProductRepository) this.f50512b.L1.get());
    }

    public final GetSlasTokenOrNullUseCase y1() {
        return new GetSlasTokenOrNullUseCase(b0());
    }

    public final RequireCachedConfigsVersionUseCase y2() {
        return new RequireCachedConfigsVersionUseCase((ConfigsVersionRepository) this.f50512b.H3.get());
    }

    public final ClearCachedTracksUseCase z() {
        return new ClearCachedTracksUseCase((AudioGuideRepository) this.f50512b.p2.get());
    }

    public final GetCustomizationUseCase z0() {
        return new GetCustomizationUseCase((ProductRepository) this.f50512b.L1.get());
    }

    public final GetStoreListByCodesUseCase z1() {
        return new GetStoreListByCodesUseCase((StoreRepository) this.f50512b.H4.get());
    }

    public final RequireCachedConnectedObjectsConfigUseCase z2() {
        return new RequireCachedConnectedObjectsConfigUseCase((ConnectedObjectsConfigRepository) this.f50512b.n3.get());
    }
}

package com.vuitton.android.data.dto.config;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\ba\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 k2\u00020\u0001:\u0002lkBù\b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u00100\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u00101\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u00105\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u00106\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u00107\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u00109\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010=\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010?\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010A\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010B\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010C\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010D\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010E\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010F\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010G\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010H\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010I\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010J\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010K\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010L\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010M\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010N\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010O\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010P\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010R\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010S\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010T\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010U\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010V\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010W\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010X\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010Y\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010Z\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010[\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\\\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010]\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010^\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010_\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010`\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010a\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\bb\u0010cBá\u0007\b\u0010\u0012\u0006\u0010e\u001a\u00020d\u0012\u0006\u0010f\u001a\u00020d\u0012\u0006\u0010g\u001a\u00020d\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010 \u001a\u0004\u0018\u00010\u0002\u0012\b\u0010!\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010#\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010$\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010%\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010&\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010'\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010(\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010)\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010*\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010+\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010,\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010-\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010.\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010/\u001a\u0004\u0018\u00010\u0002\u0012\b\u00100\u001a\u0004\u0018\u00010\u0002\u0012\b\u00101\u001a\u0004\u0018\u00010\u0002\u0012\b\u00102\u001a\u0004\u0018\u00010\u0002\u0012\b\u00103\u001a\u0004\u0018\u00010\u0002\u0012\b\u00104\u001a\u0004\u0018\u00010\u0002\u0012\b\u00105\u001a\u0004\u0018\u00010\u0002\u0012\b\u00106\u001a\u0004\u0018\u00010\u0002\u0012\b\u00107\u001a\u0004\u0018\u00010\u0002\u0012\b\u00108\u001a\u0004\u0018\u00010\u0002\u0012\b\u00109\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010:\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010;\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010<\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010=\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010>\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010?\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010@\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010A\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010B\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010C\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010D\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010E\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010F\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010G\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010H\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010I\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010J\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010K\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010L\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010M\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010N\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010O\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010P\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010Q\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010R\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010S\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010T\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010U\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010V\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010W\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010X\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010Y\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010Z\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010[\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\\\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010]\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010^\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010_\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010`\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010a\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010i\u001a\u0004\u0018\u00010h¢\u0006\u0004\bb\u0010j¨\u0006m"}, d2 = {"Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;", "", "", "isAccessibilityDisableAutoplayEnabled", "isAccessibilityEnhancedContrastEnabled", "isAccessibilitySimplifyNavigationEnabled", "isAccessibilityStatementEnabled", "isAddressAutocompleteEnabled", "isAddToCartCrossSellEnabled", "isAICompanionEnabled", "isAICompanionPdpEnabled", "isAICompanionSessionIdEnabled", "isAppsflyerEnabled", "isAutocompletePostalCodeEnabled", "isBackInStockEnabled", "isBackInStockLegalConsentEnabled", "isBackOrderDisclaimerEnabled", "isBackOrderDisclaimerEnhancementEnabled", "isBatchSdkEnabled", "isBookingMyExperiencesEnabled", "isCareServicesEnabled", "isCareServicesMigrationEnabled", "isChinaPrivacyEnabled", "isContactUsCareServiceEnabled", "isContactUsEnabled", "isDiamondsPdpEnabled", "isDistantRepairsBillingAddressEnabled", "isDistantRepairsCallEnabled", "isDistantRepairsCancellationReasonEnabled", "isDistantRepairsEmailEnabled", "isDistantRepairsEnabled", "isDistantRepairsModifyEnabled", "isDistantRepairsPaymentMethodsIconsEnabled", "isDistantRepairsShippedFromEhubEnabled", "isDistantRepairsTutorialEnabled", "isDistantRepairsVideoCallEnabled", "isDistantRepairsZipCodeEnabled", "isDynamicYieldEnabled", "isDynatraceSdkEnabled", "isEmailTrackingConsentEnabled", "isExclusiveOfferEnabled", "isFeedForYouDefaultTabEnabled", "isFindAStoreEnabled", "isGcmOptOutEnabled", "isGoogleAnalyticsDisabled", "isGoogleCustomerMatchEnabled", "isGoogleSignInEnabled", "isHorizonSpeakerEnabled", "isInboxEnabled", "isKakaoSignInEnabled", "isKeepAllEnabled", "isLegalNoticeRegisterEnabled", "isLineSignInEnabled", "isMyCertificatesEnabled", "isNativeAccountActivationEnabled", "isNativeCartEnabled", "isNativeLoginEnabled", "isNativeRegisterEnabled", "isNativeRegisterKisaEnabled", "isNativeShareCatalogEnabled", "isNativeShareImmersiveEnabled", "isNativeShareWishlistEnabled", "isNativeThankYouPageFeedbackEnabled", "isNativeThankYouPageRedirectEnabled", "isOnboardingEnabled", "isOnlineStoreAppointmentCidEnabled", "isOnlineStoreAppointmentCreationEnabled", "isOrderExchangeEnabled", "isOrderReturnEnabled", "isOrdersInvoiceEnabled", "isOsaGuestEnabled", "isOsaKisaV2Enabled", "isOsaModifyEnabled", "isOsaReasonsEnabled", "isPayByLinkEnabled", "isPdpAGECLawEnabled", "isPerfectLogsEnabled", "isPersonalSelectionsEnabled", "isPlpRevampV3Phase2Enabled", "isPlpV3GridViewEnabled", "isPowerFrontCareServiceEnabled", "isPowerFrontEnabled", "isProfilePhoneNumberEnabled", "isPuertoRicoEnabled", "isQrCodeEnabled", "isRefreshAuthCheckoutEnabled", "isRegistrationAddressStepEnabled", "isSensorDataEnabled", "isSizeGuidePimEnabled", "isSmsConsentEnabled", "isSneakerEnabled", "isSocialSignInDebugEnabled", "isStoreModeEnabled", "isStoreModeV2Enabled", "isTingyunSdkEnabled", "isTrunkSpeakerEnabled", "isTwistEnabled", "isYMALEnabled", "<init>", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "", "seen0", "seen1", "seen2", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IIILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class FeaturesConfigDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public final Boolean A;
    public final Boolean A0;
    public final Boolean B;
    public final Boolean B0;
    public final Boolean C;
    public final Boolean C0;
    public final Boolean D;
    public final Boolean D0;
    public final Boolean E;
    public final Boolean E0;
    public final Boolean F;
    public final Boolean F0;
    public final Boolean G;
    public final Boolean G0;
    public final Boolean H;
    public final Boolean H0;
    public final Boolean I;
    public final Boolean I0;
    public final Boolean J;
    public final Boolean J0;
    public final Boolean K;
    public final Boolean K0;
    public final Boolean L;
    public final Boolean L0;
    public final Boolean M;
    public final Boolean M0;
    public final Boolean N;
    public final Boolean N0;
    public final Boolean O;
    public final Boolean O0;
    public final Boolean P;
    public final Boolean P0;
    public final Boolean Q;
    public final Boolean Q0;
    public final Boolean R;
    public final Boolean S;
    public final Boolean T;
    public final Boolean U;
    public final Boolean V;
    public final Boolean W;
    public final Boolean X;
    public final Boolean Y;
    public final Boolean Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Boolean f45404a;
    public final Boolean a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Boolean f45405b;
    public final Boolean b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Boolean f45406c;
    public final Boolean c0;
    public final Boolean d;
    public final Boolean d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Boolean f45407e;
    public final Boolean e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Boolean f45408f;
    public final Boolean f0;
    public final Boolean g;
    public final Boolean g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Boolean f45409h;
    public final Boolean h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Boolean f45410i;
    public final Boolean i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Boolean f45411j;
    public final Boolean j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Boolean f45412k;
    public final Boolean k0;
    public final Boolean l;
    public final Boolean l0;
    public final Boolean m;
    public final Boolean m0;
    public final Boolean n;
    public final Boolean n0;
    public final Boolean o;
    public final Boolean o0;
    public final Boolean p;
    public final Boolean p0;
    public final Boolean q;
    public final Boolean q0;
    public final Boolean r;
    public final Boolean r0;
    public final Boolean s;
    public final Boolean s0;
    public final Boolean t;
    public final Boolean t0;
    public final Boolean u;
    public final Boolean u0;
    public final Boolean v;
    public final Boolean v0;
    public final Boolean w;
    public final Boolean w0;
    public final Boolean x;
    public final Boolean x0;
    public final Boolean y;
    public final Boolean y0;
    public final Boolean z;
    public final Boolean z0;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/config/FeaturesConfigDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<FeaturesConfigDto> serializer() {
            return FeaturesConfigDto$$serializer.f45413a;
        }
    }

    /* JADX WARN: Failed to calculate best type for var: r19v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r19v0 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to set immutable type for var: r19v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r19v0 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setImmutableType(TypeInferenceVisitor.java:111)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:102)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:102)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v4 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 5 more
        */
    public /* synthetic */ FeaturesConfigDto(int r18, int r19, int r20, java.lang.Boolean r21, java.lang.Boolean r22, java.lang.Boolean r23, java.lang.Boolean r24, java.lang.Boolean r25, java.lang.Boolean r26, java.lang.Boolean r27, java.lang.Boolean r28, java.lang.Boolean r29, java.lang.Boolean r30, java.lang.Boolean r31, java.lang.Boolean r32, java.lang.Boolean r33, java.lang.Boolean r34, java.lang.Boolean r35, java.lang.Boolean r36, java.lang.Boolean r37, java.lang.Boolean r38, java.lang.Boolean r39, java.lang.Boolean r40, java.lang.Boolean r41, java.lang.Boolean r42, java.lang.Boolean r43, java.lang.Boolean r44, java.lang.Boolean r45, java.lang.Boolean r46, java.lang.Boolean r47, java.lang.Boolean r48, java.lang.Boolean r49, java.lang.Boolean r50, java.lang.Boolean r51, java.lang.Boolean r52, java.lang.Boolean r53, java.lang.Boolean r54, java.lang.Boolean r55, java.lang.Boolean r56, java.lang.Boolean r57, java.lang.Boolean r58, java.lang.Boolean r59, java.lang.Boolean r60, java.lang.Boolean r61, java.lang.Boolean r62, java.lang.Boolean r63, java.lang.Boolean r64, java.lang.Boolean r65, java.lang.Boolean r66, java.lang.Boolean r67, java.lang.Boolean r68, java.lang.Boolean r69, java.lang.Boolean r70, java.lang.Boolean r71, java.lang.Boolean r72, java.lang.Boolean r73, java.lang.Boolean r74, java.lang.Boolean r75, java.lang.Boolean r76, java.lang.Boolean r77, java.lang.Boolean r78, java.lang.Boolean r79, java.lang.Boolean r80, java.lang.Boolean r81, java.lang.Boolean r82, java.lang.Boolean r83, java.lang.Boolean r84, java.lang.Boolean r85, java.lang.Boolean r86, java.lang.Boolean r87, java.lang.Boolean r88, java.lang.Boolean r89, java.lang.Boolean r90, java.lang.Boolean r91, java.lang.Boolean r92, java.lang.Boolean r93, java.lang.Boolean r94, java.lang.Boolean r95, java.lang.Boolean r96, java.lang.Boolean r97, java.lang.Boolean r98, java.lang.Boolean r99, java.lang.Boolean r100, java.lang.Boolean r101, java.lang.Boolean r102, java.lang.Boolean r103, java.lang.Boolean r104, java.lang.Boolean r105, java.lang.Boolean r106, java.lang.Boolean r107, java.lang.Boolean r108, java.lang.Boolean r109, java.lang.Boolean r110, java.lang.Boolean r111, java.lang.Boolean r112, java.lang.Boolean r113, java.lang.Boolean r114, java.lang.Boolean r115, kotlinx.serialization.internal.SerializationConstructorMarker r116) {
        /*
            Method dump skipped, instruction units count: 1138
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.dto.config.FeaturesConfigDto.<init>(int, int, int, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, kotlinx.serialization.internal.SerializationConstructorMarker):void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FeaturesConfigDto)) {
            return false;
        }
        FeaturesConfigDto featuresConfigDto = (FeaturesConfigDto) obj;
        return Intrinsics.c(this.f45404a, featuresConfigDto.f45404a) && Intrinsics.c(this.f45405b, featuresConfigDto.f45405b) && Intrinsics.c(this.f45406c, featuresConfigDto.f45406c) && Intrinsics.c(this.d, featuresConfigDto.d) && Intrinsics.c(this.f45407e, featuresConfigDto.f45407e) && Intrinsics.c(this.f45408f, featuresConfigDto.f45408f) && Intrinsics.c(this.g, featuresConfigDto.g) && Intrinsics.c(this.f45409h, featuresConfigDto.f45409h) && Intrinsics.c(this.f45410i, featuresConfigDto.f45410i) && Intrinsics.c(this.f45411j, featuresConfigDto.f45411j) && Intrinsics.c(this.f45412k, featuresConfigDto.f45412k) && Intrinsics.c(this.l, featuresConfigDto.l) && Intrinsics.c(this.m, featuresConfigDto.m) && Intrinsics.c(this.n, featuresConfigDto.n) && Intrinsics.c(this.o, featuresConfigDto.o) && Intrinsics.c(this.p, featuresConfigDto.p) && Intrinsics.c(this.q, featuresConfigDto.q) && Intrinsics.c(this.r, featuresConfigDto.r) && Intrinsics.c(this.s, featuresConfigDto.s) && Intrinsics.c(this.t, featuresConfigDto.t) && Intrinsics.c(this.u, featuresConfigDto.u) && Intrinsics.c(this.v, featuresConfigDto.v) && Intrinsics.c(this.w, featuresConfigDto.w) && Intrinsics.c(this.x, featuresConfigDto.x) && Intrinsics.c(this.y, featuresConfigDto.y) && Intrinsics.c(this.z, featuresConfigDto.z) && Intrinsics.c(this.A, featuresConfigDto.A) && Intrinsics.c(this.B, featuresConfigDto.B) && Intrinsics.c(this.C, featuresConfigDto.C) && Intrinsics.c(this.D, featuresConfigDto.D) && Intrinsics.c(this.E, featuresConfigDto.E) && Intrinsics.c(this.F, featuresConfigDto.F) && Intrinsics.c(this.G, featuresConfigDto.G) && Intrinsics.c(this.H, featuresConfigDto.H) && Intrinsics.c(this.I, featuresConfigDto.I) && Intrinsics.c(this.J, featuresConfigDto.J) && Intrinsics.c(this.K, featuresConfigDto.K) && Intrinsics.c(this.L, featuresConfigDto.L) && Intrinsics.c(this.M, featuresConfigDto.M) && Intrinsics.c(this.N, featuresConfigDto.N) && Intrinsics.c(this.O, featuresConfigDto.O) && Intrinsics.c(this.P, featuresConfigDto.P) && Intrinsics.c(this.Q, featuresConfigDto.Q) && Intrinsics.c(this.R, featuresConfigDto.R) && Intrinsics.c(this.S, featuresConfigDto.S) && Intrinsics.c(this.T, featuresConfigDto.T) && Intrinsics.c(this.U, featuresConfigDto.U) && Intrinsics.c(this.V, featuresConfigDto.V) && Intrinsics.c(this.W, featuresConfigDto.W) && Intrinsics.c(this.X, featuresConfigDto.X) && Intrinsics.c(this.Y, featuresConfigDto.Y) && Intrinsics.c(this.Z, featuresConfigDto.Z) && Intrinsics.c(this.a0, featuresConfigDto.a0) && Intrinsics.c(this.b0, featuresConfigDto.b0) && Intrinsics.c(this.c0, featuresConfigDto.c0) && Intrinsics.c(this.d0, featuresConfigDto.d0) && Intrinsics.c(this.e0, featuresConfigDto.e0) && Intrinsics.c(this.f0, featuresConfigDto.f0) && Intrinsics.c(this.g0, featuresConfigDto.g0) && Intrinsics.c(this.h0, featuresConfigDto.h0) && Intrinsics.c(this.i0, featuresConfigDto.i0) && Intrinsics.c(this.j0, featuresConfigDto.j0) && Intrinsics.c(this.k0, featuresConfigDto.k0) && Intrinsics.c(this.l0, featuresConfigDto.l0) && Intrinsics.c(this.m0, featuresConfigDto.m0) && Intrinsics.c(this.n0, featuresConfigDto.n0) && Intrinsics.c(this.o0, featuresConfigDto.o0) && Intrinsics.c(this.p0, featuresConfigDto.p0) && Intrinsics.c(this.q0, featuresConfigDto.q0) && Intrinsics.c(this.r0, featuresConfigDto.r0) && Intrinsics.c(this.s0, featuresConfigDto.s0) && Intrinsics.c(this.t0, featuresConfigDto.t0) && Intrinsics.c(this.u0, featuresConfigDto.u0) && Intrinsics.c(this.v0, featuresConfigDto.v0) && Intrinsics.c(this.w0, featuresConfigDto.w0) && Intrinsics.c(this.x0, featuresConfigDto.x0) && Intrinsics.c(this.y0, featuresConfigDto.y0) && Intrinsics.c(this.z0, featuresConfigDto.z0) && Intrinsics.c(this.A0, featuresConfigDto.A0) && Intrinsics.c(this.B0, featuresConfigDto.B0) && Intrinsics.c(this.C0, featuresConfigDto.C0) && Intrinsics.c(this.D0, featuresConfigDto.D0) && Intrinsics.c(this.E0, featuresConfigDto.E0) && Intrinsics.c(this.F0, featuresConfigDto.F0) && Intrinsics.c(this.G0, featuresConfigDto.G0) && Intrinsics.c(this.H0, featuresConfigDto.H0) && Intrinsics.c(this.I0, featuresConfigDto.I0) && Intrinsics.c(this.J0, featuresConfigDto.J0) && Intrinsics.c(this.K0, featuresConfigDto.K0) && Intrinsics.c(this.L0, featuresConfigDto.L0) && Intrinsics.c(this.M0, featuresConfigDto.M0) && Intrinsics.c(this.N0, featuresConfigDto.N0) && Intrinsics.c(this.O0, featuresConfigDto.O0) && Intrinsics.c(this.P0, featuresConfigDto.P0) && Intrinsics.c(this.Q0, featuresConfigDto.Q0);
    }

    public final int hashCode() {
        Boolean bool = this.f45404a;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Boolean bool2 = this.f45405b;
        int iHashCode2 = (iHashCode + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.f45406c;
        int iHashCode3 = (iHashCode2 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        Boolean bool4 = this.d;
        int iHashCode4 = (iHashCode3 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        Boolean bool5 = this.f45407e;
        int iHashCode5 = (iHashCode4 + (bool5 == null ? 0 : bool5.hashCode())) * 31;
        Boolean bool6 = this.f45408f;
        int iHashCode6 = (iHashCode5 + (bool6 == null ? 0 : bool6.hashCode())) * 31;
        Boolean bool7 = this.g;
        int iHashCode7 = (iHashCode6 + (bool7 == null ? 0 : bool7.hashCode())) * 31;
        Boolean bool8 = this.f45409h;
        int iHashCode8 = (iHashCode7 + (bool8 == null ? 0 : bool8.hashCode())) * 31;
        Boolean bool9 = this.f45410i;
        int iHashCode9 = (iHashCode8 + (bool9 == null ? 0 : bool9.hashCode())) * 31;
        Boolean bool10 = this.f45411j;
        int iHashCode10 = (iHashCode9 + (bool10 == null ? 0 : bool10.hashCode())) * 31;
        Boolean bool11 = this.f45412k;
        int iHashCode11 = (iHashCode10 + (bool11 == null ? 0 : bool11.hashCode())) * 31;
        Boolean bool12 = this.l;
        int iHashCode12 = (iHashCode11 + (bool12 == null ? 0 : bool12.hashCode())) * 31;
        Boolean bool13 = this.m;
        int iHashCode13 = (iHashCode12 + (bool13 == null ? 0 : bool13.hashCode())) * 31;
        Boolean bool14 = this.n;
        int iHashCode14 = (iHashCode13 + (bool14 == null ? 0 : bool14.hashCode())) * 31;
        Boolean bool15 = this.o;
        int iHashCode15 = (iHashCode14 + (bool15 == null ? 0 : bool15.hashCode())) * 31;
        Boolean bool16 = this.p;
        int iHashCode16 = (iHashCode15 + (bool16 == null ? 0 : bool16.hashCode())) * 31;
        Boolean bool17 = this.q;
        int iHashCode17 = (iHashCode16 + (bool17 == null ? 0 : bool17.hashCode())) * 31;
        Boolean bool18 = this.r;
        int iHashCode18 = (iHashCode17 + (bool18 == null ? 0 : bool18.hashCode())) * 31;
        Boolean bool19 = this.s;
        int iHashCode19 = (iHashCode18 + (bool19 == null ? 0 : bool19.hashCode())) * 31;
        Boolean bool20 = this.t;
        int iHashCode20 = (iHashCode19 + (bool20 == null ? 0 : bool20.hashCode())) * 31;
        Boolean bool21 = this.u;
        int iHashCode21 = (iHashCode20 + (bool21 == null ? 0 : bool21.hashCode())) * 31;
        Boolean bool22 = this.v;
        int iHashCode22 = (iHashCode21 + (bool22 == null ? 0 : bool22.hashCode())) * 31;
        Boolean bool23 = this.w;
        int iHashCode23 = (iHashCode22 + (bool23 == null ? 0 : bool23.hashCode())) * 31;
        Boolean bool24 = this.x;
        int iHashCode24 = (iHashCode23 + (bool24 == null ? 0 : bool24.hashCode())) * 31;
        Boolean bool25 = this.y;
        int iHashCode25 = (iHashCode24 + (bool25 == null ? 0 : bool25.hashCode())) * 31;
        Boolean bool26 = this.z;
        int iHashCode26 = (iHashCode25 + (bool26 == null ? 0 : bool26.hashCode())) * 31;
        Boolean bool27 = this.A;
        int iHashCode27 = (iHashCode26 + (bool27 == null ? 0 : bool27.hashCode())) * 31;
        Boolean bool28 = this.B;
        int iHashCode28 = (iHashCode27 + (bool28 == null ? 0 : bool28.hashCode())) * 31;
        Boolean bool29 = this.C;
        int iHashCode29 = (iHashCode28 + (bool29 == null ? 0 : bool29.hashCode())) * 31;
        Boolean bool30 = this.D;
        int iHashCode30 = (iHashCode29 + (bool30 == null ? 0 : bool30.hashCode())) * 31;
        Boolean bool31 = this.E;
        int iHashCode31 = (iHashCode30 + (bool31 == null ? 0 : bool31.hashCode())) * 31;
        Boolean bool32 = this.F;
        int iHashCode32 = (iHashCode31 + (bool32 == null ? 0 : bool32.hashCode())) * 31;
        Boolean bool33 = this.G;
        int iHashCode33 = (iHashCode32 + (bool33 == null ? 0 : bool33.hashCode())) * 31;
        Boolean bool34 = this.H;
        int iHashCode34 = (iHashCode33 + (bool34 == null ? 0 : bool34.hashCode())) * 31;
        Boolean bool35 = this.I;
        int iHashCode35 = (iHashCode34 + (bool35 == null ? 0 : bool35.hashCode())) * 31;
        Boolean bool36 = this.J;
        int iHashCode36 = (iHashCode35 + (bool36 == null ? 0 : bool36.hashCode())) * 31;
        Boolean bool37 = this.K;
        int iHashCode37 = (iHashCode36 + (bool37 == null ? 0 : bool37.hashCode())) * 31;
        Boolean bool38 = this.L;
        int iHashCode38 = (iHashCode37 + (bool38 == null ? 0 : bool38.hashCode())) * 31;
        Boolean bool39 = this.M;
        int iHashCode39 = (iHashCode38 + (bool39 == null ? 0 : bool39.hashCode())) * 31;
        Boolean bool40 = this.N;
        int iHashCode40 = (iHashCode39 + (bool40 == null ? 0 : bool40.hashCode())) * 31;
        Boolean bool41 = this.O;
        int iHashCode41 = (iHashCode40 + (bool41 == null ? 0 : bool41.hashCode())) * 31;
        Boolean bool42 = this.P;
        int iHashCode42 = (iHashCode41 + (bool42 == null ? 0 : bool42.hashCode())) * 31;
        Boolean bool43 = this.Q;
        int iHashCode43 = (iHashCode42 + (bool43 == null ? 0 : bool43.hashCode())) * 31;
        Boolean bool44 = this.R;
        int iHashCode44 = (iHashCode43 + (bool44 == null ? 0 : bool44.hashCode())) * 31;
        Boolean bool45 = this.S;
        int iHashCode45 = (iHashCode44 + (bool45 == null ? 0 : bool45.hashCode())) * 31;
        Boolean bool46 = this.T;
        int iHashCode46 = (iHashCode45 + (bool46 == null ? 0 : bool46.hashCode())) * 31;
        Boolean bool47 = this.U;
        int iHashCode47 = (iHashCode46 + (bool47 == null ? 0 : bool47.hashCode())) * 31;
        Boolean bool48 = this.V;
        int iHashCode48 = (iHashCode47 + (bool48 == null ? 0 : bool48.hashCode())) * 31;
        Boolean bool49 = this.W;
        int iHashCode49 = (iHashCode48 + (bool49 == null ? 0 : bool49.hashCode())) * 31;
        Boolean bool50 = this.X;
        int iHashCode50 = (iHashCode49 + (bool50 == null ? 0 : bool50.hashCode())) * 31;
        Boolean bool51 = this.Y;
        int iHashCode51 = (iHashCode50 + (bool51 == null ? 0 : bool51.hashCode())) * 31;
        Boolean bool52 = this.Z;
        int iHashCode52 = (iHashCode51 + (bool52 == null ? 0 : bool52.hashCode())) * 31;
        Boolean bool53 = this.a0;
        int iHashCode53 = (iHashCode52 + (bool53 == null ? 0 : bool53.hashCode())) * 31;
        Boolean bool54 = this.b0;
        int iHashCode54 = (iHashCode53 + (bool54 == null ? 0 : bool54.hashCode())) * 31;
        Boolean bool55 = this.c0;
        int iHashCode55 = (iHashCode54 + (bool55 == null ? 0 : bool55.hashCode())) * 31;
        Boolean bool56 = this.d0;
        int iHashCode56 = (iHashCode55 + (bool56 == null ? 0 : bool56.hashCode())) * 31;
        Boolean bool57 = this.e0;
        int iHashCode57 = (iHashCode56 + (bool57 == null ? 0 : bool57.hashCode())) * 31;
        Boolean bool58 = this.f0;
        int iHashCode58 = (iHashCode57 + (bool58 == null ? 0 : bool58.hashCode())) * 31;
        Boolean bool59 = this.g0;
        int iHashCode59 = (iHashCode58 + (bool59 == null ? 0 : bool59.hashCode())) * 31;
        Boolean bool60 = this.h0;
        int iHashCode60 = (iHashCode59 + (bool60 == null ? 0 : bool60.hashCode())) * 31;
        Boolean bool61 = this.i0;
        int iHashCode61 = (iHashCode60 + (bool61 == null ? 0 : bool61.hashCode())) * 31;
        Boolean bool62 = this.j0;
        int iHashCode62 = (iHashCode61 + (bool62 == null ? 0 : bool62.hashCode())) * 31;
        Boolean bool63 = this.k0;
        int iHashCode63 = (iHashCode62 + (bool63 == null ? 0 : bool63.hashCode())) * 31;
        Boolean bool64 = this.l0;
        int iHashCode64 = (iHashCode63 + (bool64 == null ? 0 : bool64.hashCode())) * 31;
        Boolean bool65 = this.m0;
        int iHashCode65 = (iHashCode64 + (bool65 == null ? 0 : bool65.hashCode())) * 31;
        Boolean bool66 = this.n0;
        int iHashCode66 = (iHashCode65 + (bool66 == null ? 0 : bool66.hashCode())) * 31;
        Boolean bool67 = this.o0;
        int iHashCode67 = (iHashCode66 + (bool67 == null ? 0 : bool67.hashCode())) * 31;
        Boolean bool68 = this.p0;
        int iHashCode68 = (iHashCode67 + (bool68 == null ? 0 : bool68.hashCode())) * 31;
        Boolean bool69 = this.q0;
        int iHashCode69 = (iHashCode68 + (bool69 == null ? 0 : bool69.hashCode())) * 31;
        Boolean bool70 = this.r0;
        int iHashCode70 = (iHashCode69 + (bool70 == null ? 0 : bool70.hashCode())) * 31;
        Boolean bool71 = this.s0;
        int iHashCode71 = (iHashCode70 + (bool71 == null ? 0 : bool71.hashCode())) * 31;
        Boolean bool72 = this.t0;
        int iHashCode72 = (iHashCode71 + (bool72 == null ? 0 : bool72.hashCode())) * 31;
        Boolean bool73 = this.u0;
        int iHashCode73 = (iHashCode72 + (bool73 == null ? 0 : bool73.hashCode())) * 31;
        Boolean bool74 = this.v0;
        int iHashCode74 = (iHashCode73 + (bool74 == null ? 0 : bool74.hashCode())) * 31;
        Boolean bool75 = this.w0;
        int iHashCode75 = (iHashCode74 + (bool75 == null ? 0 : bool75.hashCode())) * 31;
        Boolean bool76 = this.x0;
        int iHashCode76 = (iHashCode75 + (bool76 == null ? 0 : bool76.hashCode())) * 31;
        Boolean bool77 = this.y0;
        int iHashCode77 = (iHashCode76 + (bool77 == null ? 0 : bool77.hashCode())) * 31;
        Boolean bool78 = this.z0;
        int iHashCode78 = (iHashCode77 + (bool78 == null ? 0 : bool78.hashCode())) * 31;
        Boolean bool79 = this.A0;
        int iHashCode79 = (iHashCode78 + (bool79 == null ? 0 : bool79.hashCode())) * 31;
        Boolean bool80 = this.B0;
        int iHashCode80 = (iHashCode79 + (bool80 == null ? 0 : bool80.hashCode())) * 31;
        Boolean bool81 = this.C0;
        int iHashCode81 = (iHashCode80 + (bool81 == null ? 0 : bool81.hashCode())) * 31;
        Boolean bool82 = this.D0;
        int iHashCode82 = (iHashCode81 + (bool82 == null ? 0 : bool82.hashCode())) * 31;
        Boolean bool83 = this.E0;
        int iHashCode83 = (iHashCode82 + (bool83 == null ? 0 : bool83.hashCode())) * 31;
        Boolean bool84 = this.F0;
        int iHashCode84 = (iHashCode83 + (bool84 == null ? 0 : bool84.hashCode())) * 31;
        Boolean bool85 = this.G0;
        int iHashCode85 = (iHashCode84 + (bool85 == null ? 0 : bool85.hashCode())) * 31;
        Boolean bool86 = this.H0;
        int iHashCode86 = (iHashCode85 + (bool86 == null ? 0 : bool86.hashCode())) * 31;
        Boolean bool87 = this.I0;
        int iHashCode87 = (iHashCode86 + (bool87 == null ? 0 : bool87.hashCode())) * 31;
        Boolean bool88 = this.J0;
        int iHashCode88 = (iHashCode87 + (bool88 == null ? 0 : bool88.hashCode())) * 31;
        Boolean bool89 = this.K0;
        int iHashCode89 = (iHashCode88 + (bool89 == null ? 0 : bool89.hashCode())) * 31;
        Boolean bool90 = this.L0;
        int iHashCode90 = (iHashCode89 + (bool90 == null ? 0 : bool90.hashCode())) * 31;
        Boolean bool91 = this.M0;
        int iHashCode91 = (iHashCode90 + (bool91 == null ? 0 : bool91.hashCode())) * 31;
        Boolean bool92 = this.N0;
        int iHashCode92 = (iHashCode91 + (bool92 == null ? 0 : bool92.hashCode())) * 31;
        Boolean bool93 = this.O0;
        int iHashCode93 = (iHashCode92 + (bool93 == null ? 0 : bool93.hashCode())) * 31;
        Boolean bool94 = this.P0;
        int iHashCode94 = (iHashCode93 + (bool94 == null ? 0 : bool94.hashCode())) * 31;
        Boolean bool95 = this.Q0;
        return iHashCode94 + (bool95 != null ? bool95.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FeaturesConfigDto(isAccessibilityDisableAutoplayEnabled=");
        sb.append(this.f45404a);
        sb.append(", isAccessibilityEnhancedContrastEnabled=");
        sb.append(this.f45405b);
        sb.append(", isAccessibilitySimplifyNavigationEnabled=");
        d21.B(sb, this.f45406c, ", isAccessibilityStatementEnabled=", this.d, ", isAddressAutocompleteEnabled=");
        d21.B(sb, this.f45407e, ", isAddToCartCrossSellEnabled=", this.f45408f, ", isAICompanionEnabled=");
        d21.B(sb, this.g, ", isAICompanionPdpEnabled=", this.f45409h, ", isAICompanionSessionIdEnabled=");
        d21.B(sb, this.f45410i, ", isAppsflyerEnabled=", this.f45411j, ", isAutocompletePostalCodeEnabled=");
        d21.B(sb, this.f45412k, ", isBackInStockEnabled=", this.l, ", isBackInStockLegalConsentEnabled=");
        d21.B(sb, this.m, ", isBackOrderDisclaimerEnabled=", this.n, ", isBackOrderDisclaimerEnhancementEnabled=");
        d21.B(sb, this.o, ", isBatchSdkEnabled=", this.p, ", isBookingMyExperiencesEnabled=");
        d21.B(sb, this.q, ", isCareServicesEnabled=", this.r, ", isCareServicesMigrationEnabled=");
        d21.B(sb, this.s, ", isChinaPrivacyEnabled=", this.t, ", isContactUsCareServiceEnabled=");
        d21.B(sb, this.u, ", isContactUsEnabled=", this.v, ", isDiamondsPdpEnabled=");
        d21.B(sb, this.w, ", isDistantRepairsBillingAddressEnabled=", this.x, ", isDistantRepairsCallEnabled=");
        d21.B(sb, this.y, ", isDistantRepairsCancellationReasonEnabled=", this.z, ", isDistantRepairsEmailEnabled=");
        d21.B(sb, this.A, ", isDistantRepairsEnabled=", this.B, ", isDistantRepairsModifyEnabled=");
        d21.B(sb, this.C, ", isDistantRepairsPaymentMethodsIconsEnabled=", this.D, ", isDistantRepairsShippedFromEhubEnabled=");
        d21.B(sb, this.E, ", isDistantRepairsTutorialEnabled=", this.F, ", isDistantRepairsVideoCallEnabled=");
        d21.B(sb, this.G, ", isDistantRepairsZipCodeEnabled=", this.H, ", isDynamicYieldEnabled=");
        d21.B(sb, this.I, ", isDynatraceSdkEnabled=", this.J, ", isEmailTrackingConsentEnabled=");
        d21.B(sb, this.K, ", isExclusiveOfferEnabled=", this.L, ", isFeedForYouDefaultTabEnabled=");
        d21.B(sb, this.M, ", isFindAStoreEnabled=", this.N, ", isGcmOptOutEnabled=");
        d21.B(sb, this.O, ", isGoogleAnalyticsDisabled=", this.P, ", isGoogleCustomerMatchEnabled=");
        d21.B(sb, this.Q, ", isGoogleSignInEnabled=", this.R, ", isHorizonSpeakerEnabled=");
        d21.B(sb, this.S, ", isInboxEnabled=", this.T, ", isKakaoSignInEnabled=");
        d21.B(sb, this.U, ", isKeepAllEnabled=", this.V, ", isLegalNoticeRegisterEnabled=");
        d21.B(sb, this.W, ", isLineSignInEnabled=", this.X, ", isMyCertificatesEnabled=");
        d21.B(sb, this.Y, ", isNativeAccountActivationEnabled=", this.Z, ", isNativeCartEnabled=");
        d21.B(sb, this.a0, ", isNativeLoginEnabled=", this.b0, ", isNativeRegisterEnabled=");
        d21.B(sb, this.c0, ", isNativeRegisterKisaEnabled=", this.d0, ", isNativeShareCatalogEnabled=");
        d21.B(sb, this.e0, ", isNativeShareImmersiveEnabled=", this.f0, ", isNativeShareWishlistEnabled=");
        d21.B(sb, this.g0, ", isNativeThankYouPageFeedbackEnabled=", this.h0, ", isNativeThankYouPageRedirectEnabled=");
        d21.B(sb, this.i0, ", isOnboardingEnabled=", this.j0, ", isOnlineStoreAppointmentCidEnabled=");
        d21.B(sb, this.k0, ", isOnlineStoreAppointmentCreationEnabled=", this.l0, ", isOrderExchangeEnabled=");
        d21.B(sb, this.m0, ", isOrderReturnEnabled=", this.n0, ", isOrdersInvoiceEnabled=");
        d21.B(sb, this.o0, ", isOsaGuestEnabled=", this.p0, ", isOsaKisaV2Enabled=");
        d21.B(sb, this.q0, ", isOsaModifyEnabled=", this.r0, ", isOsaReasonsEnabled=");
        d21.B(sb, this.s0, ", isPayByLinkEnabled=", this.t0, ", isPdpAGECLawEnabled=");
        d21.B(sb, this.u0, ", isPerfectLogsEnabled=", this.v0, ", isPersonalSelectionsEnabled=");
        d21.B(sb, this.w0, ", isPlpRevampV3Phase2Enabled=", this.x0, ", isPlpV3GridViewEnabled=");
        d21.B(sb, this.y0, ", isPowerFrontCareServiceEnabled=", this.z0, ", isPowerFrontEnabled=");
        d21.B(sb, this.A0, ", isProfilePhoneNumberEnabled=", this.B0, ", isPuertoRicoEnabled=");
        d21.B(sb, this.C0, ", isQrCodeEnabled=", this.D0, ", isRefreshAuthCheckoutEnabled=");
        d21.B(sb, this.E0, ", isRegistrationAddressStepEnabled=", this.F0, ", isSensorDataEnabled=");
        d21.B(sb, this.G0, ", isSizeGuidePimEnabled=", this.H0, ", isSmsConsentEnabled=");
        d21.B(sb, this.I0, ", isSneakerEnabled=", this.J0, ", isSocialSignInDebugEnabled=");
        d21.B(sb, this.K0, ", isStoreModeEnabled=", this.L0, ", isStoreModeV2Enabled=");
        d21.B(sb, this.M0, ", isTingyunSdkEnabled=", this.N0, ", isTrunkSpeakerEnabled=");
        d21.B(sb, this.O0, ", isTwistEnabled=", this.P0, ", isYMALEnabled=");
        sb.append(this.Q0);
        sb.append(")");
        return sb.toString();
    }

    public FeaturesConfigDto(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7, Boolean bool8, Boolean bool9, Boolean bool10, Boolean bool11, Boolean bool12, Boolean bool13, Boolean bool14, Boolean bool15, Boolean bool16, Boolean bool17, Boolean bool18, Boolean bool19, Boolean bool20, Boolean bool21, Boolean bool22, Boolean bool23, Boolean bool24, Boolean bool25, Boolean bool26, Boolean bool27, Boolean bool28, Boolean bool29, Boolean bool30, Boolean bool31, Boolean bool32, Boolean bool33, Boolean bool34, Boolean bool35, Boolean bool36, Boolean bool37, Boolean bool38, Boolean bool39, Boolean bool40, Boolean bool41, Boolean bool42, Boolean bool43, Boolean bool44, Boolean bool45, Boolean bool46, Boolean bool47, Boolean bool48, Boolean bool49, Boolean bool50, Boolean bool51, Boolean bool52, Boolean bool53, Boolean bool54, Boolean bool55, Boolean bool56, Boolean bool57, Boolean bool58, Boolean bool59, Boolean bool60, Boolean bool61, Boolean bool62, Boolean bool63, Boolean bool64, Boolean bool65, Boolean bool66, Boolean bool67, Boolean bool68, Boolean bool69, Boolean bool70, Boolean bool71, Boolean bool72, Boolean bool73, Boolean bool74, Boolean bool75, Boolean bool76, Boolean bool77, Boolean bool78, Boolean bool79, Boolean bool80, Boolean bool81, Boolean bool82, Boolean bool83, Boolean bool84, Boolean bool85, Boolean bool86, Boolean bool87, Boolean bool88, Boolean bool89, Boolean bool90, Boolean bool91, Boolean bool92, Boolean bool93, Boolean bool94, Boolean bool95) {
        this.f45404a = bool;
        this.f45405b = bool2;
        this.f45406c = bool3;
        this.d = bool4;
        this.f45407e = bool5;
        this.f45408f = bool6;
        this.g = bool7;
        this.f45409h = bool8;
        this.f45410i = bool9;
        this.f45411j = bool10;
        this.f45412k = bool11;
        this.l = bool12;
        this.m = bool13;
        this.n = bool14;
        this.o = bool15;
        this.p = bool16;
        this.q = bool17;
        this.r = bool18;
        this.s = bool19;
        this.t = bool20;
        this.u = bool21;
        this.v = bool22;
        this.w = bool23;
        this.x = bool24;
        this.y = bool25;
        this.z = bool26;
        this.A = bool27;
        this.B = bool28;
        this.C = bool29;
        this.D = bool30;
        this.E = bool31;
        this.F = bool32;
        this.G = bool33;
        this.H = bool34;
        this.I = bool35;
        this.J = bool36;
        this.K = bool37;
        this.L = bool38;
        this.M = bool39;
        this.N = bool40;
        this.O = bool41;
        this.P = bool42;
        this.Q = bool43;
        this.R = bool44;
        this.S = bool45;
        this.T = bool46;
        this.U = bool47;
        this.V = bool48;
        this.W = bool49;
        this.X = bool50;
        this.Y = bool51;
        this.Z = bool52;
        this.a0 = bool53;
        this.b0 = bool54;
        this.c0 = bool55;
        this.d0 = bool56;
        this.e0 = bool57;
        this.f0 = bool58;
        this.g0 = bool59;
        this.h0 = bool60;
        this.i0 = bool61;
        this.j0 = bool62;
        this.k0 = bool63;
        this.l0 = bool64;
        this.m0 = bool65;
        this.n0 = bool66;
        this.o0 = bool67;
        this.p0 = bool68;
        this.q0 = bool69;
        this.r0 = bool70;
        this.s0 = bool71;
        this.t0 = bool72;
        this.u0 = bool73;
        this.v0 = bool74;
        this.w0 = bool75;
        this.x0 = bool76;
        this.y0 = bool77;
        this.z0 = bool78;
        this.A0 = bool79;
        this.B0 = bool80;
        this.C0 = bool81;
        this.D0 = bool82;
        this.E0 = bool83;
        this.F0 = bool84;
        this.G0 = bool85;
        this.H0 = bool86;
        this.I0 = bool87;
        this.J0 = bool88;
        this.K0 = bool89;
        this.L0 = bool90;
        this.M0 = bool91;
        this.N0 = bool92;
        this.O0 = bool93;
        this.P0 = bool94;
        this.Q0 = bool95;
    }

    public /* synthetic */ FeaturesConfigDto(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7, Boolean bool8, Boolean bool9, Boolean bool10, Boolean bool11, Boolean bool12, Boolean bool13, Boolean bool14, Boolean bool15, Boolean bool16, Boolean bool17, Boolean bool18, Boolean bool19, Boolean bool20, Boolean bool21, Boolean bool22, Boolean bool23, Boolean bool24, Boolean bool25, Boolean bool26, Boolean bool27, Boolean bool28, Boolean bool29, Boolean bool30, Boolean bool31, Boolean bool32, Boolean bool33, Boolean bool34, Boolean bool35, Boolean bool36, Boolean bool37, Boolean bool38, Boolean bool39, Boolean bool40, Boolean bool41, Boolean bool42, Boolean bool43, Boolean bool44, Boolean bool45, Boolean bool46, Boolean bool47, Boolean bool48, Boolean bool49, Boolean bool50, Boolean bool51, Boolean bool52, Boolean bool53, Boolean bool54, Boolean bool55, Boolean bool56, Boolean bool57, Boolean bool58, Boolean bool59, Boolean bool60, Boolean bool61, Boolean bool62, Boolean bool63, Boolean bool64, Boolean bool65, Boolean bool66, Boolean bool67, Boolean bool68, Boolean bool69, Boolean bool70, Boolean bool71, Boolean bool72, Boolean bool73, Boolean bool74, Boolean bool75, Boolean bool76, Boolean bool77, Boolean bool78, Boolean bool79, Boolean bool80, Boolean bool81, Boolean bool82, Boolean bool83, Boolean bool84, Boolean bool85, Boolean bool86, Boolean bool87, Boolean bool88, Boolean bool89, Boolean bool90, Boolean bool91, Boolean bool92, Boolean bool93, Boolean bool94, Boolean bool95, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : bool, (i2 & 2) != 0 ? null : bool2, (i2 & 4) != 0 ? null : bool3, (i2 & 8) != 0 ? null : bool4, (i2 & 16) != 0 ? null : bool5, (i2 & 32) != 0 ? null : bool6, (i2 & 64) != 0 ? null : bool7, (i2 & 128) != 0 ? null : bool8, (i2 & 256) != 0 ? null : bool9, (i2 & 512) != 0 ? null : bool10, (i2 & 1024) != 0 ? null : bool11, (i2 & 2048) != 0 ? null : bool12, (i2 & 4096) != 0 ? null : bool13, (i2 & 8192) != 0 ? null : bool14, (i2 & 16384) != 0 ? null : bool15, (i2 & 32768) != 0 ? null : bool16, (i2 & 65536) != 0 ? null : bool17, (i2 & 131072) != 0 ? null : bool18, bool19, (i2 & 524288) != 0 ? null : bool20, (i2 & 1048576) != 0 ? null : bool21, (i2 & PKIFailureInfo.badSenderNonce) != 0 ? null : bool22, (i2 & 4194304) != 0 ? null : bool23, (i2 & 8388608) != 0 ? null : bool24, (i2 & 16777216) != 0 ? null : bool25, (i2 & 33554432) != 0 ? null : bool26, (i2 & 67108864) != 0 ? null : bool27, (i2 & 134217728) != 0 ? null : bool28, (i2 & 268435456) != 0 ? null : bool29, (i2 & PKIFailureInfo.duplicateCertReq) != 0 ? null : bool30, (i2 & 1073741824) != 0 ? null : bool31, (i2 & Integer.MIN_VALUE) != 0 ? null : bool32, (i3 & 1) != 0 ? null : bool33, (i3 & 2) != 0 ? null : bool34, (i3 & 4) != 0 ? null : bool35, (i3 & 8) != 0 ? null : bool36, (i3 & 16) != 0 ? null : bool37, (i3 & 32) != 0 ? null : bool38, (i3 & 64) != 0 ? null : bool39, (i3 & 128) != 0 ? null : bool40, (i3 & 256) != 0 ? null : bool41, (i3 & 512) != 0 ? null : bool42, (i3 & 1024) != 0 ? null : bool43, (i3 & 2048) != 0 ? null : bool44, (i3 & 4096) != 0 ? null : bool45, (i3 & 8192) != 0 ? null : bool46, (i3 & 16384) != 0 ? null : bool47, (i3 & 32768) != 0 ? null : bool48, (i3 & 65536) != 0 ? null : bool49, (i3 & 131072) != 0 ? null : bool50, (262144 & i3) != 0 ? null : bool51, (i3 & 524288) != 0 ? null : bool52, (i3 & 1048576) != 0 ? null : bool53, (i3 & PKIFailureInfo.badSenderNonce) != 0 ? null : bool54, (4194304 & i3) != 0 ? null : bool55, (8388608 & i3) != 0 ? null : bool56, (16777216 & i3) != 0 ? null : bool57, (33554432 & i3) != 0 ? null : bool58, (67108864 & i3) != 0 ? null : bool59, (134217728 & i3) != 0 ? null : bool60, (268435456 & i3) != 0 ? null : bool61, (536870912 & i3) != 0 ? null : bool62, (1073741824 & i3) != 0 ? null : bool63, (i3 & Integer.MIN_VALUE) != 0 ? null : bool64, (i4 & 1) != 0 ? null : bool65, (i4 & 2) != 0 ? null : bool66, (i4 & 4) != 0 ? null : bool67, (i4 & 8) != 0 ? null : bool68, (i4 & 16) != 0 ? null : bool69, (i4 & 32) != 0 ? null : bool70, (i4 & 64) != 0 ? null : bool71, (i4 & 128) != 0 ? null : bool72, (i4 & 256) != 0 ? null : bool73, (i4 & 512) != 0 ? null : bool74, (i4 & 1024) != 0 ? null : bool75, (i4 & 2048) != 0 ? null : bool76, (i4 & 4096) != 0 ? null : bool77, (i4 & 8192) != 0 ? null : bool78, (i4 & 16384) != 0 ? null : bool79, (i4 & 32768) != 0 ? null : bool80, (i4 & 65536) != 0 ? null : bool81, (i4 & 131072) != 0 ? null : bool82, (262144 & i4) != 0 ? null : bool83, (i4 & 524288) != 0 ? null : bool84, (i4 & 1048576) != 0 ? null : bool85, (i4 & PKIFailureInfo.badSenderNonce) != 0 ? null : bool86, (4194304 & i4) != 0 ? null : bool87, (8388608 & i4) != 0 ? null : bool88, (16777216 & i4) != 0 ? null : bool89, (33554432 & i4) != 0 ? null : bool90, (67108864 & i4) != 0 ? null : bool91, (134217728 & i4) != 0 ? null : bool92, (268435456 & i4) != 0 ? null : bool93, (536870912 & i4) != 0 ? null : bool94, (1073741824 & i4) != 0 ? null : bool95);
    }
}

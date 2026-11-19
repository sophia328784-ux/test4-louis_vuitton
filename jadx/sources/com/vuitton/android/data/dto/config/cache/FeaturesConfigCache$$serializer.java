package com.vuitton.android.data.dto.config.cache;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/config/cache/FeaturesConfigCache.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class FeaturesConfigCache$$serializer implements GeneratedSerializer<FeaturesConfigCache> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FeaturesConfigCache$$serializer f45505a;
    private static final SerialDescriptor descriptor;

    static {
        FeaturesConfigCache$$serializer featuresConfigCache$$serializer = new FeaturesConfigCache$$serializer();
        f45505a = featuresConfigCache$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.config.cache.FeaturesConfigCache", featuresConfigCache$$serializer, 97);
        pluginGeneratedSerialDescriptor.k("isAccessibilityDisableAutoplayEnabled", false);
        pluginGeneratedSerialDescriptor.k("isAccessibilityEnhancedContrastEnabled", false);
        pluginGeneratedSerialDescriptor.k("isAccessibilitySimplifyNavigationEnabled", false);
        pluginGeneratedSerialDescriptor.k("isAccessibilityStatementEnabled", false);
        pluginGeneratedSerialDescriptor.k("isAddressAutocompleteEnabled", false);
        pluginGeneratedSerialDescriptor.k("isAddToCartCrossSellEnabled", false);
        pluginGeneratedSerialDescriptor.k("isAICompanionEnabled", false);
        pluginGeneratedSerialDescriptor.k("isAICompanionPdpEnabled", false);
        pluginGeneratedSerialDescriptor.k("isAICompanionSessionIdEnabled", false);
        pluginGeneratedSerialDescriptor.k("isAppsflyerEnabled", false);
        pluginGeneratedSerialDescriptor.k("isAutocompletePostalCodeEnabled", false);
        pluginGeneratedSerialDescriptor.k("isBackInStockEnabled", false);
        pluginGeneratedSerialDescriptor.k("isBackInStockLegalConsentEnabled", false);
        pluginGeneratedSerialDescriptor.k("isBackInStockPreviewModeEnabled", false);
        pluginGeneratedSerialDescriptor.k("isBackOrderDisclaimerEnabled", false);
        pluginGeneratedSerialDescriptor.k("isBackOrderDisclaimerEnhancementEnabled", false);
        pluginGeneratedSerialDescriptor.k("isBatchSdkEnabled", false);
        pluginGeneratedSerialDescriptor.k("isBookingMyExperiencesEnabled", false);
        pluginGeneratedSerialDescriptor.k("isCareServicesEnabled", false);
        pluginGeneratedSerialDescriptor.k("isCareServicesMigrationEnabled", false);
        pluginGeneratedSerialDescriptor.k("isCertificatesMockVisionnaireLockedStatusEnabled", false);
        pluginGeneratedSerialDescriptor.k("isChinaPrivacyEnabled", false);
        pluginGeneratedSerialDescriptor.k("isContactUsCareServiceEnabled", false);
        pluginGeneratedSerialDescriptor.k("isContactUsEnabled", false);
        pluginGeneratedSerialDescriptor.k("isDiamondsPdpEnabled", false);
        pluginGeneratedSerialDescriptor.k("isDistantRepairsBillingAddressEnabled", false);
        pluginGeneratedSerialDescriptor.k("isDistantRepairsCallEnabled", false);
        pluginGeneratedSerialDescriptor.k("isDistantRepairsCancellationReasonEnabled", false);
        pluginGeneratedSerialDescriptor.k("isDistantRepairsEmailEnabled", false);
        pluginGeneratedSerialDescriptor.k("isDistantRepairsEnabled", false);
        pluginGeneratedSerialDescriptor.k("isDistantRepairsModifyEnabled", false);
        pluginGeneratedSerialDescriptor.k("isDistantRepairsPaymentMethodsIconsEnabled", false);
        pluginGeneratedSerialDescriptor.k("isDistantRepairsShippedFromEhubEnabled", false);
        pluginGeneratedSerialDescriptor.k("isDistantRepairsTutorialEnabled", false);
        pluginGeneratedSerialDescriptor.k("isDistantRepairsVideoCallEnabled", false);
        pluginGeneratedSerialDescriptor.k("isDistantRepairsZipCodeEnabled", false);
        pluginGeneratedSerialDescriptor.k("isDynamicYieldEnabled", false);
        pluginGeneratedSerialDescriptor.k("isDynatraceSdkEnabled", false);
        pluginGeneratedSerialDescriptor.k("isEmailTrackingConsentEnabled", false);
        pluginGeneratedSerialDescriptor.k("isExclusiveOfferEnabled", false);
        pluginGeneratedSerialDescriptor.k("isFeedForYouDefaultTabEnabled", false);
        pluginGeneratedSerialDescriptor.k("isFindAStoreEnabled", false);
        pluginGeneratedSerialDescriptor.k("isGcmOptOutEnabled", false);
        pluginGeneratedSerialDescriptor.k("isGoogleAnalyticsEnabled", false);
        pluginGeneratedSerialDescriptor.k("isGoogleCustomerMatchEnabled", false);
        pluginGeneratedSerialDescriptor.k("isGoogleSignInEnabled", false);
        pluginGeneratedSerialDescriptor.k("isHorizonSpeakerEnabled", false);
        pluginGeneratedSerialDescriptor.k("isInboxEnabled", false);
        pluginGeneratedSerialDescriptor.k("isKakaoSignInEnabled", false);
        pluginGeneratedSerialDescriptor.k("isKeepAllEnabled", false);
        pluginGeneratedSerialDescriptor.k("isLegalNoticeRegisterEnabled", false);
        pluginGeneratedSerialDescriptor.k("isLineSignInEnabled", false);
        pluginGeneratedSerialDescriptor.k("isMyCertificatesEnabled", false);
        pluginGeneratedSerialDescriptor.k("isNativeAccountActivationEnabled", false);
        pluginGeneratedSerialDescriptor.k("isNativeCartEnabled", false);
        pluginGeneratedSerialDescriptor.k("isNativeLoginEnabled", false);
        pluginGeneratedSerialDescriptor.k("isNativeRegisterEnabled", false);
        pluginGeneratedSerialDescriptor.k("isNativeRegisterKisaEnabled", false);
        pluginGeneratedSerialDescriptor.k("isNativeShareCatalogEnabled", false);
        pluginGeneratedSerialDescriptor.k("isNativeShareImmersiveEnabled", false);
        pluginGeneratedSerialDescriptor.k("isNativeShareWishlistEnabled", false);
        pluginGeneratedSerialDescriptor.k("isNativeThankYouPageFeedbackEnabled", false);
        pluginGeneratedSerialDescriptor.k("isNativeThankYouPageRedirectEnabled", false);
        pluginGeneratedSerialDescriptor.k("isOnboardingEnabled", false);
        pluginGeneratedSerialDescriptor.k("isOnlineStoreAppointmentCidEnabled", false);
        pluginGeneratedSerialDescriptor.k("isOnlineStoreAppointmentCreationEnabled", false);
        pluginGeneratedSerialDescriptor.k("isOrderExchangeEnabled", false);
        pluginGeneratedSerialDescriptor.k("isOrderReturnEnabled", false);
        pluginGeneratedSerialDescriptor.k("isOrdersInvoiceEnabled", false);
        pluginGeneratedSerialDescriptor.k("isOsaGuestEnabled", false);
        pluginGeneratedSerialDescriptor.k("isOsaKisaEnabled", false);
        pluginGeneratedSerialDescriptor.k("isOsaModifyEnabled", false);
        pluginGeneratedSerialDescriptor.k("isOsaReasonsEnabled", false);
        pluginGeneratedSerialDescriptor.k("isPayByLinkEnabled", false);
        pluginGeneratedSerialDescriptor.k("isPdpAGECLawEnabled", false);
        pluginGeneratedSerialDescriptor.k("isPerfectLogsEnabled", false);
        pluginGeneratedSerialDescriptor.k("isPersonalSelectionsEnabled", false);
        pluginGeneratedSerialDescriptor.k("isPlpRevampV3Phase2Enabled", false);
        pluginGeneratedSerialDescriptor.k("isPlpV3GridViewEnabled", false);
        pluginGeneratedSerialDescriptor.k("isPowerFrontCareServiceEnabled", false);
        pluginGeneratedSerialDescriptor.k("isPowerFrontEnabled", false);
        pluginGeneratedSerialDescriptor.k("isProfilePhoneNumberEnabled", false);
        pluginGeneratedSerialDescriptor.k("isPuertoRicoEnabled", false);
        pluginGeneratedSerialDescriptor.k("isQrCodeEnabled", false);
        pluginGeneratedSerialDescriptor.k("isRefreshAuthCheckoutEnabled", false);
        pluginGeneratedSerialDescriptor.k("isRegistrationAddressStepEnabled", false);
        pluginGeneratedSerialDescriptor.k("isSensorDataEnabled", false);
        pluginGeneratedSerialDescriptor.k("isSizeGuidePimEnabled", false);
        pluginGeneratedSerialDescriptor.k("isSmsConsentEnabled", false);
        pluginGeneratedSerialDescriptor.k("isSneakerEnabled", false);
        pluginGeneratedSerialDescriptor.k("isSocialSignInDebugEnabled", false);
        pluginGeneratedSerialDescriptor.k("isStoreModeEnabled", false);
        pluginGeneratedSerialDescriptor.k("isStoreModeV2Enabled", false);
        pluginGeneratedSerialDescriptor.k("isTingyunSdkEnabled", false);
        pluginGeneratedSerialDescriptor.k("isTrunkSpeakerEnabled", false);
        pluginGeneratedSerialDescriptor.k("isTwistEnabled", false);
        pluginGeneratedSerialDescriptor.k("isYMALEnabled", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        boolean z = true;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        boolean zY = false;
        boolean zY2 = false;
        boolean zY3 = false;
        boolean zY4 = false;
        boolean zY5 = false;
        boolean zY6 = false;
        boolean zY7 = false;
        boolean zY8 = false;
        boolean zY9 = false;
        boolean zY10 = false;
        boolean zY11 = false;
        boolean zY12 = false;
        boolean zY13 = false;
        boolean zY14 = false;
        boolean zY15 = false;
        boolean zY16 = false;
        boolean zY17 = false;
        boolean zY18 = false;
        boolean zY19 = false;
        boolean zY20 = false;
        boolean zY21 = false;
        boolean zY22 = false;
        boolean zY23 = false;
        boolean zY24 = false;
        boolean zY25 = false;
        boolean zY26 = false;
        boolean zY27 = false;
        boolean zY28 = false;
        boolean zY29 = false;
        boolean zY30 = false;
        boolean zY31 = false;
        boolean zY32 = false;
        boolean zY33 = false;
        boolean zY34 = false;
        boolean zY35 = false;
        boolean zY36 = false;
        boolean zY37 = false;
        boolean zY38 = false;
        boolean zY39 = false;
        boolean zY40 = false;
        boolean zY41 = false;
        boolean zY42 = false;
        boolean zY43 = false;
        boolean zY44 = false;
        boolean zY45 = false;
        boolean zY46 = false;
        boolean zY47 = false;
        boolean zY48 = false;
        boolean zY49 = false;
        boolean zY50 = false;
        boolean zY51 = false;
        boolean zY52 = false;
        boolean zY53 = false;
        boolean zY54 = false;
        boolean zY55 = false;
        boolean zY56 = false;
        boolean zY57 = false;
        boolean zY58 = false;
        boolean zY59 = false;
        boolean zY60 = false;
        boolean zY61 = false;
        boolean zY62 = false;
        boolean zY63 = false;
        boolean zY64 = false;
        boolean zY65 = false;
        boolean zY66 = false;
        boolean zY67 = false;
        boolean zY68 = false;
        boolean zY69 = false;
        boolean zY70 = false;
        boolean zY71 = false;
        boolean zY72 = false;
        boolean zY73 = false;
        boolean zY74 = false;
        boolean zY75 = false;
        boolean zY76 = false;
        boolean zY77 = false;
        boolean zY78 = false;
        boolean zY79 = false;
        boolean zY80 = false;
        boolean zY81 = false;
        boolean zY82 = false;
        boolean zY83 = false;
        boolean zY84 = false;
        boolean zY85 = false;
        boolean zY86 = false;
        boolean zY87 = false;
        boolean zY88 = false;
        boolean zY89 = false;
        boolean zY90 = false;
        boolean zY91 = false;
        boolean zY92 = false;
        boolean zY93 = false;
        boolean zY94 = false;
        boolean zY95 = false;
        boolean zY96 = false;
        boolean zY97 = false;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    zY = compositeDecoderB.y(serialDescriptor, 0);
                    i2 |= 1;
                    break;
                case 1:
                    zY2 = compositeDecoderB.y(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    zY3 = compositeDecoderB.y(serialDescriptor, 2);
                    i2 |= 4;
                    break;
                case 3:
                    zY4 = compositeDecoderB.y(serialDescriptor, 3);
                    i2 |= 8;
                    break;
                case 4:
                    zY5 = compositeDecoderB.y(serialDescriptor, 4);
                    i2 |= 16;
                    break;
                case 5:
                    zY6 = compositeDecoderB.y(serialDescriptor, 5);
                    i2 |= 32;
                    break;
                case 6:
                    zY7 = compositeDecoderB.y(serialDescriptor, 6);
                    i2 |= 64;
                    break;
                case 7:
                    zY8 = compositeDecoderB.y(serialDescriptor, 7);
                    i2 |= 128;
                    break;
                case 8:
                    zY9 = compositeDecoderB.y(serialDescriptor, 8);
                    i2 |= 256;
                    break;
                case 9:
                    zY10 = compositeDecoderB.y(serialDescriptor, 9);
                    i2 |= 512;
                    break;
                case 10:
                    zY11 = compositeDecoderB.y(serialDescriptor, 10);
                    i2 |= 1024;
                    break;
                case 11:
                    zY12 = compositeDecoderB.y(serialDescriptor, 11);
                    i2 |= 2048;
                    break;
                case 12:
                    zY13 = compositeDecoderB.y(serialDescriptor, 12);
                    i2 |= 4096;
                    break;
                case 13:
                    zY14 = compositeDecoderB.y(serialDescriptor, 13);
                    i2 |= 8192;
                    break;
                case 14:
                    zY15 = compositeDecoderB.y(serialDescriptor, 14);
                    i2 |= 16384;
                    break;
                case 15:
                    zY16 = compositeDecoderB.y(serialDescriptor, 15);
                    i2 |= 32768;
                    break;
                case 16:
                    zY17 = compositeDecoderB.y(serialDescriptor, 16);
                    i2 |= 65536;
                    break;
                case 17:
                    zY18 = compositeDecoderB.y(serialDescriptor, 17);
                    i2 |= 131072;
                    break;
                case 18:
                    zY19 = compositeDecoderB.y(serialDescriptor, 18);
                    i2 |= 262144;
                    break;
                case 19:
                    zY20 = compositeDecoderB.y(serialDescriptor, 19);
                    i2 |= 524288;
                    break;
                case 20:
                    zY21 = compositeDecoderB.y(serialDescriptor, 20);
                    i2 |= 1048576;
                    break;
                case 21:
                    zY22 = compositeDecoderB.y(serialDescriptor, 21);
                    i2 |= PKIFailureInfo.badSenderNonce;
                    break;
                case 22:
                    zY23 = compositeDecoderB.y(serialDescriptor, 22);
                    i2 |= 4194304;
                    break;
                case 23:
                    zY24 = compositeDecoderB.y(serialDescriptor, 23);
                    i2 |= 8388608;
                    break;
                case 24:
                    zY25 = compositeDecoderB.y(serialDescriptor, 24);
                    i2 |= 16777216;
                    break;
                case 25:
                    zY26 = compositeDecoderB.y(serialDescriptor, 25);
                    i2 |= 33554432;
                    break;
                case 26:
                    zY27 = compositeDecoderB.y(serialDescriptor, 26);
                    i2 |= 67108864;
                    break;
                case 27:
                    zY28 = compositeDecoderB.y(serialDescriptor, 27);
                    i2 |= 134217728;
                    break;
                case 28:
                    zY29 = compositeDecoderB.y(serialDescriptor, 28);
                    i2 |= 268435456;
                    break;
                case 29:
                    zY30 = compositeDecoderB.y(serialDescriptor, 29);
                    i2 |= PKIFailureInfo.duplicateCertReq;
                    break;
                case 30:
                    zY31 = compositeDecoderB.y(serialDescriptor, 30);
                    i2 |= 1073741824;
                    break;
                case 31:
                    zY32 = compositeDecoderB.y(serialDescriptor, 31);
                    i2 |= Integer.MIN_VALUE;
                    break;
                case 32:
                    zY33 = compositeDecoderB.y(serialDescriptor, 32);
                    i3 |= 1;
                    break;
                case 33:
                    zY34 = compositeDecoderB.y(serialDescriptor, 33);
                    i3 |= 2;
                    break;
                case 34:
                    zY35 = compositeDecoderB.y(serialDescriptor, 34);
                    i3 |= 4;
                    break;
                case 35:
                    zY36 = compositeDecoderB.y(serialDescriptor, 35);
                    i3 |= 8;
                    break;
                case 36:
                    zY37 = compositeDecoderB.y(serialDescriptor, 36);
                    i3 |= 16;
                    break;
                case 37:
                    zY38 = compositeDecoderB.y(serialDescriptor, 37);
                    i3 |= 32;
                    break;
                case 38:
                    zY39 = compositeDecoderB.y(serialDescriptor, 38);
                    i3 |= 64;
                    break;
                case 39:
                    zY40 = compositeDecoderB.y(serialDescriptor, 39);
                    i3 |= 128;
                    break;
                case 40:
                    zY41 = compositeDecoderB.y(serialDescriptor, 40);
                    i3 |= 256;
                    break;
                case 41:
                    zY42 = compositeDecoderB.y(serialDescriptor, 41);
                    i3 |= 512;
                    break;
                case EACTags.CURRENCY_CODE /* 42 */:
                    zY43 = compositeDecoderB.y(serialDescriptor, 42);
                    i3 |= 1024;
                    break;
                case EACTags.DATE_OF_BIRTH /* 43 */:
                    zY44 = compositeDecoderB.y(serialDescriptor, 43);
                    i3 |= 2048;
                    break;
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                    zY45 = compositeDecoderB.y(serialDescriptor, 44);
                    i3 |= 4096;
                    break;
                case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                    zY46 = compositeDecoderB.y(serialDescriptor, 45);
                    i3 |= 8192;
                    break;
                case 46:
                    zY47 = compositeDecoderB.y(serialDescriptor, 46);
                    i3 |= 16384;
                    break;
                case EACTags.PIN_USAGE_POLICY /* 47 */:
                    zY48 = compositeDecoderB.y(serialDescriptor, 47);
                    i3 |= 32768;
                    break;
                case 48:
                    zY49 = compositeDecoderB.y(serialDescriptor, 48);
                    i3 |= 65536;
                    break;
                case 49:
                    zY50 = compositeDecoderB.y(serialDescriptor, 49);
                    i3 |= 131072;
                    break;
                case 50:
                    zY51 = compositeDecoderB.y(serialDescriptor, 50);
                    i3 |= 262144;
                    break;
                case EACTags.TRANSACTION_DATE /* 51 */:
                    zY52 = compositeDecoderB.y(serialDescriptor, 51);
                    i3 |= 524288;
                    break;
                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                    zY53 = compositeDecoderB.y(serialDescriptor, 52);
                    i3 |= 1048576;
                    break;
                case EACTags.SEX /* 53 */:
                    zY54 = compositeDecoderB.y(serialDescriptor, 53);
                    i3 |= PKIFailureInfo.badSenderNonce;
                    break;
                case EACTags.CURRENCY_EXPONENT /* 54 */:
                    zY55 = compositeDecoderB.y(serialDescriptor, 54);
                    i3 |= 4194304;
                    break;
                case 55:
                    zY56 = compositeDecoderB.y(serialDescriptor, 55);
                    i3 |= 8388608;
                    break;
                case 56:
                    zY57 = compositeDecoderB.y(serialDescriptor, 56);
                    i3 |= 16777216;
                    break;
                case 57:
                    zY58 = compositeDecoderB.y(serialDescriptor, 57);
                    i3 |= 33554432;
                    break;
                case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                    zY59 = compositeDecoderB.y(serialDescriptor, 58);
                    i3 |= 67108864;
                    break;
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    zY60 = compositeDecoderB.y(serialDescriptor, 59);
                    i3 |= 134217728;
                    break;
                case 60:
                    zY61 = compositeDecoderB.y(serialDescriptor, 60);
                    i3 |= 268435456;
                    break;
                case 61:
                    zY62 = compositeDecoderB.y(serialDescriptor, 61);
                    i3 |= PKIFailureInfo.duplicateCertReq;
                    break;
                case 62:
                    zY63 = compositeDecoderB.y(serialDescriptor, 62);
                    i3 |= 1073741824;
                    break;
                case 63:
                    zY64 = compositeDecoderB.y(serialDescriptor, 63);
                    i3 |= Integer.MIN_VALUE;
                    break;
                case 64:
                    zY65 = compositeDecoderB.y(serialDescriptor, 64);
                    i4 |= 1;
                    break;
                case EACTags.ELEMENT_LIST /* 65 */:
                    zY66 = compositeDecoderB.y(serialDescriptor, 65);
                    i4 |= 2;
                    break;
                case EACTags.ADDRESS /* 66 */:
                    zY67 = compositeDecoderB.y(serialDescriptor, 66);
                    i4 |= 4;
                    break;
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    zY68 = compositeDecoderB.y(serialDescriptor, 67);
                    i4 |= 8;
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    zY69 = compositeDecoderB.y(serialDescriptor, 68);
                    i4 |= 16;
                    break;
                case EACTags.DISPLAY_IMAGE /* 69 */:
                    zY70 = compositeDecoderB.y(serialDescriptor, 69);
                    i4 |= 32;
                    break;
                case 70:
                    zY71 = compositeDecoderB.y(serialDescriptor, 70);
                    i4 |= 64;
                    break;
                case EACTags.MESSAGE_REFERENCE /* 71 */:
                    zY72 = compositeDecoderB.y(serialDescriptor, 71);
                    i4 |= 128;
                    break;
                case 72:
                    zY73 = compositeDecoderB.y(serialDescriptor, 72);
                    i4 |= 256;
                    break;
                case 73:
                    zY74 = compositeDecoderB.y(serialDescriptor, 73);
                    i4 |= 512;
                    break;
                case EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY /* 74 */:
                    zY75 = compositeDecoderB.y(serialDescriptor, 74);
                    i4 |= 1024;
                    break;
                case EACTags.DEPRECATED /* 75 */:
                    zY76 = compositeDecoderB.y(serialDescriptor, 75);
                    i4 |= 2048;
                    break;
                case 76:
                    zY77 = compositeDecoderB.y(serialDescriptor, 76);
                    i4 |= 4096;
                    break;
                case EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID /* 77 */:
                    zY78 = compositeDecoderB.y(serialDescriptor, 77);
                    i4 |= 8192;
                    break;
                case 78:
                    zY79 = compositeDecoderB.y(serialDescriptor, 78);
                    i4 |= 16384;
                    break;
                case 79:
                    zY80 = compositeDecoderB.y(serialDescriptor, 79);
                    i4 |= 32768;
                    break;
                case EACTags.UNIFORM_RESOURCE_LOCATOR /* 80 */:
                    zY81 = compositeDecoderB.y(serialDescriptor, 80);
                    i4 |= 65536;
                    break;
                case EACTags.ANSWER_TO_RESET /* 81 */:
                    zY82 = compositeDecoderB.y(serialDescriptor, 81);
                    i4 |= 131072;
                    break;
                case EACTags.HISTORICAL_BYTES /* 82 */:
                    zY83 = compositeDecoderB.y(serialDescriptor, 82);
                    i4 |= 262144;
                    break;
                case 83:
                    zY84 = compositeDecoderB.y(serialDescriptor, 83);
                    i4 |= 524288;
                    break;
                case 84:
                    zY85 = compositeDecoderB.y(serialDescriptor, 84);
                    i4 |= 1048576;
                    break;
                case 85:
                    zY86 = compositeDecoderB.y(serialDescriptor, 85);
                    i4 |= PKIFailureInfo.badSenderNonce;
                    break;
                case 86:
                    zY87 = compositeDecoderB.y(serialDescriptor, 86);
                    i4 |= 4194304;
                    break;
                case 87:
                    zY88 = compositeDecoderB.y(serialDescriptor, 87);
                    i4 |= 8388608;
                    break;
                case 88:
                    zY89 = compositeDecoderB.y(serialDescriptor, 88);
                    i4 |= 16777216;
                    break;
                case 89:
                    zY90 = compositeDecoderB.y(serialDescriptor, 89);
                    i4 |= 33554432;
                    break;
                case Sink.ORIENTATION_90 /* 90 */:
                    zY91 = compositeDecoderB.y(serialDescriptor, 90);
                    i4 |= 67108864;
                    break;
                case 91:
                    zY92 = compositeDecoderB.y(serialDescriptor, 91);
                    i4 |= 134217728;
                    break;
                case 92:
                    zY93 = compositeDecoderB.y(serialDescriptor, 92);
                    i4 |= 268435456;
                    break;
                case 93:
                    zY94 = compositeDecoderB.y(serialDescriptor, 93);
                    i4 |= PKIFailureInfo.duplicateCertReq;
                    break;
                case 94:
                    zY95 = compositeDecoderB.y(serialDescriptor, 94);
                    i4 |= 1073741824;
                    break;
                case 95:
                    zY96 = compositeDecoderB.y(serialDescriptor, 95);
                    i4 |= Integer.MIN_VALUE;
                    break;
                case 96:
                    zY97 = compositeDecoderB.y(serialDescriptor, 96);
                    i5 = 1;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new FeaturesConfigCache(i2, i3, i4, i5, zY, zY2, zY3, zY4, zY5, zY6, zY7, zY8, zY9, zY10, zY11, zY12, zY13, zY14, zY15, zY16, zY17, zY18, zY19, zY20, zY21, zY22, zY23, zY24, zY25, zY26, zY27, zY28, zY29, zY30, zY31, zY32, zY33, zY34, zY35, zY36, zY37, zY38, zY39, zY40, zY41, zY42, zY43, zY44, zY45, zY46, zY47, zY48, zY49, zY50, zY51, zY52, zY53, zY54, zY55, zY56, zY57, zY58, zY59, zY60, zY61, zY62, zY63, zY64, zY65, zY66, zY67, zY68, zY69, zY70, zY71, zY72, zY73, zY74, zY75, zY76, zY77, zY78, zY79, zY80, zY81, zY82, zY83, zY84, zY85, zY86, zY87, zY88, zY89, zY90, zY91, zY92, zY93, zY94, zY95, zY96, zY97, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        FeaturesConfigCache featuresConfigCache = (FeaturesConfigCache) obj;
        featuresConfigCache.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.x(serialDescriptor, 0, featuresConfigCache.f45496a);
        compositeEncoderB.x(serialDescriptor, 1, featuresConfigCache.f45497b);
        compositeEncoderB.x(serialDescriptor, 2, featuresConfigCache.f45498c);
        compositeEncoderB.x(serialDescriptor, 3, featuresConfigCache.d);
        compositeEncoderB.x(serialDescriptor, 4, featuresConfigCache.f45499e);
        compositeEncoderB.x(serialDescriptor, 5, featuresConfigCache.f45500f);
        compositeEncoderB.x(serialDescriptor, 6, featuresConfigCache.g);
        compositeEncoderB.x(serialDescriptor, 7, featuresConfigCache.f45501h);
        compositeEncoderB.x(serialDescriptor, 8, featuresConfigCache.f45502i);
        compositeEncoderB.x(serialDescriptor, 9, featuresConfigCache.f45503j);
        compositeEncoderB.x(serialDescriptor, 10, featuresConfigCache.f45504k);
        compositeEncoderB.x(serialDescriptor, 11, featuresConfigCache.l);
        compositeEncoderB.x(serialDescriptor, 12, featuresConfigCache.m);
        compositeEncoderB.x(serialDescriptor, 13, featuresConfigCache.n);
        compositeEncoderB.x(serialDescriptor, 14, featuresConfigCache.o);
        compositeEncoderB.x(serialDescriptor, 15, featuresConfigCache.p);
        compositeEncoderB.x(serialDescriptor, 16, featuresConfigCache.q);
        compositeEncoderB.x(serialDescriptor, 17, featuresConfigCache.r);
        compositeEncoderB.x(serialDescriptor, 18, featuresConfigCache.s);
        compositeEncoderB.x(serialDescriptor, 19, featuresConfigCache.t);
        compositeEncoderB.x(serialDescriptor, 20, featuresConfigCache.u);
        compositeEncoderB.x(serialDescriptor, 21, featuresConfigCache.v);
        compositeEncoderB.x(serialDescriptor, 22, featuresConfigCache.w);
        compositeEncoderB.x(serialDescriptor, 23, featuresConfigCache.x);
        compositeEncoderB.x(serialDescriptor, 24, featuresConfigCache.y);
        compositeEncoderB.x(serialDescriptor, 25, featuresConfigCache.z);
        compositeEncoderB.x(serialDescriptor, 26, featuresConfigCache.A);
        compositeEncoderB.x(serialDescriptor, 27, featuresConfigCache.B);
        compositeEncoderB.x(serialDescriptor, 28, featuresConfigCache.C);
        compositeEncoderB.x(serialDescriptor, 29, featuresConfigCache.D);
        compositeEncoderB.x(serialDescriptor, 30, featuresConfigCache.E);
        compositeEncoderB.x(serialDescriptor, 31, featuresConfigCache.F);
        compositeEncoderB.x(serialDescriptor, 32, featuresConfigCache.G);
        compositeEncoderB.x(serialDescriptor, 33, featuresConfigCache.H);
        compositeEncoderB.x(serialDescriptor, 34, featuresConfigCache.I);
        compositeEncoderB.x(serialDescriptor, 35, featuresConfigCache.J);
        compositeEncoderB.x(serialDescriptor, 36, featuresConfigCache.K);
        compositeEncoderB.x(serialDescriptor, 37, featuresConfigCache.L);
        compositeEncoderB.x(serialDescriptor, 38, featuresConfigCache.M);
        compositeEncoderB.x(serialDescriptor, 39, featuresConfigCache.N);
        compositeEncoderB.x(serialDescriptor, 40, featuresConfigCache.O);
        compositeEncoderB.x(serialDescriptor, 41, featuresConfigCache.P);
        compositeEncoderB.x(serialDescriptor, 42, featuresConfigCache.Q);
        compositeEncoderB.x(serialDescriptor, 43, featuresConfigCache.R);
        compositeEncoderB.x(serialDescriptor, 44, featuresConfigCache.S);
        compositeEncoderB.x(serialDescriptor, 45, featuresConfigCache.T);
        compositeEncoderB.x(serialDescriptor, 46, featuresConfigCache.U);
        compositeEncoderB.x(serialDescriptor, 47, featuresConfigCache.V);
        compositeEncoderB.x(serialDescriptor, 48, featuresConfigCache.W);
        compositeEncoderB.x(serialDescriptor, 49, featuresConfigCache.X);
        compositeEncoderB.x(serialDescriptor, 50, featuresConfigCache.Y);
        compositeEncoderB.x(serialDescriptor, 51, featuresConfigCache.Z);
        compositeEncoderB.x(serialDescriptor, 52, featuresConfigCache.a0);
        compositeEncoderB.x(serialDescriptor, 53, featuresConfigCache.b0);
        compositeEncoderB.x(serialDescriptor, 54, featuresConfigCache.c0);
        compositeEncoderB.x(serialDescriptor, 55, featuresConfigCache.d0);
        compositeEncoderB.x(serialDescriptor, 56, featuresConfigCache.e0);
        compositeEncoderB.x(serialDescriptor, 57, featuresConfigCache.f0);
        compositeEncoderB.x(serialDescriptor, 58, featuresConfigCache.g0);
        compositeEncoderB.x(serialDescriptor, 59, featuresConfigCache.h0);
        compositeEncoderB.x(serialDescriptor, 60, featuresConfigCache.i0);
        compositeEncoderB.x(serialDescriptor, 61, featuresConfigCache.j0);
        compositeEncoderB.x(serialDescriptor, 62, featuresConfigCache.k0);
        compositeEncoderB.x(serialDescriptor, 63, featuresConfigCache.l0);
        compositeEncoderB.x(serialDescriptor, 64, featuresConfigCache.m0);
        compositeEncoderB.x(serialDescriptor, 65, featuresConfigCache.n0);
        compositeEncoderB.x(serialDescriptor, 66, featuresConfigCache.o0);
        compositeEncoderB.x(serialDescriptor, 67, featuresConfigCache.p0);
        compositeEncoderB.x(serialDescriptor, 68, featuresConfigCache.q0);
        compositeEncoderB.x(serialDescriptor, 69, featuresConfigCache.r0);
        compositeEncoderB.x(serialDescriptor, 70, featuresConfigCache.s0);
        compositeEncoderB.x(serialDescriptor, 71, featuresConfigCache.t0);
        compositeEncoderB.x(serialDescriptor, 72, featuresConfigCache.u0);
        compositeEncoderB.x(serialDescriptor, 73, featuresConfigCache.v0);
        compositeEncoderB.x(serialDescriptor, 74, featuresConfigCache.w0);
        compositeEncoderB.x(serialDescriptor, 75, featuresConfigCache.x0);
        compositeEncoderB.x(serialDescriptor, 76, featuresConfigCache.y0);
        compositeEncoderB.x(serialDescriptor, 77, featuresConfigCache.z0);
        compositeEncoderB.x(serialDescriptor, 78, featuresConfigCache.A0);
        compositeEncoderB.x(serialDescriptor, 79, featuresConfigCache.B0);
        compositeEncoderB.x(serialDescriptor, 80, featuresConfigCache.C0);
        compositeEncoderB.x(serialDescriptor, 81, featuresConfigCache.D0);
        compositeEncoderB.x(serialDescriptor, 82, featuresConfigCache.E0);
        compositeEncoderB.x(serialDescriptor, 83, featuresConfigCache.F0);
        compositeEncoderB.x(serialDescriptor, 84, featuresConfigCache.G0);
        compositeEncoderB.x(serialDescriptor, 85, featuresConfigCache.H0);
        compositeEncoderB.x(serialDescriptor, 86, featuresConfigCache.I0);
        compositeEncoderB.x(serialDescriptor, 87, featuresConfigCache.J0);
        compositeEncoderB.x(serialDescriptor, 88, featuresConfigCache.K0);
        compositeEncoderB.x(serialDescriptor, 89, featuresConfigCache.L0);
        compositeEncoderB.x(serialDescriptor, 90, featuresConfigCache.M0);
        compositeEncoderB.x(serialDescriptor, 91, featuresConfigCache.N0);
        compositeEncoderB.x(serialDescriptor, 92, featuresConfigCache.O0);
        compositeEncoderB.x(serialDescriptor, 93, featuresConfigCache.P0);
        compositeEncoderB.x(serialDescriptor, 94, featuresConfigCache.Q0);
        compositeEncoderB.x(serialDescriptor, 95, featuresConfigCache.R0);
        compositeEncoderB.x(serialDescriptor, 96, featuresConfigCache.S0);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        BooleanSerializer booleanSerializer = BooleanSerializer.f75574a;
        return new KSerializer[]{booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer};
    }
}

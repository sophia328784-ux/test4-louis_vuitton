.class public final synthetic Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "com/vuitton/android/data/dto/config/cache/FeaturesConfigCache.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "a",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache$$serializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache$$serializer;->a:Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vuitton.android.data.dto.config.cache.FeaturesConfigCache"

    const/16 v3, 0x61

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "isAccessibilityDisableAutoplayEnabled"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isAccessibilityEnhancedContrastEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isAccessibilitySimplifyNavigationEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isAccessibilityStatementEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isAddressAutocompleteEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isAddToCartCrossSellEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isAICompanionEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isAICompanionPdpEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isAICompanionSessionIdEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isAppsflyerEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isAutocompletePostalCodeEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isBackInStockEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isBackInStockLegalConsentEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isBackInStockPreviewModeEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isBackOrderDisclaimerEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isBackOrderDisclaimerEnhancementEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isBatchSdkEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isBookingMyExperiencesEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isCareServicesEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isCareServicesMigrationEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isCertificatesMockVisionnaireLockedStatusEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isChinaPrivacyEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isContactUsCareServiceEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isContactUsEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isDiamondsPdpEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isDistantRepairsBillingAddressEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isDistantRepairsCallEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isDistantRepairsCancellationReasonEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isDistantRepairsEmailEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isDistantRepairsEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isDistantRepairsModifyEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isDistantRepairsPaymentMethodsIconsEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isDistantRepairsShippedFromEhubEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isDistantRepairsTutorialEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isDistantRepairsVideoCallEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isDistantRepairsZipCodeEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isDynamicYieldEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isDynatraceSdkEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isEmailTrackingConsentEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isExclusiveOfferEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isFeedForYouDefaultTabEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isFindAStoreEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isGcmOptOutEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isGoogleAnalyticsEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isGoogleCustomerMatchEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isGoogleSignInEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isHorizonSpeakerEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isInboxEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isKakaoSignInEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isKeepAllEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isLegalNoticeRegisterEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isLineSignInEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isMyCertificatesEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isNativeAccountActivationEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isNativeCartEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isNativeLoginEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isNativeRegisterEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isNativeRegisterKisaEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isNativeShareCatalogEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isNativeShareImmersiveEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isNativeShareWishlistEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isNativeThankYouPageFeedbackEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isNativeThankYouPageRedirectEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isOnboardingEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isOnlineStoreAppointmentCidEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isOnlineStoreAppointmentCreationEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isOrderExchangeEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isOrderReturnEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isOrdersInvoiceEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isOsaGuestEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isOsaKisaEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isOsaModifyEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isOsaReasonsEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isPayByLinkEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isPdpAGECLawEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isPerfectLogsEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isPersonalSelectionsEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isPlpRevampV3Phase2Enabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isPlpV3GridViewEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isPowerFrontCareServiceEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isPowerFrontEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isProfilePhoneNumberEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isPuertoRicoEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isQrCodeEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isRefreshAuthCheckoutEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isRegistrationAddressStepEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isSensorDataEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isSizeGuidePimEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isSmsConsentEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isSneakerEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isSocialSignInDebugEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isStoreModeEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isStoreModeV2Enabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isTingyunSdkEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isTrunkSpeakerEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isTwistEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isYMALEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 124

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v2

    move v6, v3

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 v27, v26

    move/from16 v28, v27

    move/from16 v29, v28

    move/from16 v30, v29

    move/from16 v31, v30

    move/from16 v32, v31

    move/from16 v33, v32

    move/from16 v34, v33

    move/from16 v35, v34

    move/from16 v36, v35

    move/from16 v37, v36

    move/from16 v38, v37

    move/from16 v39, v38

    move/from16 v40, v39

    move/from16 v41, v40

    move/from16 v42, v41

    move/from16 v43, v42

    move/from16 v44, v43

    move/from16 v45, v44

    move/from16 v46, v45

    move/from16 v47, v46

    move/from16 v48, v47

    move/from16 v49, v48

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v59, v58

    move/from16 v60, v59

    move/from16 v61, v60

    move/from16 v62, v61

    move/from16 v63, v62

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v69, v68

    move/from16 v70, v69

    move/from16 v71, v70

    move/from16 v72, v71

    move/from16 v73, v72

    move/from16 v74, v73

    move/from16 v75, v74

    move/from16 v76, v75

    move/from16 v77, v76

    move/from16 v78, v77

    move/from16 v79, v78

    move/from16 v80, v79

    move/from16 v81, v80

    move/from16 v82, v81

    move/from16 v83, v82

    move/from16 v84, v83

    move/from16 v85, v84

    move/from16 v86, v85

    move/from16 v87, v86

    move/from16 v88, v87

    move/from16 v89, v88

    move/from16 v90, v89

    move/from16 v91, v90

    move/from16 v92, v91

    move/from16 v93, v92

    move/from16 v94, v93

    move/from16 v95, v94

    move/from16 v96, v95

    move/from16 v97, v96

    move/from16 v98, v97

    move/from16 v99, v98

    move/from16 v100, v99

    move/from16 v101, v100

    move/from16 v102, v101

    move/from16 v103, v102

    move/from16 v104, v103

    move/from16 v105, v104

    move/from16 v106, v105

    :goto_0
    if-eqz v4, :cond_0

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v5

    const v107, 0x8000

    const/high16 v108, 0x10000

    const/high16 v109, 0x20000

    const/high16 v110, 0x40000

    const/high16 v111, 0x80000

    const/high16 v112, 0x100000

    const/high16 v113, 0x200000

    const/high16 v114, 0x400000

    const/high16 v115, 0x800000

    const/high16 v116, 0x1000000

    const/high16 v117, 0x2000000

    const/high16 v118, 0x4000000

    const/high16 v119, 0x8000000

    const/high16 v120, 0x10000000

    const/high16 v121, 0x20000000

    const/high16 v122, 0x40000000    # 2.0f

    const/high16 v123, -0x80000000

    packed-switch v5, :pswitch_data_0

    invoke-static {v5}, Lb21;->l(I)V

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const/16 v5, 0x60

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v106

    move v9, v2

    goto :goto_0

    :pswitch_1
    const/16 v5, 0x5f

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v105

    or-int v8, v8, v123

    goto :goto_0

    :pswitch_2
    const/16 v5, 0x5e

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v104

    or-int v8, v8, v122

    goto :goto_0

    :pswitch_3
    const/16 v5, 0x5d

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v103

    or-int v8, v8, v121

    goto :goto_0

    :pswitch_4
    const/16 v5, 0x5c

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v102

    or-int v8, v8, v120

    goto :goto_0

    :pswitch_5
    const/16 v5, 0x5b

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v101

    or-int v8, v8, v119

    goto :goto_0

    :pswitch_6
    const/16 v5, 0x5a

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v100

    or-int v8, v8, v118

    goto :goto_0

    :pswitch_7
    const/16 v5, 0x59

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v99

    or-int v8, v8, v117

    goto :goto_0

    :pswitch_8
    const/16 v5, 0x58

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v98

    or-int v8, v8, v116

    goto/16 :goto_0

    :pswitch_9
    const/16 v5, 0x57

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v97

    or-int v8, v8, v115

    goto/16 :goto_0

    :pswitch_a
    const/16 v5, 0x56

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v96

    or-int v8, v8, v114

    goto/16 :goto_0

    :pswitch_b
    const/16 v5, 0x55

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v95

    or-int v8, v8, v113

    goto/16 :goto_0

    :pswitch_c
    const/16 v5, 0x54

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v94

    or-int v8, v8, v112

    goto/16 :goto_0

    :pswitch_d
    const/16 v5, 0x53

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v93

    or-int v8, v8, v111

    goto/16 :goto_0

    :pswitch_e
    const/16 v5, 0x52

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v92

    or-int v8, v8, v110

    goto/16 :goto_0

    :pswitch_f
    const/16 v5, 0x51

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v91

    or-int v8, v8, v109

    goto/16 :goto_0

    :pswitch_10
    const/16 v5, 0x50

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v90

    or-int v8, v8, v108

    goto/16 :goto_0

    :pswitch_11
    const/16 v5, 0x4f

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v89

    or-int v8, v8, v107

    goto/16 :goto_0

    :pswitch_12
    const/16 v5, 0x4e

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v88

    or-int/lit16 v8, v8, 0x4000

    goto/16 :goto_0

    :pswitch_13
    const/16 v5, 0x4d

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v87

    or-int/lit16 v8, v8, 0x2000

    goto/16 :goto_0

    :pswitch_14
    const/16 v5, 0x4c

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v86

    or-int/lit16 v8, v8, 0x1000

    goto/16 :goto_0

    :pswitch_15
    const/16 v5, 0x4b

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v85

    or-int/lit16 v8, v8, 0x800

    goto/16 :goto_0

    :pswitch_16
    const/16 v5, 0x4a

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v84

    or-int/lit16 v8, v8, 0x400

    goto/16 :goto_0

    :pswitch_17
    const/16 v5, 0x49

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v83

    or-int/lit16 v8, v8, 0x200

    goto/16 :goto_0

    :pswitch_18
    const/16 v5, 0x48

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v82

    or-int/lit16 v8, v8, 0x100

    goto/16 :goto_0

    :pswitch_19
    const/16 v5, 0x47

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v81

    or-int/lit16 v8, v8, 0x80

    goto/16 :goto_0

    :pswitch_1a
    const/16 v5, 0x46

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v80

    or-int/lit8 v8, v8, 0x40

    goto/16 :goto_0

    :pswitch_1b
    const/16 v5, 0x45

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v79

    or-int/lit8 v8, v8, 0x20

    goto/16 :goto_0

    :pswitch_1c
    const/16 v5, 0x44

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v78

    or-int/lit8 v8, v8, 0x10

    goto/16 :goto_0

    :pswitch_1d
    const/16 v5, 0x43

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v77

    or-int/lit8 v8, v8, 0x8

    goto/16 :goto_0

    :pswitch_1e
    const/16 v5, 0x42

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v76

    or-int/lit8 v8, v8, 0x4

    goto/16 :goto_0

    :pswitch_1f
    const/16 v5, 0x41

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v75

    or-int/lit8 v8, v8, 0x2

    goto/16 :goto_0

    :pswitch_20
    const/16 v5, 0x40

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v74

    or-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :pswitch_21
    const/16 v5, 0x3f

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v73

    or-int v7, v7, v123

    goto/16 :goto_0

    :pswitch_22
    const/16 v5, 0x3e

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v72

    or-int v7, v7, v122

    goto/16 :goto_0

    :pswitch_23
    const/16 v5, 0x3d

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v71

    or-int v7, v7, v121

    goto/16 :goto_0

    :pswitch_24
    const/16 v5, 0x3c

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v70

    or-int v7, v7, v120

    goto/16 :goto_0

    :pswitch_25
    const/16 v5, 0x3b

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v69

    or-int v7, v7, v119

    goto/16 :goto_0

    :pswitch_26
    const/16 v5, 0x3a

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v68

    or-int v7, v7, v118

    goto/16 :goto_0

    :pswitch_27
    const/16 v5, 0x39

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v67

    or-int v7, v7, v117

    goto/16 :goto_0

    :pswitch_28
    const/16 v5, 0x38

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v66

    or-int v7, v7, v116

    goto/16 :goto_0

    :pswitch_29
    const/16 v5, 0x37

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v65

    or-int v7, v7, v115

    goto/16 :goto_0

    :pswitch_2a
    const/16 v5, 0x36

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v64

    or-int v7, v7, v114

    goto/16 :goto_0

    :pswitch_2b
    const/16 v5, 0x35

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v63

    or-int v7, v7, v113

    goto/16 :goto_0

    :pswitch_2c
    const/16 v5, 0x34

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v62

    or-int v7, v7, v112

    goto/16 :goto_0

    :pswitch_2d
    const/16 v5, 0x33

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v61

    or-int v7, v7, v111

    goto/16 :goto_0

    :pswitch_2e
    const/16 v5, 0x32

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v60

    or-int v7, v7, v110

    goto/16 :goto_0

    :pswitch_2f
    const/16 v5, 0x31

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v59

    or-int v7, v7, v109

    goto/16 :goto_0

    :pswitch_30
    const/16 v5, 0x30

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v58

    or-int v7, v7, v108

    goto/16 :goto_0

    :pswitch_31
    const/16 v5, 0x2f

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v57

    or-int v7, v7, v107

    goto/16 :goto_0

    :pswitch_32
    const/16 v5, 0x2e

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v56

    or-int/lit16 v7, v7, 0x4000

    goto/16 :goto_0

    :pswitch_33
    const/16 v5, 0x2d

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v55

    or-int/lit16 v7, v7, 0x2000

    goto/16 :goto_0

    :pswitch_34
    const/16 v5, 0x2c

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v54

    or-int/lit16 v7, v7, 0x1000

    goto/16 :goto_0

    :pswitch_35
    const/16 v5, 0x2b

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v53

    or-int/lit16 v7, v7, 0x800

    goto/16 :goto_0

    :pswitch_36
    const/16 v5, 0x2a

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v52

    or-int/lit16 v7, v7, 0x400

    goto/16 :goto_0

    :pswitch_37
    const/16 v5, 0x29

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v51

    or-int/lit16 v7, v7, 0x200

    goto/16 :goto_0

    :pswitch_38
    const/16 v5, 0x28

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v50

    or-int/lit16 v7, v7, 0x100

    goto/16 :goto_0

    :pswitch_39
    const/16 v5, 0x27

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v49

    or-int/lit16 v7, v7, 0x80

    goto/16 :goto_0

    :pswitch_3a
    const/16 v5, 0x26

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v48

    or-int/lit8 v7, v7, 0x40

    goto/16 :goto_0

    :pswitch_3b
    const/16 v5, 0x25

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v47

    or-int/lit8 v7, v7, 0x20

    goto/16 :goto_0

    :pswitch_3c
    const/16 v5, 0x24

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v46

    or-int/lit8 v7, v7, 0x10

    goto/16 :goto_0

    :pswitch_3d
    const/16 v5, 0x23

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v45

    or-int/lit8 v7, v7, 0x8

    goto/16 :goto_0

    :pswitch_3e
    const/16 v5, 0x22

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v44

    or-int/lit8 v7, v7, 0x4

    goto/16 :goto_0

    :pswitch_3f
    const/16 v5, 0x21

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v43

    or-int/lit8 v7, v7, 0x2

    goto/16 :goto_0

    :pswitch_40
    const/16 v5, 0x20

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v42

    or-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :pswitch_41
    const/16 v5, 0x1f

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v41

    or-int v6, v6, v123

    goto/16 :goto_0

    :pswitch_42
    const/16 v5, 0x1e

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v40

    or-int v6, v6, v122

    goto/16 :goto_0

    :pswitch_43
    const/16 v5, 0x1d

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v39

    or-int v6, v6, v121

    goto/16 :goto_0

    :pswitch_44
    const/16 v5, 0x1c

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v38

    or-int v6, v6, v120

    goto/16 :goto_0

    :pswitch_45
    const/16 v5, 0x1b

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v37

    or-int v6, v6, v119

    goto/16 :goto_0

    :pswitch_46
    const/16 v5, 0x1a

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v36

    or-int v6, v6, v118

    goto/16 :goto_0

    :pswitch_47
    const/16 v5, 0x19

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v35

    or-int v6, v6, v117

    goto/16 :goto_0

    :pswitch_48
    const/16 v5, 0x18

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v34

    or-int v6, v6, v116

    goto/16 :goto_0

    :pswitch_49
    const/16 v5, 0x17

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v33

    or-int v6, v6, v115

    goto/16 :goto_0

    :pswitch_4a
    const/16 v5, 0x16

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v32

    or-int v6, v6, v114

    goto/16 :goto_0

    :pswitch_4b
    const/16 v5, 0x15

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v31

    or-int v6, v6, v113

    goto/16 :goto_0

    :pswitch_4c
    const/16 v5, 0x14

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v30

    or-int v6, v6, v112

    goto/16 :goto_0

    :pswitch_4d
    const/16 v5, 0x13

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v29

    or-int v6, v6, v111

    goto/16 :goto_0

    :pswitch_4e
    const/16 v5, 0x12

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v28

    or-int v6, v6, v110

    goto/16 :goto_0

    :pswitch_4f
    const/16 v5, 0x11

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v27

    or-int v6, v6, v109

    goto/16 :goto_0

    :pswitch_50
    const/16 v5, 0x10

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v26

    or-int v6, v6, v108

    goto/16 :goto_0

    :pswitch_51
    const/16 v5, 0xf

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v25

    or-int v6, v6, v107

    goto/16 :goto_0

    :pswitch_52
    const/16 v5, 0xe

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v24

    or-int/lit16 v6, v6, 0x4000

    goto/16 :goto_0

    :pswitch_53
    const/16 v5, 0xd

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v23

    or-int/lit16 v6, v6, 0x2000

    goto/16 :goto_0

    :pswitch_54
    const/16 v5, 0xc

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v22

    or-int/lit16 v6, v6, 0x1000

    goto/16 :goto_0

    :pswitch_55
    const/16 v5, 0xb

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v21

    or-int/lit16 v6, v6, 0x800

    goto/16 :goto_0

    :pswitch_56
    const/16 v5, 0xa

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v20

    or-int/lit16 v6, v6, 0x400

    goto/16 :goto_0

    :pswitch_57
    const/16 v5, 0x9

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v19

    or-int/lit16 v6, v6, 0x200

    goto/16 :goto_0

    :pswitch_58
    const/16 v5, 0x8

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v18

    or-int/lit16 v6, v6, 0x100

    goto/16 :goto_0

    :pswitch_59
    const/4 v5, 0x7

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v17

    or-int/lit16 v6, v6, 0x80

    goto/16 :goto_0

    :pswitch_5a
    const/4 v5, 0x6

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v16

    or-int/lit8 v6, v6, 0x40

    goto/16 :goto_0

    :pswitch_5b
    const/4 v5, 0x5

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v15

    or-int/lit8 v6, v6, 0x20

    goto/16 :goto_0

    :pswitch_5c
    const/4 v5, 0x4

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v14

    or-int/lit8 v6, v6, 0x10

    goto/16 :goto_0

    :pswitch_5d
    const/4 v5, 0x3

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v13

    or-int/lit8 v6, v6, 0x8

    goto/16 :goto_0

    :pswitch_5e
    const/4 v5, 0x2

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v12

    or-int/lit8 v6, v6, 0x4

    goto/16 :goto_0

    :pswitch_5f
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v11

    or-int/lit8 v6, v6, 0x2

    goto/16 :goto_0

    :pswitch_60
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v10

    or-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :pswitch_61
    move v4, v3

    goto/16 :goto_0

    :cond_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v5, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;

    const/16 v107, 0x0

    invoke-direct/range {v5 .. v107}, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;-><init>(IIIIZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v5

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    const/4 v0, 0x0

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->a:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v0, 0x1

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->b:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v0, 0x2

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->c:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v0, 0x3

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->d:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v0, 0x4

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->e:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v0, 0x5

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->f:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v0, 0x6

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->g:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v0, 0x7

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->h:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x8

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->i:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x9

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->j:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0xa

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->k:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0xb

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->l:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0xc

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->m:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0xd

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->n:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0xe

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->o:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0xf

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->p:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x10

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->q:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x11

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->r:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x12

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->s:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x13

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->t:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x14

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->u:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x15

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->v:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x16

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->w:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x17

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->x:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x18

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->y:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x19

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->z:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x1a

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->A:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x1b

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->B:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x1c

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->C:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x1d

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->D:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x1e

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->E:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x1f

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->F:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x20

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->G:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x21

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->H:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x22

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->I:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x23

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->J:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x24

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->K:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x25

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->L:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x26

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->M:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x27

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->N:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x28

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->O:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x29

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->P:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x2a

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Q:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x2b

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->R:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x2c

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->S:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x2d

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->T:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x2e

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->U:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x2f

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->V:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x30

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->W:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x31

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->X:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x32

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Y:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x33

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Z:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x34

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->a0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x35

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->b0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x36

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->c0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x37

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->d0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x38

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->e0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x39

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->f0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x3a

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->g0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x3b

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->h0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x3c

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->i0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x3d

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->j0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x3e

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->k0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x3f

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->l0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x40

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->m0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x41

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->n0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x42

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->o0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x43

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->p0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x44

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->q0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x45

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->r0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x46

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->s0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x47

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->t0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x48

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->u0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x49

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->v0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x4a

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->w0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x4b

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->x0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x4c

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->y0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x4d

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->z0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x4e

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->A0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x4f

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->B0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x50

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->C0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x51

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->D0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x52

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->E0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x53

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->F0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x54

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->G0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x55

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->H0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x56

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->I0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x57

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->J0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x58

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->K0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x59

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->L0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x5a

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->M0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x5b

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->N0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x5c

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->O0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x5d

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->P0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x5e

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Q0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x5f

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->R0:Z

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x60

    iget-boolean p2, p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->S0:Z

    invoke-interface {p1, p0, v0, p2}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public final e()[Lkotlinx/serialization/KSerializer;
    .locals 2

    const/16 p0, 0x61

    new-array p0, p0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->a:Lkotlinx/serialization/internal/BooleanSerializer;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const/16 v1, 0xd

    aput-object v0, p0, v1

    const/16 v1, 0xe

    aput-object v0, p0, v1

    const/16 v1, 0xf

    aput-object v0, p0, v1

    const/16 v1, 0x10

    aput-object v0, p0, v1

    const/16 v1, 0x11

    aput-object v0, p0, v1

    const/16 v1, 0x12

    aput-object v0, p0, v1

    const/16 v1, 0x13

    aput-object v0, p0, v1

    const/16 v1, 0x14

    aput-object v0, p0, v1

    const/16 v1, 0x15

    aput-object v0, p0, v1

    const/16 v1, 0x16

    aput-object v0, p0, v1

    const/16 v1, 0x17

    aput-object v0, p0, v1

    const/16 v1, 0x18

    aput-object v0, p0, v1

    const/16 v1, 0x19

    aput-object v0, p0, v1

    const/16 v1, 0x1a

    aput-object v0, p0, v1

    const/16 v1, 0x1b

    aput-object v0, p0, v1

    const/16 v1, 0x1c

    aput-object v0, p0, v1

    const/16 v1, 0x1d

    aput-object v0, p0, v1

    const/16 v1, 0x1e

    aput-object v0, p0, v1

    const/16 v1, 0x1f

    aput-object v0, p0, v1

    const/16 v1, 0x20

    aput-object v0, p0, v1

    const/16 v1, 0x21

    aput-object v0, p0, v1

    const/16 v1, 0x22

    aput-object v0, p0, v1

    const/16 v1, 0x23

    aput-object v0, p0, v1

    const/16 v1, 0x24

    aput-object v0, p0, v1

    const/16 v1, 0x25

    aput-object v0, p0, v1

    const/16 v1, 0x26

    aput-object v0, p0, v1

    const/16 v1, 0x27

    aput-object v0, p0, v1

    const/16 v1, 0x28

    aput-object v0, p0, v1

    const/16 v1, 0x29

    aput-object v0, p0, v1

    const/16 v1, 0x2a

    aput-object v0, p0, v1

    const/16 v1, 0x2b

    aput-object v0, p0, v1

    const/16 v1, 0x2c

    aput-object v0, p0, v1

    const/16 v1, 0x2d

    aput-object v0, p0, v1

    const/16 v1, 0x2e

    aput-object v0, p0, v1

    const/16 v1, 0x2f

    aput-object v0, p0, v1

    const/16 v1, 0x30

    aput-object v0, p0, v1

    const/16 v1, 0x31

    aput-object v0, p0, v1

    const/16 v1, 0x32

    aput-object v0, p0, v1

    const/16 v1, 0x33

    aput-object v0, p0, v1

    const/16 v1, 0x34

    aput-object v0, p0, v1

    const/16 v1, 0x35

    aput-object v0, p0, v1

    const/16 v1, 0x36

    aput-object v0, p0, v1

    const/16 v1, 0x37

    aput-object v0, p0, v1

    const/16 v1, 0x38

    aput-object v0, p0, v1

    const/16 v1, 0x39

    aput-object v0, p0, v1

    const/16 v1, 0x3a

    aput-object v0, p0, v1

    const/16 v1, 0x3b

    aput-object v0, p0, v1

    const/16 v1, 0x3c

    aput-object v0, p0, v1

    const/16 v1, 0x3d

    aput-object v0, p0, v1

    const/16 v1, 0x3e

    aput-object v0, p0, v1

    const/16 v1, 0x3f

    aput-object v0, p0, v1

    const/16 v1, 0x40

    aput-object v0, p0, v1

    const/16 v1, 0x41

    aput-object v0, p0, v1

    const/16 v1, 0x42

    aput-object v0, p0, v1

    const/16 v1, 0x43

    aput-object v0, p0, v1

    const/16 v1, 0x44

    aput-object v0, p0, v1

    const/16 v1, 0x45

    aput-object v0, p0, v1

    const/16 v1, 0x46

    aput-object v0, p0, v1

    const/16 v1, 0x47

    aput-object v0, p0, v1

    const/16 v1, 0x48

    aput-object v0, p0, v1

    const/16 v1, 0x49

    aput-object v0, p0, v1

    const/16 v1, 0x4a

    aput-object v0, p0, v1

    const/16 v1, 0x4b

    aput-object v0, p0, v1

    const/16 v1, 0x4c

    aput-object v0, p0, v1

    const/16 v1, 0x4d

    aput-object v0, p0, v1

    const/16 v1, 0x4e

    aput-object v0, p0, v1

    const/16 v1, 0x4f

    aput-object v0, p0, v1

    const/16 v1, 0x50

    aput-object v0, p0, v1

    const/16 v1, 0x51

    aput-object v0, p0, v1

    const/16 v1, 0x52

    aput-object v0, p0, v1

    const/16 v1, 0x53

    aput-object v0, p0, v1

    const/16 v1, 0x54

    aput-object v0, p0, v1

    const/16 v1, 0x55

    aput-object v0, p0, v1

    const/16 v1, 0x56

    aput-object v0, p0, v1

    const/16 v1, 0x57

    aput-object v0, p0, v1

    const/16 v1, 0x58

    aput-object v0, p0, v1

    const/16 v1, 0x59

    aput-object v0, p0, v1

    const/16 v1, 0x5a

    aput-object v0, p0, v1

    const/16 v1, 0x5b

    aput-object v0, p0, v1

    const/16 v1, 0x5c

    aput-object v0, p0, v1

    const/16 v1, 0x5d

    aput-object v0, p0, v1

    const/16 v1, 0x5e

    aput-object v0, p0, v1

    const/16 v1, 0x5f

    aput-object v0, p0, v1

    const/16 v1, 0x60

    aput-object v0, p0, v1

    return-object p0
.end method

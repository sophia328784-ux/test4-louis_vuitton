.class public final Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache$$serializer;,
        Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008c\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 n2\u00020\u0001:\u0002onB\u008f\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u0012\u0006\u0010\u001a\u001a\u00020\u0002\u0012\u0006\u0010\u001b\u001a\u00020\u0002\u0012\u0006\u0010\u001c\u001a\u00020\u0002\u0012\u0006\u0010\u001d\u001a\u00020\u0002\u0012\u0006\u0010\u001e\u001a\u00020\u0002\u0012\u0006\u0010\u001f\u001a\u00020\u0002\u0012\u0006\u0010 \u001a\u00020\u0002\u0012\u0006\u0010!\u001a\u00020\u0002\u0012\u0006\u0010\"\u001a\u00020\u0002\u0012\u0006\u0010#\u001a\u00020\u0002\u0012\u0006\u0010$\u001a\u00020\u0002\u0012\u0006\u0010%\u001a\u00020\u0002\u0012\u0006\u0010&\u001a\u00020\u0002\u0012\u0006\u0010\'\u001a\u00020\u0002\u0012\u0006\u0010(\u001a\u00020\u0002\u0012\u0006\u0010)\u001a\u00020\u0002\u0012\u0006\u0010*\u001a\u00020\u0002\u0012\u0006\u0010+\u001a\u00020\u0002\u0012\u0006\u0010,\u001a\u00020\u0002\u0012\u0006\u0010-\u001a\u00020\u0002\u0012\u0006\u0010.\u001a\u00020\u0002\u0012\u0006\u0010/\u001a\u00020\u0002\u0012\u0006\u00100\u001a\u00020\u0002\u0012\u0006\u00101\u001a\u00020\u0002\u0012\u0006\u00102\u001a\u00020\u0002\u0012\u0006\u00103\u001a\u00020\u0002\u0012\u0006\u00104\u001a\u00020\u0002\u0012\u0006\u00105\u001a\u00020\u0002\u0012\u0006\u00106\u001a\u00020\u0002\u0012\u0006\u00107\u001a\u00020\u0002\u0012\u0006\u00108\u001a\u00020\u0002\u0012\u0006\u00109\u001a\u00020\u0002\u0012\u0006\u0010:\u001a\u00020\u0002\u0012\u0006\u0010;\u001a\u00020\u0002\u0012\u0006\u0010<\u001a\u00020\u0002\u0012\u0006\u0010=\u001a\u00020\u0002\u0012\u0006\u0010>\u001a\u00020\u0002\u0012\u0006\u0010?\u001a\u00020\u0002\u0012\u0006\u0010@\u001a\u00020\u0002\u0012\u0006\u0010A\u001a\u00020\u0002\u0012\u0006\u0010B\u001a\u00020\u0002\u0012\u0006\u0010C\u001a\u00020\u0002\u0012\u0006\u0010D\u001a\u00020\u0002\u0012\u0006\u0010E\u001a\u00020\u0002\u0012\u0006\u0010F\u001a\u00020\u0002\u0012\u0006\u0010G\u001a\u00020\u0002\u0012\u0006\u0010H\u001a\u00020\u0002\u0012\u0006\u0010I\u001a\u00020\u0002\u0012\u0006\u0010J\u001a\u00020\u0002\u0012\u0006\u0010K\u001a\u00020\u0002\u0012\u0006\u0010L\u001a\u00020\u0002\u0012\u0006\u0010M\u001a\u00020\u0002\u0012\u0006\u0010N\u001a\u00020\u0002\u0012\u0006\u0010O\u001a\u00020\u0002\u0012\u0006\u0010P\u001a\u00020\u0002\u0012\u0006\u0010Q\u001a\u00020\u0002\u0012\u0006\u0010R\u001a\u00020\u0002\u0012\u0006\u0010S\u001a\u00020\u0002\u0012\u0006\u0010T\u001a\u00020\u0002\u0012\u0006\u0010U\u001a\u00020\u0002\u0012\u0006\u0010V\u001a\u00020\u0002\u0012\u0006\u0010W\u001a\u00020\u0002\u0012\u0006\u0010X\u001a\u00020\u0002\u0012\u0006\u0010Y\u001a\u00020\u0002\u0012\u0006\u0010Z\u001a\u00020\u0002\u0012\u0006\u0010[\u001a\u00020\u0002\u0012\u0006\u0010\\\u001a\u00020\u0002\u0012\u0006\u0010]\u001a\u00020\u0002\u0012\u0006\u0010^\u001a\u00020\u0002\u0012\u0006\u0010_\u001a\u00020\u0002\u0012\u0006\u0010`\u001a\u00020\u0002\u0012\u0006\u0010a\u001a\u00020\u0002\u0012\u0006\u0010b\u001a\u00020\u0002\u0012\u0006\u0010c\u001a\u00020\u0002\u00a2\u0006\u0004\u0008d\u0010eB\u00bb\u0006\u0008\u0010\u0012\u0006\u0010g\u001a\u00020f\u0012\u0006\u0010h\u001a\u00020f\u0012\u0006\u0010i\u001a\u00020f\u0012\u0006\u0010j\u001a\u00020f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u0012\u0006\u0010\u001a\u001a\u00020\u0002\u0012\u0006\u0010\u001b\u001a\u00020\u0002\u0012\u0006\u0010\u001c\u001a\u00020\u0002\u0012\u0006\u0010\u001d\u001a\u00020\u0002\u0012\u0006\u0010\u001e\u001a\u00020\u0002\u0012\u0006\u0010\u001f\u001a\u00020\u0002\u0012\u0006\u0010 \u001a\u00020\u0002\u0012\u0006\u0010!\u001a\u00020\u0002\u0012\u0006\u0010\"\u001a\u00020\u0002\u0012\u0006\u0010#\u001a\u00020\u0002\u0012\u0006\u0010$\u001a\u00020\u0002\u0012\u0006\u0010%\u001a\u00020\u0002\u0012\u0006\u0010&\u001a\u00020\u0002\u0012\u0006\u0010\'\u001a\u00020\u0002\u0012\u0006\u0010(\u001a\u00020\u0002\u0012\u0006\u0010)\u001a\u00020\u0002\u0012\u0006\u0010*\u001a\u00020\u0002\u0012\u0006\u0010+\u001a\u00020\u0002\u0012\u0006\u0010,\u001a\u00020\u0002\u0012\u0006\u0010-\u001a\u00020\u0002\u0012\u0006\u0010.\u001a\u00020\u0002\u0012\u0006\u0010/\u001a\u00020\u0002\u0012\u0006\u00100\u001a\u00020\u0002\u0012\u0006\u00101\u001a\u00020\u0002\u0012\u0006\u00102\u001a\u00020\u0002\u0012\u0006\u00103\u001a\u00020\u0002\u0012\u0006\u00104\u001a\u00020\u0002\u0012\u0006\u00105\u001a\u00020\u0002\u0012\u0006\u00106\u001a\u00020\u0002\u0012\u0006\u00107\u001a\u00020\u0002\u0012\u0006\u00108\u001a\u00020\u0002\u0012\u0006\u00109\u001a\u00020\u0002\u0012\u0006\u0010:\u001a\u00020\u0002\u0012\u0006\u0010;\u001a\u00020\u0002\u0012\u0006\u0010<\u001a\u00020\u0002\u0012\u0006\u0010=\u001a\u00020\u0002\u0012\u0006\u0010>\u001a\u00020\u0002\u0012\u0006\u0010?\u001a\u00020\u0002\u0012\u0006\u0010@\u001a\u00020\u0002\u0012\u0006\u0010A\u001a\u00020\u0002\u0012\u0006\u0010B\u001a\u00020\u0002\u0012\u0006\u0010C\u001a\u00020\u0002\u0012\u0006\u0010D\u001a\u00020\u0002\u0012\u0006\u0010E\u001a\u00020\u0002\u0012\u0006\u0010F\u001a\u00020\u0002\u0012\u0006\u0010G\u001a\u00020\u0002\u0012\u0006\u0010H\u001a\u00020\u0002\u0012\u0006\u0010I\u001a\u00020\u0002\u0012\u0006\u0010J\u001a\u00020\u0002\u0012\u0006\u0010K\u001a\u00020\u0002\u0012\u0006\u0010L\u001a\u00020\u0002\u0012\u0006\u0010M\u001a\u00020\u0002\u0012\u0006\u0010N\u001a\u00020\u0002\u0012\u0006\u0010O\u001a\u00020\u0002\u0012\u0006\u0010P\u001a\u00020\u0002\u0012\u0006\u0010Q\u001a\u00020\u0002\u0012\u0006\u0010R\u001a\u00020\u0002\u0012\u0006\u0010S\u001a\u00020\u0002\u0012\u0006\u0010T\u001a\u00020\u0002\u0012\u0006\u0010U\u001a\u00020\u0002\u0012\u0006\u0010V\u001a\u00020\u0002\u0012\u0006\u0010W\u001a\u00020\u0002\u0012\u0006\u0010X\u001a\u00020\u0002\u0012\u0006\u0010Y\u001a\u00020\u0002\u0012\u0006\u0010Z\u001a\u00020\u0002\u0012\u0006\u0010[\u001a\u00020\u0002\u0012\u0006\u0010\\\u001a\u00020\u0002\u0012\u0006\u0010]\u001a\u00020\u0002\u0012\u0006\u0010^\u001a\u00020\u0002\u0012\u0006\u0010_\u001a\u00020\u0002\u0012\u0006\u0010`\u001a\u00020\u0002\u0012\u0006\u0010a\u001a\u00020\u0002\u0012\u0006\u0010b\u001a\u00020\u0002\u0012\u0006\u0010c\u001a\u00020\u0002\u0012\u0008\u0010l\u001a\u0004\u0018\u00010k\u00a2\u0006\u0004\u0008d\u0010m\u00a8\u0006p"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;",
        "",
        "",
        "isAccessibilityDisableAutoplayEnabled",
        "isAccessibilityEnhancedContrastEnabled",
        "isAccessibilitySimplifyNavigationEnabled",
        "isAccessibilityStatementEnabled",
        "isAddressAutocompleteEnabled",
        "isAddToCartCrossSellEnabled",
        "isAICompanionEnabled",
        "isAICompanionPdpEnabled",
        "isAICompanionSessionIdEnabled",
        "isAppsflyerEnabled",
        "isAutocompletePostalCodeEnabled",
        "isBackInStockEnabled",
        "isBackInStockLegalConsentEnabled",
        "isBackInStockPreviewModeEnabled",
        "isBackOrderDisclaimerEnabled",
        "isBackOrderDisclaimerEnhancementEnabled",
        "isBatchSdkEnabled",
        "isBookingMyExperiencesEnabled",
        "isCareServicesEnabled",
        "isCareServicesMigrationEnabled",
        "isCertificatesMockVisionnaireLockedStatusEnabled",
        "isChinaPrivacyEnabled",
        "isContactUsCareServiceEnabled",
        "isContactUsEnabled",
        "isDiamondsPdpEnabled",
        "isDistantRepairsBillingAddressEnabled",
        "isDistantRepairsCallEnabled",
        "isDistantRepairsCancellationReasonEnabled",
        "isDistantRepairsEmailEnabled",
        "isDistantRepairsEnabled",
        "isDistantRepairsModifyEnabled",
        "isDistantRepairsPaymentMethodsIconsEnabled",
        "isDistantRepairsShippedFromEhubEnabled",
        "isDistantRepairsTutorialEnabled",
        "isDistantRepairsVideoCallEnabled",
        "isDistantRepairsZipCodeEnabled",
        "isDynamicYieldEnabled",
        "isDynatraceSdkEnabled",
        "isEmailTrackingConsentEnabled",
        "isExclusiveOfferEnabled",
        "isFeedForYouDefaultTabEnabled",
        "isFindAStoreEnabled",
        "isGcmOptOutEnabled",
        "isGoogleAnalyticsEnabled",
        "isGoogleCustomerMatchEnabled",
        "isGoogleSignInEnabled",
        "isHorizonSpeakerEnabled",
        "isInboxEnabled",
        "isKakaoSignInEnabled",
        "isKeepAllEnabled",
        "isLegalNoticeRegisterEnabled",
        "isLineSignInEnabled",
        "isMyCertificatesEnabled",
        "isNativeAccountActivationEnabled",
        "isNativeCartEnabled",
        "isNativeLoginEnabled",
        "isNativeRegisterEnabled",
        "isNativeRegisterKisaEnabled",
        "isNativeShareCatalogEnabled",
        "isNativeShareImmersiveEnabled",
        "isNativeShareWishlistEnabled",
        "isNativeThankYouPageFeedbackEnabled",
        "isNativeThankYouPageRedirectEnabled",
        "isOnboardingEnabled",
        "isOnlineStoreAppointmentCidEnabled",
        "isOnlineStoreAppointmentCreationEnabled",
        "isOrderExchangeEnabled",
        "isOrderReturnEnabled",
        "isOrdersInvoiceEnabled",
        "isOsaGuestEnabled",
        "isOsaKisaEnabled",
        "isOsaModifyEnabled",
        "isOsaReasonsEnabled",
        "isPayByLinkEnabled",
        "isPdpAGECLawEnabled",
        "isPerfectLogsEnabled",
        "isPersonalSelectionsEnabled",
        "isPlpRevampV3Phase2Enabled",
        "isPlpV3GridViewEnabled",
        "isPowerFrontCareServiceEnabled",
        "isPowerFrontEnabled",
        "isProfilePhoneNumberEnabled",
        "isPuertoRicoEnabled",
        "isQrCodeEnabled",
        "isRefreshAuthCheckoutEnabled",
        "isRegistrationAddressStepEnabled",
        "isSensorDataEnabled",
        "isSizeGuidePimEnabled",
        "isSmsConsentEnabled",
        "isSneakerEnabled",
        "isSocialSignInDebugEnabled",
        "isStoreModeEnabled",
        "isStoreModeV2Enabled",
        "isTingyunSdkEnabled",
        "isTrunkSpeakerEnabled",
        "isTwistEnabled",
        "isYMALEnabled",
        "<init>",
        "(ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ)V",
        "",
        "seen0",
        "seen1",
        "seen2",
        "seen3",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(IIIIZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "$serializer",
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

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache$Companion;


# instance fields
.field public final A:Z

.field public final A0:Z

.field public final B:Z

.field public final B0:Z

.field public final C:Z

.field public final C0:Z

.field public final D:Z

.field public final D0:Z

.field public final E:Z

.field public final E0:Z

.field public final F:Z

.field public final F0:Z

.field public final G:Z

.field public final G0:Z

.field public final H:Z

.field public final H0:Z

.field public final I:Z

.field public final I0:Z

.field public final J:Z

.field public final J0:Z

.field public final K:Z

.field public final K0:Z

.field public final L:Z

.field public final L0:Z

.field public final M:Z

.field public final M0:Z

.field public final N:Z

.field public final N0:Z

.field public final O:Z

.field public final O0:Z

.field public final P:Z

.field public final P0:Z

.field public final Q:Z

.field public final Q0:Z

.field public final R:Z

.field public final R0:Z

.field public final S:Z

.field public final S0:Z

.field public final T:Z

.field public final U:Z

.field public final V:Z

.field public final W:Z

.field public final X:Z

.field public final Y:Z

.field public final Z:Z

.field public final a:Z

.field public final a0:Z

.field public final b:Z

.field public final b0:Z

.field public final c:Z

.field public final c0:Z

.field public final d:Z

.field public final d0:Z

.field public final e:Z

.field public final e0:Z

.field public final f:Z

.field public final f0:Z

.field public final g:Z

.field public final g0:Z

.field public final h:Z

.field public final h0:Z

.field public final i:Z

.field public final i0:Z

.field public final j:Z

.field public final j0:Z

.field public final k:Z

.field public final k0:Z

.field public final l:Z

.field public final l0:Z

.field public final m:Z

.field public final m0:Z

.field public final n:Z

.field public final n0:Z

.field public final o:Z

.field public final o0:Z

.field public final p:Z

.field public final p0:Z

.field public final q:Z

.field public final q0:Z

.field public final r:Z

.field public final r0:Z

.field public final s:Z

.field public final s0:Z

.field public final t:Z

.field public final t0:Z

.field public final u:Z

.field public final u0:Z

.field public final v:Z

.field public final v0:Z

.field public final w:Z

.field public final w0:Z

.field public final x:Z

.field public final x0:Z

.field public final y:Z

.field public final y0:Z

.field public final z:Z

.field public final z0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Companion:Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IIIIZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v2, p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    if-eq v2, p2, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    or-int/2addr v3, v4

    if-eq v2, p3, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    or-int/2addr v3, v4

    and-int/lit8 v4, p4, 0x1

    if-eq v1, v4, :cond_3

    move v0, v1

    :cond_3
    or-int/2addr v0, v3

    if-nez v0, :cond_4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p5, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->a:Z

    iput-boolean p6, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->b:Z

    iput-boolean p7, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->c:Z

    iput-boolean p8, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->d:Z

    iput-boolean p9, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->e:Z

    iput-boolean p10, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->f:Z

    move/from16 p1, p11

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->g:Z

    move/from16 p1, p12

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->h:Z

    move/from16 p1, p13

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->i:Z

    move/from16 p1, p14

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->j:Z

    move/from16 p1, p15

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->k:Z

    move/from16 p1, p16

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->l:Z

    move/from16 p1, p17

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->m:Z

    move/from16 p1, p18

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->n:Z

    move/from16 p1, p19

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->o:Z

    move/from16 p1, p20

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->p:Z

    move/from16 p1, p21

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->q:Z

    move/from16 p1, p22

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->r:Z

    move/from16 p1, p23

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->s:Z

    move/from16 p1, p24

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->t:Z

    move/from16 p1, p25

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->u:Z

    move/from16 p1, p26

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->v:Z

    move/from16 p1, p27

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->w:Z

    move/from16 p1, p28

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->x:Z

    move/from16 p1, p29

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->y:Z

    move/from16 p1, p30

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->z:Z

    move/from16 p1, p31

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->A:Z

    move/from16 p1, p32

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->B:Z

    move/from16 p1, p33

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->C:Z

    move/from16 p1, p34

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->D:Z

    move/from16 p1, p35

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->E:Z

    move/from16 p1, p36

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->F:Z

    move/from16 p1, p37

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->G:Z

    move/from16 p1, p38

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->H:Z

    move/from16 p1, p39

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->I:Z

    move/from16 p1, p40

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->J:Z

    move/from16 p1, p41

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->K:Z

    move/from16 p1, p42

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->L:Z

    move/from16 p1, p43

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->M:Z

    move/from16 p1, p44

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->N:Z

    move/from16 p1, p45

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->O:Z

    move/from16 p1, p46

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->P:Z

    move/from16 p1, p47

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Q:Z

    move/from16 p1, p48

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->R:Z

    move/from16 p1, p49

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->S:Z

    move/from16 p1, p50

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->T:Z

    move/from16 p1, p51

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->U:Z

    move/from16 p1, p52

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->V:Z

    move/from16 p1, p53

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->W:Z

    move/from16 p1, p54

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->X:Z

    move/from16 p1, p55

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Y:Z

    move/from16 p1, p56

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Z:Z

    move/from16 p1, p57

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->a0:Z

    move/from16 p1, p58

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->b0:Z

    move/from16 p1, p59

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->c0:Z

    move/from16 p1, p60

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->d0:Z

    move/from16 p1, p61

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->e0:Z

    move/from16 p1, p62

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->f0:Z

    move/from16 p1, p63

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->g0:Z

    move/from16 p1, p64

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->h0:Z

    move/from16 p1, p65

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->i0:Z

    move/from16 p1, p66

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->j0:Z

    move/from16 p1, p67

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->k0:Z

    move/from16 p1, p68

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->l0:Z

    move/from16 p1, p69

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->m0:Z

    move/from16 p1, p70

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->n0:Z

    move/from16 p1, p71

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->o0:Z

    move/from16 p1, p72

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->p0:Z

    move/from16 p1, p73

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->q0:Z

    move/from16 p1, p74

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->r0:Z

    move/from16 p1, p75

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->s0:Z

    move/from16 p1, p76

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->t0:Z

    move/from16 p1, p77

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->u0:Z

    move/from16 p1, p78

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->v0:Z

    move/from16 p1, p79

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->w0:Z

    move/from16 p1, p80

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->x0:Z

    move/from16 p1, p81

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->y0:Z

    move/from16 p1, p82

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->z0:Z

    move/from16 p1, p83

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->A0:Z

    move/from16 p1, p84

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->B0:Z

    move/from16 p1, p85

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->C0:Z

    move/from16 p1, p86

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->D0:Z

    move/from16 p1, p87

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->E0:Z

    move/from16 p1, p88

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->F0:Z

    move/from16 p1, p89

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->G0:Z

    move/from16 p1, p90

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->H0:Z

    move/from16 p1, p91

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->I0:Z

    move/from16 p1, p92

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->J0:Z

    move/from16 p1, p93

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->K0:Z

    move/from16 p1, p94

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->L0:Z

    move/from16 p1, p95

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->M0:Z

    move/from16 p1, p96

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->N0:Z

    move/from16 p1, p97

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->O0:Z

    move/from16 p1, p98

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->P0:Z

    move/from16 p1, p99

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Q0:Z

    move/from16 p1, p100

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->R0:Z

    move/from16 p1, p101

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->S0:Z

    return-void

    :cond_4
    filled-new-array/range {p1 .. p4}, [I

    move-result-object p0

    filled-new-array {v2, v2, v2, v1}, [I

    move-result-object p1

    sget-object p2, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache$$serializer;->a:Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache$$serializer;

    invoke-virtual {p2}, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lkotlinx/serialization/internal/PluginExceptionsKt;->a([I[ILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ)V
    .locals 0

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->a:Z

    .line 429
    iput-boolean p2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->b:Z

    .line 430
    iput-boolean p3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->c:Z

    .line 431
    iput-boolean p4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->d:Z

    .line 432
    iput-boolean p5, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->e:Z

    .line 433
    iput-boolean p6, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->f:Z

    .line 434
    iput-boolean p7, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->g:Z

    .line 435
    iput-boolean p8, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->h:Z

    .line 436
    iput-boolean p9, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->i:Z

    .line 437
    iput-boolean p10, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->j:Z

    .line 438
    iput-boolean p11, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->k:Z

    .line 439
    iput-boolean p12, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->l:Z

    .line 440
    iput-boolean p13, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->m:Z

    .line 441
    iput-boolean p14, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->n:Z

    .line 442
    iput-boolean p15, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->o:Z

    move/from16 p1, p16

    .line 443
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->p:Z

    move/from16 p1, p17

    .line 444
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->q:Z

    move/from16 p1, p18

    .line 445
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->r:Z

    move/from16 p1, p19

    .line 446
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->s:Z

    move/from16 p1, p20

    .line 447
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->t:Z

    move/from16 p1, p21

    .line 448
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->u:Z

    move/from16 p1, p22

    .line 449
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->v:Z

    move/from16 p1, p23

    .line 450
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->w:Z

    move/from16 p1, p24

    .line 451
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->x:Z

    move/from16 p1, p25

    .line 452
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->y:Z

    move/from16 p1, p26

    .line 453
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->z:Z

    move/from16 p1, p27

    .line 454
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->A:Z

    move/from16 p1, p28

    .line 455
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->B:Z

    move/from16 p1, p29

    .line 456
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->C:Z

    move/from16 p1, p30

    .line 457
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->D:Z

    move/from16 p1, p31

    .line 458
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->E:Z

    move/from16 p1, p32

    .line 459
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->F:Z

    move/from16 p1, p33

    .line 460
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->G:Z

    move/from16 p1, p34

    .line 461
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->H:Z

    move/from16 p1, p35

    .line 462
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->I:Z

    move/from16 p1, p36

    .line 463
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->J:Z

    move/from16 p1, p37

    .line 464
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->K:Z

    move/from16 p1, p38

    .line 465
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->L:Z

    move/from16 p1, p39

    .line 466
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->M:Z

    move/from16 p1, p40

    .line 467
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->N:Z

    move/from16 p1, p41

    .line 468
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->O:Z

    move/from16 p1, p42

    .line 469
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->P:Z

    move/from16 p1, p43

    .line 470
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Q:Z

    move/from16 p1, p44

    .line 471
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->R:Z

    move/from16 p1, p45

    .line 472
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->S:Z

    move/from16 p1, p46

    .line 473
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->T:Z

    move/from16 p1, p47

    .line 474
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->U:Z

    move/from16 p1, p48

    .line 475
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->V:Z

    move/from16 p1, p49

    .line 476
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->W:Z

    move/from16 p1, p50

    .line 477
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->X:Z

    move/from16 p1, p51

    .line 478
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Y:Z

    move/from16 p1, p52

    .line 479
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Z:Z

    move/from16 p1, p53

    .line 480
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->a0:Z

    move/from16 p1, p54

    .line 481
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->b0:Z

    move/from16 p1, p55

    .line 482
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->c0:Z

    move/from16 p1, p56

    .line 483
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->d0:Z

    move/from16 p1, p57

    .line 484
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->e0:Z

    move/from16 p1, p58

    .line 485
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->f0:Z

    move/from16 p1, p59

    .line 486
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->g0:Z

    move/from16 p1, p60

    .line 487
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->h0:Z

    move/from16 p1, p61

    .line 488
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->i0:Z

    move/from16 p1, p62

    .line 489
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->j0:Z

    move/from16 p1, p63

    .line 490
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->k0:Z

    move/from16 p1, p64

    .line 491
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->l0:Z

    move/from16 p1, p65

    .line 492
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->m0:Z

    move/from16 p1, p66

    .line 493
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->n0:Z

    move/from16 p1, p67

    .line 494
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->o0:Z

    move/from16 p1, p68

    .line 495
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->p0:Z

    move/from16 p1, p69

    .line 496
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->q0:Z

    move/from16 p1, p70

    .line 497
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->r0:Z

    move/from16 p1, p71

    .line 498
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->s0:Z

    move/from16 p1, p72

    .line 499
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->t0:Z

    move/from16 p1, p73

    .line 500
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->u0:Z

    move/from16 p1, p74

    .line 501
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->v0:Z

    move/from16 p1, p75

    .line 502
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->w0:Z

    move/from16 p1, p76

    .line 503
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->x0:Z

    move/from16 p1, p77

    .line 504
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->y0:Z

    move/from16 p1, p78

    .line 505
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->z0:Z

    move/from16 p1, p79

    .line 506
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->A0:Z

    move/from16 p1, p80

    .line 507
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->B0:Z

    move/from16 p1, p81

    .line 508
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->C0:Z

    move/from16 p1, p82

    .line 509
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->D0:Z

    move/from16 p1, p83

    .line 510
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->E0:Z

    move/from16 p1, p84

    .line 511
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->F0:Z

    move/from16 p1, p85

    .line 512
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->G0:Z

    move/from16 p1, p86

    .line 513
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->H0:Z

    move/from16 p1, p87

    .line 514
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->I0:Z

    move/from16 p1, p88

    .line 515
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->J0:Z

    move/from16 p1, p89

    .line 516
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->K0:Z

    move/from16 p1, p90

    .line 517
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->L0:Z

    move/from16 p1, p91

    .line 518
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->M0:Z

    move/from16 p1, p92

    .line 519
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->N0:Z

    move/from16 p1, p93

    .line 520
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->O0:Z

    move/from16 p1, p94

    .line 521
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->P0:Z

    move/from16 p1, p95

    .line 522
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Q0:Z

    move/from16 p1, p96

    .line 523
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->R0:Z

    move/from16 p1, p97

    .line 524
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->S0:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;

    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->g:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->h:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->i:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->i:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->j:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->j:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->k:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->k:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->l:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->l:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->m:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->m:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->n:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->n:Z

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->o:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->o:Z

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->p:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->p:Z

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->q:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->q:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->r:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->r:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->s:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->s:Z

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->t:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->t:Z

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->u:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->u:Z

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->v:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->v:Z

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->w:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->w:Z

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->x:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->x:Z

    if-eq v1, v3, :cond_19

    return v2

    :cond_19
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->y:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->y:Z

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->z:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->z:Z

    if-eq v1, v3, :cond_1b

    return v2

    :cond_1b
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->A:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->A:Z

    if-eq v1, v3, :cond_1c

    return v2

    :cond_1c
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->B:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->B:Z

    if-eq v1, v3, :cond_1d

    return v2

    :cond_1d
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->C:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->C:Z

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->D:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->D:Z

    if-eq v1, v3, :cond_1f

    return v2

    :cond_1f
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->E:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->E:Z

    if-eq v1, v3, :cond_20

    return v2

    :cond_20
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->F:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->F:Z

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->G:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->G:Z

    if-eq v1, v3, :cond_22

    return v2

    :cond_22
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->H:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->H:Z

    if-eq v1, v3, :cond_23

    return v2

    :cond_23
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->I:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->I:Z

    if-eq v1, v3, :cond_24

    return v2

    :cond_24
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->J:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->J:Z

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->K:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->K:Z

    if-eq v1, v3, :cond_26

    return v2

    :cond_26
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->L:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->L:Z

    if-eq v1, v3, :cond_27

    return v2

    :cond_27
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->M:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->M:Z

    if-eq v1, v3, :cond_28

    return v2

    :cond_28
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->N:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->N:Z

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->O:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->O:Z

    if-eq v1, v3, :cond_2a

    return v2

    :cond_2a
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->P:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->P:Z

    if-eq v1, v3, :cond_2b

    return v2

    :cond_2b
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Q:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Q:Z

    if-eq v1, v3, :cond_2c

    return v2

    :cond_2c
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->R:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->R:Z

    if-eq v1, v3, :cond_2d

    return v2

    :cond_2d
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->S:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->S:Z

    if-eq v1, v3, :cond_2e

    return v2

    :cond_2e
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->T:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->T:Z

    if-eq v1, v3, :cond_2f

    return v2

    :cond_2f
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->U:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->U:Z

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->V:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->V:Z

    if-eq v1, v3, :cond_31

    return v2

    :cond_31
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->W:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->W:Z

    if-eq v1, v3, :cond_32

    return v2

    :cond_32
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->X:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->X:Z

    if-eq v1, v3, :cond_33

    return v2

    :cond_33
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Y:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Y:Z

    if-eq v1, v3, :cond_34

    return v2

    :cond_34
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Z:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Z:Z

    if-eq v1, v3, :cond_35

    return v2

    :cond_35
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->a0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->a0:Z

    if-eq v1, v3, :cond_36

    return v2

    :cond_36
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->b0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->b0:Z

    if-eq v1, v3, :cond_37

    return v2

    :cond_37
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->c0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->c0:Z

    if-eq v1, v3, :cond_38

    return v2

    :cond_38
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->d0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->d0:Z

    if-eq v1, v3, :cond_39

    return v2

    :cond_39
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->e0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->e0:Z

    if-eq v1, v3, :cond_3a

    return v2

    :cond_3a
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->f0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->f0:Z

    if-eq v1, v3, :cond_3b

    return v2

    :cond_3b
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->g0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->g0:Z

    if-eq v1, v3, :cond_3c

    return v2

    :cond_3c
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->h0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->h0:Z

    if-eq v1, v3, :cond_3d

    return v2

    :cond_3d
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->i0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->i0:Z

    if-eq v1, v3, :cond_3e

    return v2

    :cond_3e
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->j0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->j0:Z

    if-eq v1, v3, :cond_3f

    return v2

    :cond_3f
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->k0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->k0:Z

    if-eq v1, v3, :cond_40

    return v2

    :cond_40
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->l0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->l0:Z

    if-eq v1, v3, :cond_41

    return v2

    :cond_41
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->m0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->m0:Z

    if-eq v1, v3, :cond_42

    return v2

    :cond_42
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->n0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->n0:Z

    if-eq v1, v3, :cond_43

    return v2

    :cond_43
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->o0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->o0:Z

    if-eq v1, v3, :cond_44

    return v2

    :cond_44
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->p0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->p0:Z

    if-eq v1, v3, :cond_45

    return v2

    :cond_45
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->q0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->q0:Z

    if-eq v1, v3, :cond_46

    return v2

    :cond_46
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->r0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->r0:Z

    if-eq v1, v3, :cond_47

    return v2

    :cond_47
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->s0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->s0:Z

    if-eq v1, v3, :cond_48

    return v2

    :cond_48
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->t0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->t0:Z

    if-eq v1, v3, :cond_49

    return v2

    :cond_49
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->u0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->u0:Z

    if-eq v1, v3, :cond_4a

    return v2

    :cond_4a
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->v0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->v0:Z

    if-eq v1, v3, :cond_4b

    return v2

    :cond_4b
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->w0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->w0:Z

    if-eq v1, v3, :cond_4c

    return v2

    :cond_4c
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->x0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->x0:Z

    if-eq v1, v3, :cond_4d

    return v2

    :cond_4d
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->y0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->y0:Z

    if-eq v1, v3, :cond_4e

    return v2

    :cond_4e
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->z0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->z0:Z

    if-eq v1, v3, :cond_4f

    return v2

    :cond_4f
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->A0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->A0:Z

    if-eq v1, v3, :cond_50

    return v2

    :cond_50
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->B0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->B0:Z

    if-eq v1, v3, :cond_51

    return v2

    :cond_51
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->C0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->C0:Z

    if-eq v1, v3, :cond_52

    return v2

    :cond_52
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->D0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->D0:Z

    if-eq v1, v3, :cond_53

    return v2

    :cond_53
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->E0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->E0:Z

    if-eq v1, v3, :cond_54

    return v2

    :cond_54
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->F0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->F0:Z

    if-eq v1, v3, :cond_55

    return v2

    :cond_55
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->G0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->G0:Z

    if-eq v1, v3, :cond_56

    return v2

    :cond_56
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->H0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->H0:Z

    if-eq v1, v3, :cond_57

    return v2

    :cond_57
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->I0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->I0:Z

    if-eq v1, v3, :cond_58

    return v2

    :cond_58
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->J0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->J0:Z

    if-eq v1, v3, :cond_59

    return v2

    :cond_59
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->K0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->K0:Z

    if-eq v1, v3, :cond_5a

    return v2

    :cond_5a
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->L0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->L0:Z

    if-eq v1, v3, :cond_5b

    return v2

    :cond_5b
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->M0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->M0:Z

    if-eq v1, v3, :cond_5c

    return v2

    :cond_5c
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->N0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->N0:Z

    if-eq v1, v3, :cond_5d

    return v2

    :cond_5d
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->O0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->O0:Z

    if-eq v1, v3, :cond_5e

    return v2

    :cond_5e
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->P0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->P0:Z

    if-eq v1, v3, :cond_5f

    return v2

    :cond_5f
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Q0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Q0:Z

    if-eq v1, v3, :cond_60

    return v2

    :cond_60
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->R0:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->R0:Z

    if-eq v1, v3, :cond_61

    return v2

    :cond_61
    iget-boolean p0, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->S0:Z

    iget-boolean p1, p1, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->S0:Z

    if-eq p0, p1, :cond_62

    return v2

    :cond_62
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->e:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->f:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->g:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->h:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->i:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->j:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->k:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->l:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->m:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->n:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->o:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->p:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->q:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->r:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->s:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->t:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->u:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->v:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->w:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->x:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->y:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->z:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->A:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->B:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->C:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->D:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->E:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->F:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->G:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->H:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->I:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->J:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->K:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->L:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->M:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->N:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->O:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->P:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Q:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->R:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->S:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->T:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->U:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->V:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->W:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->X:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Y:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Z:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->a0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->b0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->c0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->d0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->e0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->f0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->g0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->h0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->i0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->j0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->k0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->l0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->m0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->n0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->o0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->p0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->q0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->r0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->s0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->t0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->u0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->v0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->w0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->x0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->y0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->z0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->A0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->B0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->C0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->D0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->E0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->F0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->G0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->H0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->I0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->J0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->K0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->L0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->M0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->N0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->O0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->P0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Q0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->R0:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->S0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", isAccessibilityEnhancedContrastEnabled="

    const-string v1, ", isAccessibilitySimplifyNavigationEnabled="

    const-string v2, "FeaturesConfigCache(isAccessibilityDisableAutoplayEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->a:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->b:Z

    invoke-static {v2, v0, v1, v3, v4}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAccessibilityStatementEnabled="

    const-string v2, ", isAddressAutocompleteEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isAddToCartCrossSellEnabled="

    const-string v2, ", isAICompanionEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->e:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->f:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isAICompanionPdpEnabled="

    const-string v2, ", isAICompanionSessionIdEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->g:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->h:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isAppsflyerEnabled="

    const-string v2, ", isAutocompletePostalCodeEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->i:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->j:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isBackInStockEnabled="

    const-string v2, ", isBackInStockLegalConsentEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->k:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->l:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isBackInStockPreviewModeEnabled="

    const-string v2, ", isBackOrderDisclaimerEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->m:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->n:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isBackOrderDisclaimerEnhancementEnabled="

    const-string v2, ", isBatchSdkEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->o:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->p:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isBookingMyExperiencesEnabled="

    const-string v2, ", isCareServicesEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->q:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->r:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isCareServicesMigrationEnabled="

    const-string v2, ", isCertificatesMockVisionnaireLockedStatusEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->s:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->t:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isChinaPrivacyEnabled="

    const-string v2, ", isContactUsCareServiceEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->u:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->v:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isContactUsEnabled="

    const-string v2, ", isDiamondsPdpEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->w:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->x:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isDistantRepairsBillingAddressEnabled="

    const-string v2, ", isDistantRepairsCallEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->y:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->z:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isDistantRepairsCancellationReasonEnabled="

    const-string v2, ", isDistantRepairsEmailEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->A:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->B:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isDistantRepairsEnabled="

    const-string v2, ", isDistantRepairsModifyEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->C:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->D:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isDistantRepairsPaymentMethodsIconsEnabled="

    const-string v2, ", isDistantRepairsShippedFromEhubEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->E:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->F:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isDistantRepairsTutorialEnabled="

    const-string v2, ", isDistantRepairsVideoCallEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->G:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->H:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isDistantRepairsZipCodeEnabled="

    const-string v2, ", isDynamicYieldEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->I:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->J:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isDynatraceSdkEnabled="

    const-string v2, ", isEmailTrackingConsentEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->K:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->L:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isExclusiveOfferEnabled="

    const-string v2, ", isFeedForYouDefaultTabEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->M:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->N:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isFindAStoreEnabled="

    const-string v2, ", isGcmOptOutEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->O:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->P:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isGoogleAnalyticsEnabled="

    const-string v2, ", isGoogleCustomerMatchEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Q:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->R:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isGoogleSignInEnabled="

    const-string v2, ", isHorizonSpeakerEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->S:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->T:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isInboxEnabled="

    const-string v2, ", isKakaoSignInEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->U:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->V:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isKeepAllEnabled="

    const-string v2, ", isLegalNoticeRegisterEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->W:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->X:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isLineSignInEnabled="

    const-string v2, ", isMyCertificatesEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Y:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Z:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isNativeAccountActivationEnabled="

    const-string v2, ", isNativeCartEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->a0:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->b0:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isNativeLoginEnabled="

    const-string v2, ", isNativeRegisterEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->c0:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->d0:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isNativeRegisterKisaEnabled="

    const-string v2, ", isNativeShareCatalogEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->e0:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->f0:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isNativeShareImmersiveEnabled="

    const-string v2, ", isNativeShareWishlistEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->g0:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->h0:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isNativeThankYouPageFeedbackEnabled="

    const-string v2, ", isNativeThankYouPageRedirectEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->i0:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->j0:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isOnboardingEnabled="

    const-string v2, ", isOnlineStoreAppointmentCidEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->k0:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->l0:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isOnlineStoreAppointmentCreationEnabled="

    const-string v2, ", isOrderExchangeEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->m0:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->n0:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isOrderReturnEnabled="

    const-string v2, ", isOrdersInvoiceEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->o0:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->p0:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isOsaGuestEnabled="

    const-string v2, ", isOsaKisaEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->q0:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->r0:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isOsaModifyEnabled="

    const-string v2, ", isOsaReasonsEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->s0:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->t0:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isPayByLinkEnabled="

    const-string v2, ", isPdpAGECLawEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->u0:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->v0:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isPerfectLogsEnabled="

    const-string v2, ", isPersonalSelectionsEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->w0:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->x0:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isPlpRevampV3Phase2Enabled="

    const-string v2, ", isPlpV3GridViewEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->y0:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->z0:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isPowerFrontCareServiceEnabled="

    const-string v2, ", isPowerFrontEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->A0:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->B0:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isProfilePhoneNumberEnabled="

    const-string v2, ", isPuertoRicoEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->C0:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->D0:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isQrCodeEnabled="

    const-string v2, ", isRefreshAuthCheckoutEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->E0:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->F0:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isRegistrationAddressStepEnabled="

    const-string v2, ", isSensorDataEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->G0:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->H0:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isSizeGuidePimEnabled="

    const-string v2, ", isSmsConsentEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->I0:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->J0:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isSneakerEnabled="

    const-string v2, ", isSocialSignInDebugEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->K0:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->L0:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isStoreModeEnabled="

    const-string v2, ", isStoreModeV2Enabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->M0:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->N0:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isTingyunSdkEnabled="

    const-string v2, ", isTrunkSpeakerEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->O0:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->P0:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isTwistEnabled="

    const-string v2, ", isYMALEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Q0:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->R0:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->S0:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

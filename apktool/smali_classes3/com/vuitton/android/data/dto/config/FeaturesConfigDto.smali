.class public final Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/config/FeaturesConfigDto$$serializer;,
        Lcom/vuitton/android/data/dto/config/FeaturesConfigDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008a\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 k2\u00020\u0001:\u0002lkB\u00f9\u0008\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010/\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u00100\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u00101\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u00102\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u00103\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u00105\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u00106\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u00107\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u00108\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u00109\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010:\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010;\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010<\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010=\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010>\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010?\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010@\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010A\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010B\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010C\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010D\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010E\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010F\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010G\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010H\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010I\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010J\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010K\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010L\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010M\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010N\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010O\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010P\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010Q\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010R\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010S\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010T\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010U\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010V\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010W\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010X\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010Y\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010Z\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010[\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\\\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010]\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010^\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010_\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010`\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010a\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008b\u0010cB\u00e1\u0007\u0008\u0010\u0012\u0006\u0010e\u001a\u00020d\u0012\u0006\u0010f\u001a\u00020d\u0012\u0006\u0010g\u001a\u00020d\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010 \u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010!\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010#\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010$\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010%\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010&\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010(\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010)\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010*\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010+\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010,\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010-\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010.\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010/\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u00100\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u00101\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u00102\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u00103\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u00104\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u00105\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u00106\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u00107\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u00108\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u00109\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010:\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010;\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010<\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010=\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010>\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010?\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010@\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010A\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010B\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010C\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010D\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010E\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010F\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010G\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010H\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010I\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010J\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010K\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010L\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010M\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010N\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010O\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010P\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010Q\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010R\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010S\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010T\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010U\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010V\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010W\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010X\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010Y\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010Z\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010[\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\\\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010]\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010^\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010_\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010`\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010a\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010i\u001a\u0004\u0018\u00010h\u00a2\u0006\u0004\u0008b\u0010j\u00a8\u0006m"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;",
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
        "isBackOrderDisclaimerEnabled",
        "isBackOrderDisclaimerEnhancementEnabled",
        "isBatchSdkEnabled",
        "isBookingMyExperiencesEnabled",
        "isCareServicesEnabled",
        "isCareServicesMigrationEnabled",
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
        "isGoogleAnalyticsDisabled",
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
        "isOsaKisaV2Enabled",
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
        "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V",
        "",
        "seen0",
        "seen1",
        "seen2",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(IIILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/config/FeaturesConfigDto$Companion;


# instance fields
.field public final A:Ljava/lang/Boolean;

.field public final A0:Ljava/lang/Boolean;

.field public final B:Ljava/lang/Boolean;

.field public final B0:Ljava/lang/Boolean;

.field public final C:Ljava/lang/Boolean;

.field public final C0:Ljava/lang/Boolean;

.field public final D:Ljava/lang/Boolean;

.field public final D0:Ljava/lang/Boolean;

.field public final E:Ljava/lang/Boolean;

.field public final E0:Ljava/lang/Boolean;

.field public final F:Ljava/lang/Boolean;

.field public final F0:Ljava/lang/Boolean;

.field public final G:Ljava/lang/Boolean;

.field public final G0:Ljava/lang/Boolean;

.field public final H:Ljava/lang/Boolean;

.field public final H0:Ljava/lang/Boolean;

.field public final I:Ljava/lang/Boolean;

.field public final I0:Ljava/lang/Boolean;

.field public final J:Ljava/lang/Boolean;

.field public final J0:Ljava/lang/Boolean;

.field public final K:Ljava/lang/Boolean;

.field public final K0:Ljava/lang/Boolean;

.field public final L:Ljava/lang/Boolean;

.field public final L0:Ljava/lang/Boolean;

.field public final M:Ljava/lang/Boolean;

.field public final M0:Ljava/lang/Boolean;

.field public final N:Ljava/lang/Boolean;

.field public final N0:Ljava/lang/Boolean;

.field public final O:Ljava/lang/Boolean;

.field public final O0:Ljava/lang/Boolean;

.field public final P:Ljava/lang/Boolean;

.field public final P0:Ljava/lang/Boolean;

.field public final Q:Ljava/lang/Boolean;

.field public final Q0:Ljava/lang/Boolean;

.field public final R:Ljava/lang/Boolean;

.field public final S:Ljava/lang/Boolean;

.field public final T:Ljava/lang/Boolean;

.field public final U:Ljava/lang/Boolean;

.field public final V:Ljava/lang/Boolean;

.field public final W:Ljava/lang/Boolean;

.field public final X:Ljava/lang/Boolean;

.field public final Y:Ljava/lang/Boolean;

.field public final Z:Ljava/lang/Boolean;

.field public final a:Ljava/lang/Boolean;

.field public final a0:Ljava/lang/Boolean;

.field public final b:Ljava/lang/Boolean;

.field public final b0:Ljava/lang/Boolean;

.field public final c:Ljava/lang/Boolean;

.field public final c0:Ljava/lang/Boolean;

.field public final d:Ljava/lang/Boolean;

.field public final d0:Ljava/lang/Boolean;

.field public final e:Ljava/lang/Boolean;

.field public final e0:Ljava/lang/Boolean;

.field public final f:Ljava/lang/Boolean;

.field public final f0:Ljava/lang/Boolean;

.field public final g:Ljava/lang/Boolean;

.field public final g0:Ljava/lang/Boolean;

.field public final h:Ljava/lang/Boolean;

.field public final h0:Ljava/lang/Boolean;

.field public final i:Ljava/lang/Boolean;

.field public final i0:Ljava/lang/Boolean;

.field public final j:Ljava/lang/Boolean;

.field public final j0:Ljava/lang/Boolean;

.field public final k:Ljava/lang/Boolean;

.field public final k0:Ljava/lang/Boolean;

.field public final l:Ljava/lang/Boolean;

.field public final l0:Ljava/lang/Boolean;

.field public final m:Ljava/lang/Boolean;

.field public final m0:Ljava/lang/Boolean;

.field public final n:Ljava/lang/Boolean;

.field public final n0:Ljava/lang/Boolean;

.field public final o:Ljava/lang/Boolean;

.field public final o0:Ljava/lang/Boolean;

.field public final p:Ljava/lang/Boolean;

.field public final p0:Ljava/lang/Boolean;

.field public final q:Ljava/lang/Boolean;

.field public final q0:Ljava/lang/Boolean;

.field public final r:Ljava/lang/Boolean;

.field public final r0:Ljava/lang/Boolean;

.field public final s:Ljava/lang/Boolean;

.field public final s0:Ljava/lang/Boolean;

.field public final t:Ljava/lang/Boolean;

.field public final t0:Ljava/lang/Boolean;

.field public final u:Ljava/lang/Boolean;

.field public final u0:Ljava/lang/Boolean;

.field public final v:Ljava/lang/Boolean;

.field public final v0:Ljava/lang/Boolean;

.field public final w:Ljava/lang/Boolean;

.field public final w0:Ljava/lang/Boolean;

.field public final x:Ljava/lang/Boolean;

.field public final x0:Ljava/lang/Boolean;

.field public final y:Ljava/lang/Boolean;

.field public final y0:Ljava/lang/Boolean;

.field public final z:Ljava/lang/Boolean;

.field public final z0:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Companion:Lcom/vuitton/android/data/dto/config/FeaturesConfigDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/high16 v4, 0x40000

    and-int v5, v1, v4

    const/4 v6, 0x0

    if-eq v4, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    const/4 v7, 0x0

    if-nez v5, :cond_5f

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_1

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->a:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    move-object/from16 v5, p4

    iput-object v5, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->a:Ljava/lang/Boolean;

    :goto_1
    and-int/lit8 v5, v1, 0x2

    if-nez v5, :cond_2

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->b:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->b:Ljava/lang/Boolean;

    :goto_2
    and-int/lit8 v5, v1, 0x4

    if-nez v5, :cond_3

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->c:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p6

    iput-object v5, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->c:Ljava/lang/Boolean;

    :goto_3
    and-int/lit8 v5, v1, 0x8

    if-nez v5, :cond_4

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->d:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    move-object/from16 v5, p7

    iput-object v5, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->d:Ljava/lang/Boolean;

    :goto_4
    and-int/lit8 v5, v1, 0x10

    if-nez v5, :cond_5

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->e:Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    move-object/from16 v5, p8

    iput-object v5, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->e:Ljava/lang/Boolean;

    :goto_5
    and-int/lit8 v5, v1, 0x20

    if-nez v5, :cond_6

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->f:Ljava/lang/Boolean;

    goto :goto_6

    :cond_6
    move-object/from16 v5, p9

    iput-object v5, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->f:Ljava/lang/Boolean;

    :goto_6
    and-int/lit8 v5, v1, 0x40

    if-nez v5, :cond_7

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->g:Ljava/lang/Boolean;

    goto :goto_7

    :cond_7
    move-object/from16 v5, p10

    iput-object v5, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->g:Ljava/lang/Boolean;

    :goto_7
    and-int/lit16 v5, v1, 0x80

    if-nez v5, :cond_8

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->h:Ljava/lang/Boolean;

    goto :goto_8

    :cond_8
    move-object/from16 v5, p11

    iput-object v5, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->h:Ljava/lang/Boolean;

    :goto_8
    and-int/lit16 v5, v1, 0x100

    if-nez v5, :cond_9

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->i:Ljava/lang/Boolean;

    goto :goto_9

    :cond_9
    move-object/from16 v5, p12

    iput-object v5, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->i:Ljava/lang/Boolean;

    :goto_9
    and-int/lit16 v5, v1, 0x200

    if-nez v5, :cond_a

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->j:Ljava/lang/Boolean;

    goto :goto_a

    :cond_a
    move-object/from16 v5, p13

    iput-object v5, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->j:Ljava/lang/Boolean;

    :goto_a
    and-int/lit16 v5, v1, 0x400

    if-nez v5, :cond_b

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->k:Ljava/lang/Boolean;

    goto :goto_b

    :cond_b
    move-object/from16 v5, p14

    iput-object v5, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->k:Ljava/lang/Boolean;

    :goto_b
    and-int/lit16 v5, v1, 0x800

    if-nez v5, :cond_c

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->l:Ljava/lang/Boolean;

    goto :goto_c

    :cond_c
    move-object/from16 v5, p15

    iput-object v5, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->l:Ljava/lang/Boolean;

    :goto_c
    and-int/lit16 v5, v1, 0x1000

    if-nez v5, :cond_d

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->m:Ljava/lang/Boolean;

    goto :goto_d

    :cond_d
    move-object/from16 v5, p16

    iput-object v5, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->m:Ljava/lang/Boolean;

    :goto_d
    and-int/lit16 v5, v1, 0x2000

    if-nez v5, :cond_e

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->n:Ljava/lang/Boolean;

    goto :goto_e

    :cond_e
    move-object/from16 v5, p17

    iput-object v5, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->n:Ljava/lang/Boolean;

    :goto_e
    and-int/lit16 v5, v1, 0x4000

    if-nez v5, :cond_f

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->o:Ljava/lang/Boolean;

    goto :goto_f

    :cond_f
    move-object/from16 v5, p18

    iput-object v5, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->o:Ljava/lang/Boolean;

    :goto_f
    const v5, 0x8000

    and-int v6, v1, v5

    if-nez v6, :cond_10

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->p:Ljava/lang/Boolean;

    goto :goto_10

    :cond_10
    move-object/from16 v6, p19

    iput-object v6, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->p:Ljava/lang/Boolean;

    :goto_10
    const/high16 v6, 0x10000

    and-int v8, v1, v6

    if-nez v8, :cond_11

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->q:Ljava/lang/Boolean;

    goto :goto_11

    :cond_11
    move-object/from16 v8, p20

    iput-object v8, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->q:Ljava/lang/Boolean;

    :goto_11
    const/high16 v8, 0x20000

    and-int v9, v1, v8

    if-nez v9, :cond_12

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->r:Ljava/lang/Boolean;

    :goto_12
    move-object/from16 v9, p22

    goto :goto_13

    :cond_12
    move-object/from16 v9, p21

    iput-object v9, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->r:Ljava/lang/Boolean;

    goto :goto_12

    :goto_13
    iput-object v9, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->s:Ljava/lang/Boolean;

    const/high16 v9, 0x80000

    and-int v10, v1, v9

    if-nez v10, :cond_13

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->t:Ljava/lang/Boolean;

    goto :goto_14

    :cond_13
    move-object/from16 v10, p23

    iput-object v10, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->t:Ljava/lang/Boolean;

    :goto_14
    const/high16 v10, 0x100000

    and-int v11, v1, v10

    if-nez v11, :cond_14

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->u:Ljava/lang/Boolean;

    goto :goto_15

    :cond_14
    move-object/from16 v11, p24

    iput-object v11, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->u:Ljava/lang/Boolean;

    :goto_15
    const/high16 v11, 0x200000

    and-int v12, v1, v11

    if-nez v12, :cond_15

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->v:Ljava/lang/Boolean;

    goto :goto_16

    :cond_15
    move-object/from16 v12, p25

    iput-object v12, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->v:Ljava/lang/Boolean;

    :goto_16
    const/high16 v12, 0x400000

    and-int v13, v1, v12

    if-nez v13, :cond_16

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->w:Ljava/lang/Boolean;

    goto :goto_17

    :cond_16
    move-object/from16 v13, p26

    iput-object v13, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->w:Ljava/lang/Boolean;

    :goto_17
    const/high16 v13, 0x800000

    and-int v14, v1, v13

    if-nez v14, :cond_17

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->x:Ljava/lang/Boolean;

    goto :goto_18

    :cond_17
    move-object/from16 v14, p27

    iput-object v14, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->x:Ljava/lang/Boolean;

    :goto_18
    const/high16 v14, 0x1000000

    and-int v15, v1, v14

    if-nez v15, :cond_18

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->y:Ljava/lang/Boolean;

    goto :goto_19

    :cond_18
    move-object/from16 v15, p28

    iput-object v15, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->y:Ljava/lang/Boolean;

    :goto_19
    const/high16 v15, 0x2000000

    and-int v16, v1, v15

    if-nez v16, :cond_19

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->z:Ljava/lang/Boolean;

    move/from16 p4, v5

    goto :goto_1a

    :cond_19
    move/from16 p4, v5

    move-object/from16 v5, p29

    iput-object v5, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->z:Ljava/lang/Boolean;

    :goto_1a
    const/high16 v5, 0x4000000

    and-int v16, v1, v5

    if-nez v16, :cond_1a

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->A:Ljava/lang/Boolean;

    move/from16 p5, v5

    goto :goto_1b

    :cond_1a
    move/from16 p5, v5

    move-object/from16 v5, p30

    iput-object v5, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->A:Ljava/lang/Boolean;

    :goto_1b
    const/high16 v5, 0x8000000

    and-int v16, v1, v5

    if-nez v16, :cond_1b

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->B:Ljava/lang/Boolean;

    move/from16 p6, v5

    goto :goto_1c

    :cond_1b
    move/from16 p6, v5

    move-object/from16 v5, p31

    iput-object v5, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->B:Ljava/lang/Boolean;

    :goto_1c
    const/high16 v5, 0x10000000

    and-int v16, v1, v5

    if-nez v16, :cond_1c

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->C:Ljava/lang/Boolean;

    move/from16 p7, v5

    goto :goto_1d

    :cond_1c
    move/from16 p7, v5

    move-object/from16 v5, p32

    iput-object v5, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->C:Ljava/lang/Boolean;

    :goto_1d
    const/high16 v5, 0x20000000

    and-int v16, v1, v5

    if-nez v16, :cond_1d

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->D:Ljava/lang/Boolean;

    move/from16 p8, v5

    goto :goto_1e

    :cond_1d
    move/from16 p8, v5

    move-object/from16 v5, p33

    iput-object v5, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->D:Ljava/lang/Boolean;

    :goto_1e
    const/high16 v5, 0x40000000    # 2.0f

    and-int v16, v1, v5

    if-nez v16, :cond_1e

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->E:Ljava/lang/Boolean;

    move/from16 p9, v5

    goto :goto_1f

    :cond_1e
    move/from16 p9, v5

    move-object/from16 v5, p34

    iput-object v5, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->E:Ljava/lang/Boolean;

    :goto_1f
    const/high16 v5, -0x80000000

    and-int/2addr v1, v5

    if-nez v1, :cond_1f

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->F:Ljava/lang/Boolean;

    goto :goto_20

    :cond_1f
    move-object/from16 v1, p35

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->F:Ljava/lang/Boolean;

    :goto_20
    and-int/lit8 v1, v2, 0x1

    if-nez v1, :cond_20

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->G:Ljava/lang/Boolean;

    goto :goto_21

    :cond_20
    move-object/from16 v1, p36

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->G:Ljava/lang/Boolean;

    :goto_21
    and-int/lit8 v1, v2, 0x2

    if-nez v1, :cond_21

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->H:Ljava/lang/Boolean;

    goto :goto_22

    :cond_21
    move-object/from16 v1, p37

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->H:Ljava/lang/Boolean;

    :goto_22
    and-int/lit8 v1, v2, 0x4

    if-nez v1, :cond_22

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->I:Ljava/lang/Boolean;

    goto :goto_23

    :cond_22
    move-object/from16 v1, p38

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->I:Ljava/lang/Boolean;

    :goto_23
    and-int/lit8 v1, v2, 0x8

    if-nez v1, :cond_23

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->J:Ljava/lang/Boolean;

    goto :goto_24

    :cond_23
    move-object/from16 v1, p39

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->J:Ljava/lang/Boolean;

    :goto_24
    and-int/lit8 v1, v2, 0x10

    if-nez v1, :cond_24

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->K:Ljava/lang/Boolean;

    goto :goto_25

    :cond_24
    move-object/from16 v1, p40

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->K:Ljava/lang/Boolean;

    :goto_25
    and-int/lit8 v1, v2, 0x20

    if-nez v1, :cond_25

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->L:Ljava/lang/Boolean;

    goto :goto_26

    :cond_25
    move-object/from16 v1, p41

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->L:Ljava/lang/Boolean;

    :goto_26
    and-int/lit8 v1, v2, 0x40

    if-nez v1, :cond_26

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->M:Ljava/lang/Boolean;

    goto :goto_27

    :cond_26
    move-object/from16 v1, p42

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->M:Ljava/lang/Boolean;

    :goto_27
    and-int/lit16 v1, v2, 0x80

    if-nez v1, :cond_27

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->N:Ljava/lang/Boolean;

    goto :goto_28

    :cond_27
    move-object/from16 v1, p43

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->N:Ljava/lang/Boolean;

    :goto_28
    and-int/lit16 v1, v2, 0x100

    if-nez v1, :cond_28

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->O:Ljava/lang/Boolean;

    goto :goto_29

    :cond_28
    move-object/from16 v1, p44

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->O:Ljava/lang/Boolean;

    :goto_29
    and-int/lit16 v1, v2, 0x200

    if-nez v1, :cond_29

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->P:Ljava/lang/Boolean;

    goto :goto_2a

    :cond_29
    move-object/from16 v1, p45

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->P:Ljava/lang/Boolean;

    :goto_2a
    and-int/lit16 v1, v2, 0x400

    if-nez v1, :cond_2a

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Q:Ljava/lang/Boolean;

    goto :goto_2b

    :cond_2a
    move-object/from16 v1, p46

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Q:Ljava/lang/Boolean;

    :goto_2b
    and-int/lit16 v1, v2, 0x800

    if-nez v1, :cond_2b

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->R:Ljava/lang/Boolean;

    goto :goto_2c

    :cond_2b
    move-object/from16 v1, p47

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->R:Ljava/lang/Boolean;

    :goto_2c
    and-int/lit16 v1, v2, 0x1000

    if-nez v1, :cond_2c

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->S:Ljava/lang/Boolean;

    goto :goto_2d

    :cond_2c
    move-object/from16 v1, p48

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->S:Ljava/lang/Boolean;

    :goto_2d
    and-int/lit16 v1, v2, 0x2000

    if-nez v1, :cond_2d

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->T:Ljava/lang/Boolean;

    goto :goto_2e

    :cond_2d
    move-object/from16 v1, p49

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->T:Ljava/lang/Boolean;

    :goto_2e
    and-int/lit16 v1, v2, 0x4000

    if-nez v1, :cond_2e

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->U:Ljava/lang/Boolean;

    goto :goto_2f

    :cond_2e
    move-object/from16 v1, p50

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->U:Ljava/lang/Boolean;

    :goto_2f
    and-int v1, v2, p4

    if-nez v1, :cond_2f

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->V:Ljava/lang/Boolean;

    goto :goto_30

    :cond_2f
    move-object/from16 v1, p51

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->V:Ljava/lang/Boolean;

    :goto_30
    and-int v1, v2, v6

    if-nez v1, :cond_30

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->W:Ljava/lang/Boolean;

    goto :goto_31

    :cond_30
    move-object/from16 v1, p52

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->W:Ljava/lang/Boolean;

    :goto_31
    and-int v1, v2, v8

    if-nez v1, :cond_31

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->X:Ljava/lang/Boolean;

    goto :goto_32

    :cond_31
    move-object/from16 v1, p53

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->X:Ljava/lang/Boolean;

    :goto_32
    and-int v1, v2, v4

    if-nez v1, :cond_32

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Y:Ljava/lang/Boolean;

    goto :goto_33

    :cond_32
    move-object/from16 v1, p54

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Y:Ljava/lang/Boolean;

    :goto_33
    and-int v1, v2, v9

    if-nez v1, :cond_33

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Z:Ljava/lang/Boolean;

    goto :goto_34

    :cond_33
    move-object/from16 v1, p55

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Z:Ljava/lang/Boolean;

    :goto_34
    and-int v1, v2, v10

    if-nez v1, :cond_34

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->a0:Ljava/lang/Boolean;

    goto :goto_35

    :cond_34
    move-object/from16 v1, p56

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->a0:Ljava/lang/Boolean;

    :goto_35
    and-int v1, v2, v11

    if-nez v1, :cond_35

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->b0:Ljava/lang/Boolean;

    goto :goto_36

    :cond_35
    move-object/from16 v1, p57

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->b0:Ljava/lang/Boolean;

    :goto_36
    and-int v1, v2, v12

    if-nez v1, :cond_36

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->c0:Ljava/lang/Boolean;

    goto :goto_37

    :cond_36
    move-object/from16 v1, p58

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->c0:Ljava/lang/Boolean;

    :goto_37
    and-int v1, v2, v13

    if-nez v1, :cond_37

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->d0:Ljava/lang/Boolean;

    goto :goto_38

    :cond_37
    move-object/from16 v1, p59

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->d0:Ljava/lang/Boolean;

    :goto_38
    and-int v1, v2, v14

    if-nez v1, :cond_38

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->e0:Ljava/lang/Boolean;

    goto :goto_39

    :cond_38
    move-object/from16 v1, p60

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->e0:Ljava/lang/Boolean;

    :goto_39
    and-int v1, v2, v15

    if-nez v1, :cond_39

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->f0:Ljava/lang/Boolean;

    goto :goto_3a

    :cond_39
    move-object/from16 v1, p61

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->f0:Ljava/lang/Boolean;

    :goto_3a
    and-int v1, v2, p5

    if-nez v1, :cond_3a

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->g0:Ljava/lang/Boolean;

    goto :goto_3b

    :cond_3a
    move-object/from16 v1, p62

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->g0:Ljava/lang/Boolean;

    :goto_3b
    and-int v1, v2, p6

    if-nez v1, :cond_3b

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->h0:Ljava/lang/Boolean;

    goto :goto_3c

    :cond_3b
    move-object/from16 v1, p63

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->h0:Ljava/lang/Boolean;

    :goto_3c
    and-int v1, v2, p7

    if-nez v1, :cond_3c

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->i0:Ljava/lang/Boolean;

    goto :goto_3d

    :cond_3c
    move-object/from16 v1, p64

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->i0:Ljava/lang/Boolean;

    :goto_3d
    and-int v1, v2, p8

    if-nez v1, :cond_3d

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->j0:Ljava/lang/Boolean;

    goto :goto_3e

    :cond_3d
    move-object/from16 v1, p65

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->j0:Ljava/lang/Boolean;

    :goto_3e
    and-int v1, v2, p9

    if-nez v1, :cond_3e

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->k0:Ljava/lang/Boolean;

    goto :goto_3f

    :cond_3e
    move-object/from16 v1, p66

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->k0:Ljava/lang/Boolean;

    :goto_3f
    and-int v1, v2, v5

    if-nez v1, :cond_3f

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->l0:Ljava/lang/Boolean;

    goto :goto_40

    :cond_3f
    move-object/from16 v1, p67

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->l0:Ljava/lang/Boolean;

    :goto_40
    and-int/lit8 v1, v3, 0x1

    if-nez v1, :cond_40

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->m0:Ljava/lang/Boolean;

    goto :goto_41

    :cond_40
    move-object/from16 v1, p68

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->m0:Ljava/lang/Boolean;

    :goto_41
    and-int/lit8 v1, v3, 0x2

    if-nez v1, :cond_41

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->n0:Ljava/lang/Boolean;

    goto :goto_42

    :cond_41
    move-object/from16 v1, p69

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->n0:Ljava/lang/Boolean;

    :goto_42
    and-int/lit8 v1, v3, 0x4

    if-nez v1, :cond_42

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->o0:Ljava/lang/Boolean;

    goto :goto_43

    :cond_42
    move-object/from16 v1, p70

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->o0:Ljava/lang/Boolean;

    :goto_43
    and-int/lit8 v1, v3, 0x8

    if-nez v1, :cond_43

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->p0:Ljava/lang/Boolean;

    goto :goto_44

    :cond_43
    move-object/from16 v1, p71

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->p0:Ljava/lang/Boolean;

    :goto_44
    and-int/lit8 v1, v3, 0x10

    if-nez v1, :cond_44

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->q0:Ljava/lang/Boolean;

    goto :goto_45

    :cond_44
    move-object/from16 v1, p72

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->q0:Ljava/lang/Boolean;

    :goto_45
    and-int/lit8 v1, v3, 0x20

    if-nez v1, :cond_45

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->r0:Ljava/lang/Boolean;

    goto :goto_46

    :cond_45
    move-object/from16 v1, p73

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->r0:Ljava/lang/Boolean;

    :goto_46
    and-int/lit8 v1, v3, 0x40

    if-nez v1, :cond_46

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->s0:Ljava/lang/Boolean;

    goto :goto_47

    :cond_46
    move-object/from16 v1, p74

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->s0:Ljava/lang/Boolean;

    :goto_47
    and-int/lit16 v1, v3, 0x80

    if-nez v1, :cond_47

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->t0:Ljava/lang/Boolean;

    goto :goto_48

    :cond_47
    move-object/from16 v1, p75

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->t0:Ljava/lang/Boolean;

    :goto_48
    and-int/lit16 v1, v3, 0x100

    if-nez v1, :cond_48

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->u0:Ljava/lang/Boolean;

    goto :goto_49

    :cond_48
    move-object/from16 v1, p76

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->u0:Ljava/lang/Boolean;

    :goto_49
    and-int/lit16 v1, v3, 0x200

    if-nez v1, :cond_49

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->v0:Ljava/lang/Boolean;

    goto :goto_4a

    :cond_49
    move-object/from16 v1, p77

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->v0:Ljava/lang/Boolean;

    :goto_4a
    and-int/lit16 v1, v3, 0x400

    if-nez v1, :cond_4a

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->w0:Ljava/lang/Boolean;

    goto :goto_4b

    :cond_4a
    move-object/from16 v1, p78

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->w0:Ljava/lang/Boolean;

    :goto_4b
    and-int/lit16 v1, v3, 0x800

    if-nez v1, :cond_4b

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->x0:Ljava/lang/Boolean;

    goto :goto_4c

    :cond_4b
    move-object/from16 v1, p79

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->x0:Ljava/lang/Boolean;

    :goto_4c
    and-int/lit16 v1, v3, 0x1000

    if-nez v1, :cond_4c

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->y0:Ljava/lang/Boolean;

    goto :goto_4d

    :cond_4c
    move-object/from16 v1, p80

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->y0:Ljava/lang/Boolean;

    :goto_4d
    and-int/lit16 v1, v3, 0x2000

    if-nez v1, :cond_4d

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->z0:Ljava/lang/Boolean;

    goto :goto_4e

    :cond_4d
    move-object/from16 v1, p81

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->z0:Ljava/lang/Boolean;

    :goto_4e
    and-int/lit16 v1, v3, 0x4000

    if-nez v1, :cond_4e

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->A0:Ljava/lang/Boolean;

    goto :goto_4f

    :cond_4e
    move-object/from16 v1, p82

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->A0:Ljava/lang/Boolean;

    :goto_4f
    and-int v1, v3, p4

    if-nez v1, :cond_4f

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->B0:Ljava/lang/Boolean;

    goto :goto_50

    :cond_4f
    move-object/from16 v1, p83

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->B0:Ljava/lang/Boolean;

    :goto_50
    and-int v1, v3, v6

    if-nez v1, :cond_50

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->C0:Ljava/lang/Boolean;

    goto :goto_51

    :cond_50
    move-object/from16 v1, p84

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->C0:Ljava/lang/Boolean;

    :goto_51
    and-int v1, v3, v8

    if-nez v1, :cond_51

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->D0:Ljava/lang/Boolean;

    goto :goto_52

    :cond_51
    move-object/from16 v1, p85

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->D0:Ljava/lang/Boolean;

    :goto_52
    and-int v1, v3, v4

    if-nez v1, :cond_52

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->E0:Ljava/lang/Boolean;

    goto :goto_53

    :cond_52
    move-object/from16 v1, p86

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->E0:Ljava/lang/Boolean;

    :goto_53
    and-int v1, v3, v9

    if-nez v1, :cond_53

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->F0:Ljava/lang/Boolean;

    goto :goto_54

    :cond_53
    move-object/from16 v1, p87

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->F0:Ljava/lang/Boolean;

    :goto_54
    and-int v1, v3, v10

    if-nez v1, :cond_54

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->G0:Ljava/lang/Boolean;

    goto :goto_55

    :cond_54
    move-object/from16 v1, p88

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->G0:Ljava/lang/Boolean;

    :goto_55
    and-int v1, v3, v11

    if-nez v1, :cond_55

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->H0:Ljava/lang/Boolean;

    goto :goto_56

    :cond_55
    move-object/from16 v1, p89

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->H0:Ljava/lang/Boolean;

    :goto_56
    and-int v1, v3, v12

    if-nez v1, :cond_56

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->I0:Ljava/lang/Boolean;

    goto :goto_57

    :cond_56
    move-object/from16 v1, p90

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->I0:Ljava/lang/Boolean;

    :goto_57
    and-int v1, v3, v13

    if-nez v1, :cond_57

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->J0:Ljava/lang/Boolean;

    goto :goto_58

    :cond_57
    move-object/from16 v1, p91

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->J0:Ljava/lang/Boolean;

    :goto_58
    and-int v1, v3, v14

    if-nez v1, :cond_58

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->K0:Ljava/lang/Boolean;

    goto :goto_59

    :cond_58
    move-object/from16 v1, p92

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->K0:Ljava/lang/Boolean;

    :goto_59
    and-int v1, v3, v15

    if-nez v1, :cond_59

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->L0:Ljava/lang/Boolean;

    goto :goto_5a

    :cond_59
    move-object/from16 v1, p93

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->L0:Ljava/lang/Boolean;

    :goto_5a
    and-int v1, v3, p5

    if-nez v1, :cond_5a

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->M0:Ljava/lang/Boolean;

    goto :goto_5b

    :cond_5a
    move-object/from16 v1, p94

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->M0:Ljava/lang/Boolean;

    :goto_5b
    and-int v1, v3, p6

    if-nez v1, :cond_5b

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->N0:Ljava/lang/Boolean;

    goto :goto_5c

    :cond_5b
    move-object/from16 v1, p95

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->N0:Ljava/lang/Boolean;

    :goto_5c
    and-int v1, v3, p7

    if-nez v1, :cond_5c

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->O0:Ljava/lang/Boolean;

    goto :goto_5d

    :cond_5c
    move-object/from16 v1, p96

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->O0:Ljava/lang/Boolean;

    :goto_5d
    and-int v1, v3, p8

    if-nez v1, :cond_5d

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->P0:Ljava/lang/Boolean;

    goto :goto_5e

    :cond_5d
    move-object/from16 v1, p97

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->P0:Ljava/lang/Boolean;

    :goto_5e
    and-int v1, v3, p9

    if-nez v1, :cond_5e

    iput-object v7, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Q0:Ljava/lang/Boolean;

    return-void

    :cond_5e
    move-object/from16 v1, p98

    iput-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Q0:Ljava/lang/Boolean;

    return-void

    :cond_5f
    filled-new-array/range {p1 .. p3}, [I

    move-result-object v0

    filled-new-array {v4, v6, v6}, [I

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto$$serializer;->a:Lcom/vuitton/android/data/dto/config/FeaturesConfigDto$$serializer;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lkotlinx/serialization/internal/PluginExceptionsKt;->a([I[ILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v7
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 1138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1139
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->a:Ljava/lang/Boolean;

    .line 1140
    iput-object p2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->b:Ljava/lang/Boolean;

    .line 1141
    iput-object p3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->c:Ljava/lang/Boolean;

    .line 1142
    iput-object p4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->d:Ljava/lang/Boolean;

    .line 1143
    iput-object p5, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->e:Ljava/lang/Boolean;

    .line 1144
    iput-object p6, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->f:Ljava/lang/Boolean;

    .line 1145
    iput-object p7, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->g:Ljava/lang/Boolean;

    .line 1146
    iput-object p8, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->h:Ljava/lang/Boolean;

    .line 1147
    iput-object p9, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->i:Ljava/lang/Boolean;

    .line 1148
    iput-object p10, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->j:Ljava/lang/Boolean;

    .line 1149
    iput-object p11, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->k:Ljava/lang/Boolean;

    .line 1150
    iput-object p12, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->l:Ljava/lang/Boolean;

    .line 1151
    iput-object p13, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->m:Ljava/lang/Boolean;

    .line 1152
    iput-object p14, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->n:Ljava/lang/Boolean;

    .line 1153
    iput-object p15, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->o:Ljava/lang/Boolean;

    move-object/from16 p1, p16

    .line 1154
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->p:Ljava/lang/Boolean;

    move-object/from16 p1, p17

    .line 1155
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->q:Ljava/lang/Boolean;

    move-object/from16 p1, p18

    .line 1156
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->r:Ljava/lang/Boolean;

    move-object/from16 p1, p19

    .line 1157
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->s:Ljava/lang/Boolean;

    move-object/from16 p1, p20

    .line 1158
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->t:Ljava/lang/Boolean;

    move-object/from16 p1, p21

    .line 1159
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->u:Ljava/lang/Boolean;

    move-object/from16 p1, p22

    .line 1160
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->v:Ljava/lang/Boolean;

    move-object/from16 p1, p23

    .line 1161
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->w:Ljava/lang/Boolean;

    move-object/from16 p1, p24

    .line 1162
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->x:Ljava/lang/Boolean;

    move-object/from16 p1, p25

    .line 1163
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->y:Ljava/lang/Boolean;

    move-object/from16 p1, p26

    .line 1164
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->z:Ljava/lang/Boolean;

    move-object/from16 p1, p27

    .line 1165
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->A:Ljava/lang/Boolean;

    move-object/from16 p1, p28

    .line 1166
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->B:Ljava/lang/Boolean;

    move-object/from16 p1, p29

    .line 1167
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->C:Ljava/lang/Boolean;

    move-object/from16 p1, p30

    .line 1168
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->D:Ljava/lang/Boolean;

    move-object/from16 p1, p31

    .line 1169
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->E:Ljava/lang/Boolean;

    move-object/from16 p1, p32

    .line 1170
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->F:Ljava/lang/Boolean;

    move-object/from16 p1, p33

    .line 1171
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->G:Ljava/lang/Boolean;

    move-object/from16 p1, p34

    .line 1172
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->H:Ljava/lang/Boolean;

    move-object/from16 p1, p35

    .line 1173
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->I:Ljava/lang/Boolean;

    move-object/from16 p1, p36

    .line 1174
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->J:Ljava/lang/Boolean;

    move-object/from16 p1, p37

    .line 1175
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->K:Ljava/lang/Boolean;

    move-object/from16 p1, p38

    .line 1176
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->L:Ljava/lang/Boolean;

    move-object/from16 p1, p39

    .line 1177
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->M:Ljava/lang/Boolean;

    move-object/from16 p1, p40

    .line 1178
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->N:Ljava/lang/Boolean;

    move-object/from16 p1, p41

    .line 1179
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->O:Ljava/lang/Boolean;

    move-object/from16 p1, p42

    .line 1180
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->P:Ljava/lang/Boolean;

    move-object/from16 p1, p43

    .line 1181
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Q:Ljava/lang/Boolean;

    move-object/from16 p1, p44

    .line 1182
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->R:Ljava/lang/Boolean;

    move-object/from16 p1, p45

    .line 1183
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->S:Ljava/lang/Boolean;

    move-object/from16 p1, p46

    .line 1184
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->T:Ljava/lang/Boolean;

    move-object/from16 p1, p47

    .line 1185
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->U:Ljava/lang/Boolean;

    move-object/from16 p1, p48

    .line 1186
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->V:Ljava/lang/Boolean;

    move-object/from16 p1, p49

    .line 1187
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->W:Ljava/lang/Boolean;

    move-object/from16 p1, p50

    .line 1188
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->X:Ljava/lang/Boolean;

    move-object/from16 p1, p51

    .line 1189
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Y:Ljava/lang/Boolean;

    move-object/from16 p1, p52

    .line 1190
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Z:Ljava/lang/Boolean;

    move-object/from16 p1, p53

    .line 1191
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->a0:Ljava/lang/Boolean;

    move-object/from16 p1, p54

    .line 1192
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->b0:Ljava/lang/Boolean;

    move-object/from16 p1, p55

    .line 1193
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->c0:Ljava/lang/Boolean;

    move-object/from16 p1, p56

    .line 1194
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->d0:Ljava/lang/Boolean;

    move-object/from16 p1, p57

    .line 1195
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->e0:Ljava/lang/Boolean;

    move-object/from16 p1, p58

    .line 1196
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->f0:Ljava/lang/Boolean;

    move-object/from16 p1, p59

    .line 1197
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->g0:Ljava/lang/Boolean;

    move-object/from16 p1, p60

    .line 1198
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->h0:Ljava/lang/Boolean;

    move-object/from16 p1, p61

    .line 1199
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->i0:Ljava/lang/Boolean;

    move-object/from16 p1, p62

    .line 1200
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->j0:Ljava/lang/Boolean;

    move-object/from16 p1, p63

    .line 1201
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->k0:Ljava/lang/Boolean;

    move-object/from16 p1, p64

    .line 1202
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->l0:Ljava/lang/Boolean;

    move-object/from16 p1, p65

    .line 1203
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->m0:Ljava/lang/Boolean;

    move-object/from16 p1, p66

    .line 1204
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->n0:Ljava/lang/Boolean;

    move-object/from16 p1, p67

    .line 1205
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->o0:Ljava/lang/Boolean;

    move-object/from16 p1, p68

    .line 1206
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->p0:Ljava/lang/Boolean;

    move-object/from16 p1, p69

    .line 1207
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->q0:Ljava/lang/Boolean;

    move-object/from16 p1, p70

    .line 1208
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->r0:Ljava/lang/Boolean;

    move-object/from16 p1, p71

    .line 1209
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->s0:Ljava/lang/Boolean;

    move-object/from16 p1, p72

    .line 1210
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->t0:Ljava/lang/Boolean;

    move-object/from16 p1, p73

    .line 1211
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->u0:Ljava/lang/Boolean;

    move-object/from16 p1, p74

    .line 1212
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->v0:Ljava/lang/Boolean;

    move-object/from16 p1, p75

    .line 1213
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->w0:Ljava/lang/Boolean;

    move-object/from16 p1, p76

    .line 1214
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->x0:Ljava/lang/Boolean;

    move-object/from16 p1, p77

    .line 1215
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->y0:Ljava/lang/Boolean;

    move-object/from16 p1, p78

    .line 1216
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->z0:Ljava/lang/Boolean;

    move-object/from16 p1, p79

    .line 1217
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->A0:Ljava/lang/Boolean;

    move-object/from16 p1, p80

    .line 1218
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->B0:Ljava/lang/Boolean;

    move-object/from16 p1, p81

    .line 1219
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->C0:Ljava/lang/Boolean;

    move-object/from16 p1, p82

    .line 1220
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->D0:Ljava/lang/Boolean;

    move-object/from16 p1, p83

    .line 1221
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->E0:Ljava/lang/Boolean;

    move-object/from16 p1, p84

    .line 1222
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->F0:Ljava/lang/Boolean;

    move-object/from16 p1, p85

    .line 1223
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->G0:Ljava/lang/Boolean;

    move-object/from16 p1, p86

    .line 1224
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->H0:Ljava/lang/Boolean;

    move-object/from16 p1, p87

    .line 1225
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->I0:Ljava/lang/Boolean;

    move-object/from16 p1, p88

    .line 1226
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->J0:Ljava/lang/Boolean;

    move-object/from16 p1, p89

    .line 1227
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->K0:Ljava/lang/Boolean;

    move-object/from16 p1, p90

    .line 1228
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->L0:Ljava/lang/Boolean;

    move-object/from16 p1, p91

    .line 1229
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->M0:Ljava/lang/Boolean;

    move-object/from16 p1, p92

    .line 1230
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->N0:Ljava/lang/Boolean;

    move-object/from16 p1, p93

    .line 1231
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->O0:Ljava/lang/Boolean;

    move-object/from16 p1, p94

    .line 1232
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->P0:Ljava/lang/Boolean;

    move-object/from16 p1, p95

    .line 1233
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Q0:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 101

    move/from16 v0, p96

    move/from16 v1, p97

    move/from16 v2, p98

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v6, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v7, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v8, p3

    :goto_2
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v9, p4

    :goto_3
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_4

    const/4 v10, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v10, p5

    :goto_4
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_5

    const/4 v11, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v11, p6

    :goto_5
    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_6

    const/4 v12, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v12, p7

    :goto_6
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_7

    const/4 v13, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v13, p8

    :goto_7
    and-int/lit16 v3, v0, 0x100

    if-eqz v3, :cond_8

    const/4 v14, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v14, p9

    :goto_8
    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_9

    const/4 v15, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v15, p10

    :goto_9
    and-int/lit16 v3, v0, 0x400

    if-eqz v3, :cond_a

    const/16 v16, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v16, p11

    :goto_a
    and-int/lit16 v3, v0, 0x800

    if-eqz v3, :cond_b

    const/16 v17, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v17, p12

    :goto_b
    and-int/lit16 v3, v0, 0x1000

    if-eqz v3, :cond_c

    const/16 v18, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v18, p13

    :goto_c
    and-int/lit16 v3, v0, 0x2000

    if-eqz v3, :cond_d

    const/16 v19, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v19, p14

    :goto_d
    and-int/lit16 v3, v0, 0x4000

    if-eqz v3, :cond_e

    const/16 v20, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v20, p15

    :goto_e
    const v3, 0x8000

    and-int v5, v0, v3

    if-eqz v5, :cond_f

    const/16 v21, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v21, p16

    :goto_f
    const/high16 v5, 0x10000

    and-int v22, v0, v5

    if-eqz v22, :cond_10

    const/16 v22, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v22, p17

    :goto_10
    const/high16 v23, 0x20000

    and-int v24, v0, v23

    if-eqz v24, :cond_11

    const/16 v24, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v24, p18

    :goto_11
    const/high16 v25, 0x80000

    and-int v26, v0, v25

    if-eqz v26, :cond_12

    const/16 v26, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v26, p20

    :goto_12
    const/high16 v27, 0x100000

    and-int v28, v0, v27

    if-eqz v28, :cond_13

    const/16 v28, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v28, p21

    :goto_13
    const/high16 v29, 0x200000

    and-int v30, v0, v29

    if-eqz v30, :cond_14

    const/16 v30, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v30, p22

    :goto_14
    const/high16 v31, 0x400000

    and-int v31, v0, v31

    if-eqz v31, :cond_15

    const/16 v31, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v31, p23

    :goto_15
    const/high16 v32, 0x800000

    and-int v32, v0, v32

    if-eqz v32, :cond_16

    const/16 v32, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v32, p24

    :goto_16
    const/high16 v33, 0x1000000

    and-int v33, v0, v33

    if-eqz v33, :cond_17

    const/16 v33, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v33, p25

    :goto_17
    const/high16 v34, 0x2000000

    and-int v34, v0, v34

    if-eqz v34, :cond_18

    const/16 v34, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v34, p26

    :goto_18
    const/high16 v35, 0x4000000

    and-int v35, v0, v35

    if-eqz v35, :cond_19

    const/16 v35, 0x0

    goto :goto_19

    :cond_19
    move-object/from16 v35, p27

    :goto_19
    const/high16 v36, 0x8000000

    and-int v36, v0, v36

    if-eqz v36, :cond_1a

    const/16 v36, 0x0

    goto :goto_1a

    :cond_1a
    move-object/from16 v36, p28

    :goto_1a
    const/high16 v37, 0x10000000

    and-int v37, v0, v37

    if-eqz v37, :cond_1b

    const/16 v37, 0x0

    goto :goto_1b

    :cond_1b
    move-object/from16 v37, p29

    :goto_1b
    const/high16 v38, 0x20000000

    and-int v38, v0, v38

    if-eqz v38, :cond_1c

    const/16 v38, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v38, p30

    :goto_1c
    const/high16 v39, 0x40000000    # 2.0f

    and-int v39, v0, v39

    if-eqz v39, :cond_1d

    const/16 v39, 0x0

    goto :goto_1d

    :cond_1d
    move-object/from16 v39, p31

    :goto_1d
    const/high16 v40, -0x80000000

    and-int v0, v0, v40

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    goto :goto_1e

    :cond_1e
    move-object/from16 v0, p32

    :goto_1e
    and-int/lit8 v40, v1, 0x1

    if-eqz v40, :cond_1f

    const/16 v40, 0x0

    goto :goto_1f

    :cond_1f
    move-object/from16 v40, p33

    :goto_1f
    and-int/lit8 v41, v1, 0x2

    if-eqz v41, :cond_20

    const/16 v41, 0x0

    goto :goto_20

    :cond_20
    move-object/from16 v41, p34

    :goto_20
    and-int/lit8 v42, v1, 0x4

    if-eqz v42, :cond_21

    const/16 v42, 0x0

    goto :goto_21

    :cond_21
    move-object/from16 v42, p35

    :goto_21
    and-int/lit8 v43, v1, 0x8

    if-eqz v43, :cond_22

    const/16 v43, 0x0

    goto :goto_22

    :cond_22
    move-object/from16 v43, p36

    :goto_22
    and-int/lit8 v44, v1, 0x10

    if-eqz v44, :cond_23

    const/16 v44, 0x0

    goto :goto_23

    :cond_23
    move-object/from16 v44, p37

    :goto_23
    and-int/lit8 v45, v1, 0x20

    if-eqz v45, :cond_24

    const/16 v45, 0x0

    goto :goto_24

    :cond_24
    move-object/from16 v45, p38

    :goto_24
    and-int/lit8 v46, v1, 0x40

    if-eqz v46, :cond_25

    const/16 v46, 0x0

    goto :goto_25

    :cond_25
    move-object/from16 v46, p39

    :goto_25
    move/from16 p1, v3

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    goto :goto_26

    :cond_26
    move-object/from16 v3, p40

    :goto_26
    and-int/lit16 v4, v1, 0x100

    if-eqz v4, :cond_27

    const/4 v4, 0x0

    goto :goto_27

    :cond_27
    move-object/from16 v4, p41

    :goto_27
    move/from16 p2, v5

    and-int/lit16 v5, v1, 0x200

    if-eqz v5, :cond_28

    const/16 v47, 0x0

    goto :goto_28

    :cond_28
    move-object/from16 v47, p42

    :goto_28
    and-int/lit16 v5, v1, 0x400

    if-eqz v5, :cond_29

    const/16 v48, 0x0

    goto :goto_29

    :cond_29
    move-object/from16 v48, p43

    :goto_29
    and-int/lit16 v5, v1, 0x800

    if-eqz v5, :cond_2a

    const/16 v49, 0x0

    goto :goto_2a

    :cond_2a
    move-object/from16 v49, p44

    :goto_2a
    and-int/lit16 v5, v1, 0x1000

    if-eqz v5, :cond_2b

    const/16 v50, 0x0

    goto :goto_2b

    :cond_2b
    move-object/from16 v50, p45

    :goto_2b
    and-int/lit16 v5, v1, 0x2000

    if-eqz v5, :cond_2c

    const/16 v51, 0x0

    goto :goto_2c

    :cond_2c
    move-object/from16 v51, p46

    :goto_2c
    and-int/lit16 v5, v1, 0x4000

    if-eqz v5, :cond_2d

    const/16 v52, 0x0

    goto :goto_2d

    :cond_2d
    move-object/from16 v52, p47

    :goto_2d
    and-int v5, v1, p1

    if-eqz v5, :cond_2e

    const/16 v53, 0x0

    goto :goto_2e

    :cond_2e
    move-object/from16 v53, p48

    :goto_2e
    and-int v5, v1, p2

    if-eqz v5, :cond_2f

    const/16 v54, 0x0

    goto :goto_2f

    :cond_2f
    move-object/from16 v54, p49

    :goto_2f
    and-int v5, v1, v23

    if-eqz v5, :cond_30

    const/16 v55, 0x0

    goto :goto_30

    :cond_30
    move-object/from16 v55, p50

    :goto_30
    const/high16 v5, 0x40000

    and-int/2addr v5, v1

    if-eqz v5, :cond_31

    const/16 v56, 0x0

    goto :goto_31

    :cond_31
    move-object/from16 v56, p51

    :goto_31
    and-int v5, v1, v25

    if-eqz v5, :cond_32

    const/16 v57, 0x0

    goto :goto_32

    :cond_32
    move-object/from16 v57, p52

    :goto_32
    and-int v5, v1, v27

    if-eqz v5, :cond_33

    const/16 v58, 0x0

    goto :goto_33

    :cond_33
    move-object/from16 v58, p53

    :goto_33
    and-int v5, v1, v29

    if-eqz v5, :cond_34

    const/16 v59, 0x0

    goto :goto_34

    :cond_34
    move-object/from16 v59, p54

    :goto_34
    const/high16 v5, 0x400000

    and-int/2addr v5, v1

    if-eqz v5, :cond_35

    const/16 v60, 0x0

    goto :goto_35

    :cond_35
    move-object/from16 v60, p55

    :goto_35
    const/high16 v5, 0x800000

    and-int/2addr v5, v1

    if-eqz v5, :cond_36

    const/16 v61, 0x0

    goto :goto_36

    :cond_36
    move-object/from16 v61, p56

    :goto_36
    const/high16 v5, 0x1000000

    and-int/2addr v5, v1

    if-eqz v5, :cond_37

    const/16 v62, 0x0

    goto :goto_37

    :cond_37
    move-object/from16 v62, p57

    :goto_37
    const/high16 v5, 0x2000000

    and-int/2addr v5, v1

    if-eqz v5, :cond_38

    const/16 v63, 0x0

    goto :goto_38

    :cond_38
    move-object/from16 v63, p58

    :goto_38
    const/high16 v5, 0x4000000

    and-int/2addr v5, v1

    if-eqz v5, :cond_39

    const/16 v64, 0x0

    goto :goto_39

    :cond_39
    move-object/from16 v64, p59

    :goto_39
    const/high16 v5, 0x8000000

    and-int/2addr v5, v1

    if-eqz v5, :cond_3a

    const/16 v65, 0x0

    goto :goto_3a

    :cond_3a
    move-object/from16 v65, p60

    :goto_3a
    const/high16 v5, 0x10000000

    and-int/2addr v5, v1

    if-eqz v5, :cond_3b

    const/16 v66, 0x0

    goto :goto_3b

    :cond_3b
    move-object/from16 v66, p61

    :goto_3b
    const/high16 v5, 0x20000000

    and-int/2addr v5, v1

    if-eqz v5, :cond_3c

    const/16 v67, 0x0

    goto :goto_3c

    :cond_3c
    move-object/from16 v67, p62

    :goto_3c
    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v5, v1

    if-eqz v5, :cond_3d

    const/16 v68, 0x0

    goto :goto_3d

    :cond_3d
    move-object/from16 v68, p63

    :goto_3d
    const/high16 v5, -0x80000000

    and-int/2addr v1, v5

    if-eqz v1, :cond_3e

    const/16 v69, 0x0

    goto :goto_3e

    :cond_3e
    move-object/from16 v69, p64

    :goto_3e
    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_3f

    const/16 v70, 0x0

    goto :goto_3f

    :cond_3f
    move-object/from16 v70, p65

    :goto_3f
    and-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_40

    const/16 v71, 0x0

    goto :goto_40

    :cond_40
    move-object/from16 v71, p66

    :goto_40
    and-int/lit8 v1, v2, 0x4

    if-eqz v1, :cond_41

    const/16 v72, 0x0

    goto :goto_41

    :cond_41
    move-object/from16 v72, p67

    :goto_41
    and-int/lit8 v1, v2, 0x8

    if-eqz v1, :cond_42

    const/16 v73, 0x0

    goto :goto_42

    :cond_42
    move-object/from16 v73, p68

    :goto_42
    and-int/lit8 v1, v2, 0x10

    if-eqz v1, :cond_43

    const/16 v74, 0x0

    goto :goto_43

    :cond_43
    move-object/from16 v74, p69

    :goto_43
    and-int/lit8 v1, v2, 0x20

    if-eqz v1, :cond_44

    const/16 v75, 0x0

    goto :goto_44

    :cond_44
    move-object/from16 v75, p70

    :goto_44
    and-int/lit8 v1, v2, 0x40

    if-eqz v1, :cond_45

    const/16 v76, 0x0

    goto :goto_45

    :cond_45
    move-object/from16 v76, p71

    :goto_45
    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_46

    const/16 v77, 0x0

    goto :goto_46

    :cond_46
    move-object/from16 v77, p72

    :goto_46
    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_47

    const/16 v78, 0x0

    goto :goto_47

    :cond_47
    move-object/from16 v78, p73

    :goto_47
    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_48

    const/16 v79, 0x0

    goto :goto_48

    :cond_48
    move-object/from16 v79, p74

    :goto_48
    and-int/lit16 v1, v2, 0x400

    if-eqz v1, :cond_49

    const/16 v80, 0x0

    goto :goto_49

    :cond_49
    move-object/from16 v80, p75

    :goto_49
    and-int/lit16 v1, v2, 0x800

    if-eqz v1, :cond_4a

    const/16 v81, 0x0

    goto :goto_4a

    :cond_4a
    move-object/from16 v81, p76

    :goto_4a
    and-int/lit16 v1, v2, 0x1000

    if-eqz v1, :cond_4b

    const/16 v82, 0x0

    goto :goto_4b

    :cond_4b
    move-object/from16 v82, p77

    :goto_4b
    and-int/lit16 v1, v2, 0x2000

    if-eqz v1, :cond_4c

    const/16 v83, 0x0

    goto :goto_4c

    :cond_4c
    move-object/from16 v83, p78

    :goto_4c
    and-int/lit16 v1, v2, 0x4000

    if-eqz v1, :cond_4d

    const/16 v84, 0x0

    goto :goto_4d

    :cond_4d
    move-object/from16 v84, p79

    :goto_4d
    and-int v1, v2, p1

    if-eqz v1, :cond_4e

    const/16 v85, 0x0

    goto :goto_4e

    :cond_4e
    move-object/from16 v85, p80

    :goto_4e
    and-int v1, v2, p2

    if-eqz v1, :cond_4f

    const/16 v86, 0x0

    goto :goto_4f

    :cond_4f
    move-object/from16 v86, p81

    :goto_4f
    and-int v1, v2, v23

    if-eqz v1, :cond_50

    const/16 v87, 0x0

    goto :goto_50

    :cond_50
    move-object/from16 v87, p82

    :goto_50
    const/high16 v1, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_51

    const/16 v88, 0x0

    goto :goto_51

    :cond_51
    move-object/from16 v88, p83

    :goto_51
    and-int v1, v2, v25

    if-eqz v1, :cond_52

    const/16 v89, 0x0

    goto :goto_52

    :cond_52
    move-object/from16 v89, p84

    :goto_52
    and-int v1, v2, v27

    if-eqz v1, :cond_53

    const/16 v90, 0x0

    goto :goto_53

    :cond_53
    move-object/from16 v90, p85

    :goto_53
    and-int v1, v2, v29

    if-eqz v1, :cond_54

    const/16 v91, 0x0

    goto :goto_54

    :cond_54
    move-object/from16 v91, p86

    :goto_54
    const/high16 v1, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_55

    const/16 v92, 0x0

    goto :goto_55

    :cond_55
    move-object/from16 v92, p87

    :goto_55
    const/high16 v1, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_56

    const/16 v93, 0x0

    goto :goto_56

    :cond_56
    move-object/from16 v93, p88

    :goto_56
    const/high16 v1, 0x1000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_57

    const/16 v94, 0x0

    goto :goto_57

    :cond_57
    move-object/from16 v94, p89

    :goto_57
    const/high16 v1, 0x2000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_58

    const/16 v95, 0x0

    goto :goto_58

    :cond_58
    move-object/from16 v95, p90

    :goto_58
    const/high16 v1, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_59

    const/16 v96, 0x0

    goto :goto_59

    :cond_59
    move-object/from16 v96, p91

    :goto_59
    const/high16 v1, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_5a

    const/16 v97, 0x0

    goto :goto_5a

    :cond_5a
    move-object/from16 v97, p92

    :goto_5a
    const/high16 v1, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_5b

    const/16 v98, 0x0

    goto :goto_5b

    :cond_5b
    move-object/from16 v98, p93

    :goto_5b
    const/high16 v1, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_5c

    const/16 v99, 0x0

    goto :goto_5c

    :cond_5c
    move-object/from16 v99, p94

    :goto_5c
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_5d

    const/16 v100, 0x0

    :goto_5d
    move-object/from16 v5, p0

    move-object/from16 v23, v24

    move-object/from16 v25, v26

    move-object/from16 v26, v28

    move-object/from16 v27, v30

    move-object/from16 v28, v31

    move-object/from16 v29, v32

    move-object/from16 v30, v33

    move-object/from16 v31, v34

    move-object/from16 v32, v35

    move-object/from16 v33, v36

    move-object/from16 v34, v37

    move-object/from16 v35, v38

    move-object/from16 v36, v39

    move-object/from16 v38, v40

    move-object/from16 v39, v41

    move-object/from16 v40, v42

    move-object/from16 v41, v43

    move-object/from16 v42, v44

    move-object/from16 v43, v45

    move-object/from16 v44, v46

    move-object/from16 v24, p19

    move-object/from16 v37, v0

    move-object/from16 v45, v3

    move-object/from16 v46, v4

    goto :goto_5e

    :cond_5d
    move-object/from16 v100, p95

    goto :goto_5d

    .line 1234
    :goto_5e
    invoke-direct/range {v5 .. v100}, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->a:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->a:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->b:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->b:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->c:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->c:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->d:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->d:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->e:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->e:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->f:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->f:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->g:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->g:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->h:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->h:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->i:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->i:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->j:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->j:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->k:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->k:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->l:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->l:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->m:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->m:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->n:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->n:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->o:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->o:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->p:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->p:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->q:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->q:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->r:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->r:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->s:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->s:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->t:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->t:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->u:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->u:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->v:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->v:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->w:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->w:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->x:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->x:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->y:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->y:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->z:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->z:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->A:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->A:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->B:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->B:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->C:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->C:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->D:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->D:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->E:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->E:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->F:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->F:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->G:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->G:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->H:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->H:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v2

    :cond_23
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->I:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->I:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v2

    :cond_24
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->J:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->J:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->K:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->K:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    return v2

    :cond_26
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->L:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->L:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v2

    :cond_27
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->M:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->M:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v2

    :cond_28
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->N:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->N:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->O:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->O:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v2

    :cond_2a
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->P:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->P:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v2

    :cond_2b
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Q:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Q:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v2

    :cond_2c
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->R:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->R:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->S:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->S:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    :cond_2e
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->T:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->T:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    return v2

    :cond_2f
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->U:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->U:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->V:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->V:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    return v2

    :cond_31
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->W:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->W:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    return v2

    :cond_32
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->X:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->X:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    return v2

    :cond_33
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Y:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Y:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Z:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Z:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    return v2

    :cond_35
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->a0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->a0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    return v2

    :cond_36
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->b0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->b0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    return v2

    :cond_37
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->c0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->c0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->d0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->d0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    return v2

    :cond_39
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->e0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->e0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    return v2

    :cond_3a
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->f0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->f0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v2

    :cond_3b
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->g0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->g0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    return v2

    :cond_3c
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->h0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->h0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    return v2

    :cond_3d
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->i0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->i0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    return v2

    :cond_3e
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->j0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->j0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->k0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->k0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    return v2

    :cond_40
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->l0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->l0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    return v2

    :cond_41
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->m0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->m0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    return v2

    :cond_42
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->n0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->n0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->o0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->o0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    return v2

    :cond_44
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->p0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->p0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    return v2

    :cond_45
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->q0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->q0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v2

    :cond_46
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->r0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->r0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    return v2

    :cond_47
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->s0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->s0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    return v2

    :cond_48
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->t0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->t0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    return v2

    :cond_49
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->u0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->u0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    return v2

    :cond_4a
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->v0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->v0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    return v2

    :cond_4b
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->w0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->w0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    return v2

    :cond_4c
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->x0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->x0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    return v2

    :cond_4d
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->y0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->y0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->z0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->z0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    return v2

    :cond_4f
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->A0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->A0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    return v2

    :cond_50
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->B0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->B0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    return v2

    :cond_51
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->C0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->C0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    return v2

    :cond_52
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->D0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->D0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    return v2

    :cond_53
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->E0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->E0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    return v2

    :cond_54
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->F0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->F0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    return v2

    :cond_55
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->G0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->G0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    return v2

    :cond_56
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->H0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->H0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    return v2

    :cond_57
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->I0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->I0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    return v2

    :cond_58
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->J0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->J0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->K0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->K0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    return v2

    :cond_5a
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->L0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->L0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    return v2

    :cond_5b
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->M0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->M0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    return v2

    :cond_5c
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->N0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->N0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    return v2

    :cond_5d
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->O0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->O0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    return v2

    :cond_5e
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->P0:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->P0:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    return v2

    :cond_5f
    iget-object p0, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Q0:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Q0:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_60

    return v2

    :cond_60
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->a:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->b:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->c:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->d:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->e:Ljava/lang/Boolean;

    if-nez v2, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->f:Ljava/lang/Boolean;

    if-nez v2, :cond_5

    move v2, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->g:Ljava/lang/Boolean;

    if-nez v2, :cond_6

    move v2, v0

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->h:Ljava/lang/Boolean;

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->i:Ljava/lang/Boolean;

    if-nez v2, :cond_8

    move v2, v0

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->j:Ljava/lang/Boolean;

    if-nez v2, :cond_9

    move v2, v0

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->k:Ljava/lang/Boolean;

    if-nez v2, :cond_a

    move v2, v0

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->l:Ljava/lang/Boolean;

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->m:Ljava/lang/Boolean;

    if-nez v2, :cond_c

    move v2, v0

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->n:Ljava/lang/Boolean;

    if-nez v2, :cond_d

    move v2, v0

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->o:Ljava/lang/Boolean;

    if-nez v2, :cond_e

    move v2, v0

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->p:Ljava/lang/Boolean;

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_f

    :cond_f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_f
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->q:Ljava/lang/Boolean;

    if-nez v2, :cond_10

    move v2, v0

    goto :goto_10

    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_10
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->r:Ljava/lang/Boolean;

    if-nez v2, :cond_11

    move v2, v0

    goto :goto_11

    :cond_11
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_11
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->s:Ljava/lang/Boolean;

    if-nez v2, :cond_12

    move v2, v0

    goto :goto_12

    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_12
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->t:Ljava/lang/Boolean;

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_13

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_13
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->u:Ljava/lang/Boolean;

    if-nez v2, :cond_14

    move v2, v0

    goto :goto_14

    :cond_14
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_14
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->v:Ljava/lang/Boolean;

    if-nez v2, :cond_15

    move v2, v0

    goto :goto_15

    :cond_15
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_15
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->w:Ljava/lang/Boolean;

    if-nez v2, :cond_16

    move v2, v0

    goto :goto_16

    :cond_16
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_16
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->x:Ljava/lang/Boolean;

    if-nez v2, :cond_17

    move v2, v0

    goto :goto_17

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->y:Ljava/lang/Boolean;

    if-nez v2, :cond_18

    move v2, v0

    goto :goto_18

    :cond_18
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_18
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->z:Ljava/lang/Boolean;

    if-nez v2, :cond_19

    move v2, v0

    goto :goto_19

    :cond_19
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_19
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->A:Ljava/lang/Boolean;

    if-nez v2, :cond_1a

    move v2, v0

    goto :goto_1a

    :cond_1a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1a
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->B:Ljava/lang/Boolean;

    if-nez v2, :cond_1b

    move v2, v0

    goto :goto_1b

    :cond_1b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1b
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->C:Ljava/lang/Boolean;

    if-nez v2, :cond_1c

    move v2, v0

    goto :goto_1c

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1c
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->D:Ljava/lang/Boolean;

    if-nez v2, :cond_1d

    move v2, v0

    goto :goto_1d

    :cond_1d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1d
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->E:Ljava/lang/Boolean;

    if-nez v2, :cond_1e

    move v2, v0

    goto :goto_1e

    :cond_1e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1e
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->F:Ljava/lang/Boolean;

    if-nez v2, :cond_1f

    move v2, v0

    goto :goto_1f

    :cond_1f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1f
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->G:Ljava/lang/Boolean;

    if-nez v2, :cond_20

    move v2, v0

    goto :goto_20

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_20
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->H:Ljava/lang/Boolean;

    if-nez v2, :cond_21

    move v2, v0

    goto :goto_21

    :cond_21
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_21
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->I:Ljava/lang/Boolean;

    if-nez v2, :cond_22

    move v2, v0

    goto :goto_22

    :cond_22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_22
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->J:Ljava/lang/Boolean;

    if-nez v2, :cond_23

    move v2, v0

    goto :goto_23

    :cond_23
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_23
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->K:Ljava/lang/Boolean;

    if-nez v2, :cond_24

    move v2, v0

    goto :goto_24

    :cond_24
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->L:Ljava/lang/Boolean;

    if-nez v2, :cond_25

    move v2, v0

    goto :goto_25

    :cond_25
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_25
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->M:Ljava/lang/Boolean;

    if-nez v2, :cond_26

    move v2, v0

    goto :goto_26

    :cond_26
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_26
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->N:Ljava/lang/Boolean;

    if-nez v2, :cond_27

    move v2, v0

    goto :goto_27

    :cond_27
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_27
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->O:Ljava/lang/Boolean;

    if-nez v2, :cond_28

    move v2, v0

    goto :goto_28

    :cond_28
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_28
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->P:Ljava/lang/Boolean;

    if-nez v2, :cond_29

    move v2, v0

    goto :goto_29

    :cond_29
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_29
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Q:Ljava/lang/Boolean;

    if-nez v2, :cond_2a

    move v2, v0

    goto :goto_2a

    :cond_2a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2a
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->R:Ljava/lang/Boolean;

    if-nez v2, :cond_2b

    move v2, v0

    goto :goto_2b

    :cond_2b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2b
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->S:Ljava/lang/Boolean;

    if-nez v2, :cond_2c

    move v2, v0

    goto :goto_2c

    :cond_2c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2c
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->T:Ljava/lang/Boolean;

    if-nez v2, :cond_2d

    move v2, v0

    goto :goto_2d

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2d
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->U:Ljava/lang/Boolean;

    if-nez v2, :cond_2e

    move v2, v0

    goto :goto_2e

    :cond_2e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2e
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->V:Ljava/lang/Boolean;

    if-nez v2, :cond_2f

    move v2, v0

    goto :goto_2f

    :cond_2f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2f
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->W:Ljava/lang/Boolean;

    if-nez v2, :cond_30

    move v2, v0

    goto :goto_30

    :cond_30
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_30
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->X:Ljava/lang/Boolean;

    if-nez v2, :cond_31

    move v2, v0

    goto :goto_31

    :cond_31
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Y:Ljava/lang/Boolean;

    if-nez v2, :cond_32

    move v2, v0

    goto :goto_32

    :cond_32
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_32
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Z:Ljava/lang/Boolean;

    if-nez v2, :cond_33

    move v2, v0

    goto :goto_33

    :cond_33
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_33
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->a0:Ljava/lang/Boolean;

    if-nez v2, :cond_34

    move v2, v0

    goto :goto_34

    :cond_34
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_34
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->b0:Ljava/lang/Boolean;

    if-nez v2, :cond_35

    move v2, v0

    goto :goto_35

    :cond_35
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_35
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->c0:Ljava/lang/Boolean;

    if-nez v2, :cond_36

    move v2, v0

    goto :goto_36

    :cond_36
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_36
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->d0:Ljava/lang/Boolean;

    if-nez v2, :cond_37

    move v2, v0

    goto :goto_37

    :cond_37
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_37
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->e0:Ljava/lang/Boolean;

    if-nez v2, :cond_38

    move v2, v0

    goto :goto_38

    :cond_38
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_38
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->f0:Ljava/lang/Boolean;

    if-nez v2, :cond_39

    move v2, v0

    goto :goto_39

    :cond_39
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_39
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->g0:Ljava/lang/Boolean;

    if-nez v2, :cond_3a

    move v2, v0

    goto :goto_3a

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3a
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->h0:Ljava/lang/Boolean;

    if-nez v2, :cond_3b

    move v2, v0

    goto :goto_3b

    :cond_3b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3b
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->i0:Ljava/lang/Boolean;

    if-nez v2, :cond_3c

    move v2, v0

    goto :goto_3c

    :cond_3c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3c
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->j0:Ljava/lang/Boolean;

    if-nez v2, :cond_3d

    move v2, v0

    goto :goto_3d

    :cond_3d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3d
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->k0:Ljava/lang/Boolean;

    if-nez v2, :cond_3e

    move v2, v0

    goto :goto_3e

    :cond_3e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3e
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->l0:Ljava/lang/Boolean;

    if-nez v2, :cond_3f

    move v2, v0

    goto :goto_3f

    :cond_3f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3f
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->m0:Ljava/lang/Boolean;

    if-nez v2, :cond_40

    move v2, v0

    goto :goto_40

    :cond_40
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_40
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->n0:Ljava/lang/Boolean;

    if-nez v2, :cond_41

    move v2, v0

    goto :goto_41

    :cond_41
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_41
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->o0:Ljava/lang/Boolean;

    if-nez v2, :cond_42

    move v2, v0

    goto :goto_42

    :cond_42
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_42
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->p0:Ljava/lang/Boolean;

    if-nez v2, :cond_43

    move v2, v0

    goto :goto_43

    :cond_43
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_43
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->q0:Ljava/lang/Boolean;

    if-nez v2, :cond_44

    move v2, v0

    goto :goto_44

    :cond_44
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_44
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->r0:Ljava/lang/Boolean;

    if-nez v2, :cond_45

    move v2, v0

    goto :goto_45

    :cond_45
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_45
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->s0:Ljava/lang/Boolean;

    if-nez v2, :cond_46

    move v2, v0

    goto :goto_46

    :cond_46
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_46
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->t0:Ljava/lang/Boolean;

    if-nez v2, :cond_47

    move v2, v0

    goto :goto_47

    :cond_47
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_47
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->u0:Ljava/lang/Boolean;

    if-nez v2, :cond_48

    move v2, v0

    goto :goto_48

    :cond_48
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_48
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->v0:Ljava/lang/Boolean;

    if-nez v2, :cond_49

    move v2, v0

    goto :goto_49

    :cond_49
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_49
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->w0:Ljava/lang/Boolean;

    if-nez v2, :cond_4a

    move v2, v0

    goto :goto_4a

    :cond_4a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4a
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->x0:Ljava/lang/Boolean;

    if-nez v2, :cond_4b

    move v2, v0

    goto :goto_4b

    :cond_4b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4b
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->y0:Ljava/lang/Boolean;

    if-nez v2, :cond_4c

    move v2, v0

    goto :goto_4c

    :cond_4c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4c
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->z0:Ljava/lang/Boolean;

    if-nez v2, :cond_4d

    move v2, v0

    goto :goto_4d

    :cond_4d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4d
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->A0:Ljava/lang/Boolean;

    if-nez v2, :cond_4e

    move v2, v0

    goto :goto_4e

    :cond_4e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4e
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->B0:Ljava/lang/Boolean;

    if-nez v2, :cond_4f

    move v2, v0

    goto :goto_4f

    :cond_4f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4f
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->C0:Ljava/lang/Boolean;

    if-nez v2, :cond_50

    move v2, v0

    goto :goto_50

    :cond_50
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_50
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->D0:Ljava/lang/Boolean;

    if-nez v2, :cond_51

    move v2, v0

    goto :goto_51

    :cond_51
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_51
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->E0:Ljava/lang/Boolean;

    if-nez v2, :cond_52

    move v2, v0

    goto :goto_52

    :cond_52
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_52
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->F0:Ljava/lang/Boolean;

    if-nez v2, :cond_53

    move v2, v0

    goto :goto_53

    :cond_53
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_53
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->G0:Ljava/lang/Boolean;

    if-nez v2, :cond_54

    move v2, v0

    goto :goto_54

    :cond_54
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_54
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->H0:Ljava/lang/Boolean;

    if-nez v2, :cond_55

    move v2, v0

    goto :goto_55

    :cond_55
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_55
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->I0:Ljava/lang/Boolean;

    if-nez v2, :cond_56

    move v2, v0

    goto :goto_56

    :cond_56
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_56
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->J0:Ljava/lang/Boolean;

    if-nez v2, :cond_57

    move v2, v0

    goto :goto_57

    :cond_57
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_57
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->K0:Ljava/lang/Boolean;

    if-nez v2, :cond_58

    move v2, v0

    goto :goto_58

    :cond_58
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_58
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->L0:Ljava/lang/Boolean;

    if-nez v2, :cond_59

    move v2, v0

    goto :goto_59

    :cond_59
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_59
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->M0:Ljava/lang/Boolean;

    if-nez v2, :cond_5a

    move v2, v0

    goto :goto_5a

    :cond_5a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5a
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->N0:Ljava/lang/Boolean;

    if-nez v2, :cond_5b

    move v2, v0

    goto :goto_5b

    :cond_5b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5b
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->O0:Ljava/lang/Boolean;

    if-nez v2, :cond_5c

    move v2, v0

    goto :goto_5c

    :cond_5c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5c
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->P0:Ljava/lang/Boolean;

    if-nez v2, :cond_5d

    move v2, v0

    goto :goto_5d

    :cond_5d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5d
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Q0:Ljava/lang/Boolean;

    if-nez p0, :cond_5e

    goto :goto_5e

    :cond_5e
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_5e
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FeaturesConfigDto(isAccessibilityDisableAutoplayEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAccessibilityEnhancedContrastEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAccessibilitySimplifyNavigationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isAccessibilityStatementEnabled="

    const-string v2, ", isAddressAutocompleteEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->c:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->d:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isAddToCartCrossSellEnabled="

    const-string v2, ", isAICompanionEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->e:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->f:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isAICompanionPdpEnabled="

    const-string v2, ", isAICompanionSessionIdEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->g:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->h:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isAppsflyerEnabled="

    const-string v2, ", isAutocompletePostalCodeEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->i:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->j:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isBackInStockEnabled="

    const-string v2, ", isBackInStockLegalConsentEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->k:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->l:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isBackOrderDisclaimerEnabled="

    const-string v2, ", isBackOrderDisclaimerEnhancementEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->m:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->n:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isBatchSdkEnabled="

    const-string v2, ", isBookingMyExperiencesEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->o:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->p:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isCareServicesEnabled="

    const-string v2, ", isCareServicesMigrationEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->q:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->r:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isChinaPrivacyEnabled="

    const-string v2, ", isContactUsCareServiceEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->s:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->t:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isContactUsEnabled="

    const-string v2, ", isDiamondsPdpEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->u:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->v:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isDistantRepairsBillingAddressEnabled="

    const-string v2, ", isDistantRepairsCallEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->w:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->x:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isDistantRepairsCancellationReasonEnabled="

    const-string v2, ", isDistantRepairsEmailEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->y:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->z:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isDistantRepairsEnabled="

    const-string v2, ", isDistantRepairsModifyEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->A:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->B:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isDistantRepairsPaymentMethodsIconsEnabled="

    const-string v2, ", isDistantRepairsShippedFromEhubEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->C:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->D:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isDistantRepairsTutorialEnabled="

    const-string v2, ", isDistantRepairsVideoCallEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->E:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->F:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isDistantRepairsZipCodeEnabled="

    const-string v2, ", isDynamicYieldEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->G:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->H:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isDynatraceSdkEnabled="

    const-string v2, ", isEmailTrackingConsentEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->I:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->J:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isExclusiveOfferEnabled="

    const-string v2, ", isFeedForYouDefaultTabEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->K:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->L:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isFindAStoreEnabled="

    const-string v2, ", isGcmOptOutEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->M:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->N:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isGoogleAnalyticsDisabled="

    const-string v2, ", isGoogleCustomerMatchEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->O:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->P:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isGoogleSignInEnabled="

    const-string v2, ", isHorizonSpeakerEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Q:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->R:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isInboxEnabled="

    const-string v2, ", isKakaoSignInEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->S:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->T:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isKeepAllEnabled="

    const-string v2, ", isLegalNoticeRegisterEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->U:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->V:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isLineSignInEnabled="

    const-string v2, ", isMyCertificatesEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->W:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->X:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isNativeAccountActivationEnabled="

    const-string v2, ", isNativeCartEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Y:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Z:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isNativeLoginEnabled="

    const-string v2, ", isNativeRegisterEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->a0:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->b0:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isNativeRegisterKisaEnabled="

    const-string v2, ", isNativeShareCatalogEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->c0:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->d0:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isNativeShareImmersiveEnabled="

    const-string v2, ", isNativeShareWishlistEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->e0:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->f0:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isNativeThankYouPageFeedbackEnabled="

    const-string v2, ", isNativeThankYouPageRedirectEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->g0:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->h0:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isOnboardingEnabled="

    const-string v2, ", isOnlineStoreAppointmentCidEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->i0:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->j0:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isOnlineStoreAppointmentCreationEnabled="

    const-string v2, ", isOrderExchangeEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->k0:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->l0:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isOrderReturnEnabled="

    const-string v2, ", isOrdersInvoiceEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->m0:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->n0:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isOsaGuestEnabled="

    const-string v2, ", isOsaKisaV2Enabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->o0:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->p0:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isOsaModifyEnabled="

    const-string v2, ", isOsaReasonsEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->q0:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->r0:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isPayByLinkEnabled="

    const-string v2, ", isPdpAGECLawEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->s0:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->t0:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isPerfectLogsEnabled="

    const-string v2, ", isPersonalSelectionsEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->u0:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->v0:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isPlpRevampV3Phase2Enabled="

    const-string v2, ", isPlpV3GridViewEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->w0:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->x0:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isPowerFrontCareServiceEnabled="

    const-string v2, ", isPowerFrontEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->y0:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->z0:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isProfilePhoneNumberEnabled="

    const-string v2, ", isPuertoRicoEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->A0:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->B0:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isQrCodeEnabled="

    const-string v2, ", isRefreshAuthCheckoutEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->C0:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->D0:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isRegistrationAddressStepEnabled="

    const-string v2, ", isSensorDataEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->E0:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->F0:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isSizeGuidePimEnabled="

    const-string v2, ", isSmsConsentEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->G0:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->H0:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isSneakerEnabled="

    const-string v2, ", isSocialSignInDebugEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->I0:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->J0:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isStoreModeEnabled="

    const-string v2, ", isStoreModeV2Enabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->K0:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->L0:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isTingyunSdkEnabled="

    const-string v2, ", isTrunkSpeakerEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->M0:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->N0:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, ", isTwistEnabled="

    const-string v2, ", isYMALEnabled="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->O0:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->P0:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Q0:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

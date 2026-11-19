package com.vuitton.android.data.dto.config.cache;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\bc\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 n2\u00020\u0001:\u0002onB\u008f\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u0012\u0006\u0010\u001a\u001a\u00020\u0002\u0012\u0006\u0010\u001b\u001a\u00020\u0002\u0012\u0006\u0010\u001c\u001a\u00020\u0002\u0012\u0006\u0010\u001d\u001a\u00020\u0002\u0012\u0006\u0010\u001e\u001a\u00020\u0002\u0012\u0006\u0010\u001f\u001a\u00020\u0002\u0012\u0006\u0010 \u001a\u00020\u0002\u0012\u0006\u0010!\u001a\u00020\u0002\u0012\u0006\u0010\"\u001a\u00020\u0002\u0012\u0006\u0010#\u001a\u00020\u0002\u0012\u0006\u0010$\u001a\u00020\u0002\u0012\u0006\u0010%\u001a\u00020\u0002\u0012\u0006\u0010&\u001a\u00020\u0002\u0012\u0006\u0010'\u001a\u00020\u0002\u0012\u0006\u0010(\u001a\u00020\u0002\u0012\u0006\u0010)\u001a\u00020\u0002\u0012\u0006\u0010*\u001a\u00020\u0002\u0012\u0006\u0010+\u001a\u00020\u0002\u0012\u0006\u0010,\u001a\u00020\u0002\u0012\u0006\u0010-\u001a\u00020\u0002\u0012\u0006\u0010.\u001a\u00020\u0002\u0012\u0006\u0010/\u001a\u00020\u0002\u0012\u0006\u00100\u001a\u00020\u0002\u0012\u0006\u00101\u001a\u00020\u0002\u0012\u0006\u00102\u001a\u00020\u0002\u0012\u0006\u00103\u001a\u00020\u0002\u0012\u0006\u00104\u001a\u00020\u0002\u0012\u0006\u00105\u001a\u00020\u0002\u0012\u0006\u00106\u001a\u00020\u0002\u0012\u0006\u00107\u001a\u00020\u0002\u0012\u0006\u00108\u001a\u00020\u0002\u0012\u0006\u00109\u001a\u00020\u0002\u0012\u0006\u0010:\u001a\u00020\u0002\u0012\u0006\u0010;\u001a\u00020\u0002\u0012\u0006\u0010<\u001a\u00020\u0002\u0012\u0006\u0010=\u001a\u00020\u0002\u0012\u0006\u0010>\u001a\u00020\u0002\u0012\u0006\u0010?\u001a\u00020\u0002\u0012\u0006\u0010@\u001a\u00020\u0002\u0012\u0006\u0010A\u001a\u00020\u0002\u0012\u0006\u0010B\u001a\u00020\u0002\u0012\u0006\u0010C\u001a\u00020\u0002\u0012\u0006\u0010D\u001a\u00020\u0002\u0012\u0006\u0010E\u001a\u00020\u0002\u0012\u0006\u0010F\u001a\u00020\u0002\u0012\u0006\u0010G\u001a\u00020\u0002\u0012\u0006\u0010H\u001a\u00020\u0002\u0012\u0006\u0010I\u001a\u00020\u0002\u0012\u0006\u0010J\u001a\u00020\u0002\u0012\u0006\u0010K\u001a\u00020\u0002\u0012\u0006\u0010L\u001a\u00020\u0002\u0012\u0006\u0010M\u001a\u00020\u0002\u0012\u0006\u0010N\u001a\u00020\u0002\u0012\u0006\u0010O\u001a\u00020\u0002\u0012\u0006\u0010P\u001a\u00020\u0002\u0012\u0006\u0010Q\u001a\u00020\u0002\u0012\u0006\u0010R\u001a\u00020\u0002\u0012\u0006\u0010S\u001a\u00020\u0002\u0012\u0006\u0010T\u001a\u00020\u0002\u0012\u0006\u0010U\u001a\u00020\u0002\u0012\u0006\u0010V\u001a\u00020\u0002\u0012\u0006\u0010W\u001a\u00020\u0002\u0012\u0006\u0010X\u001a\u00020\u0002\u0012\u0006\u0010Y\u001a\u00020\u0002\u0012\u0006\u0010Z\u001a\u00020\u0002\u0012\u0006\u0010[\u001a\u00020\u0002\u0012\u0006\u0010\\\u001a\u00020\u0002\u0012\u0006\u0010]\u001a\u00020\u0002\u0012\u0006\u0010^\u001a\u00020\u0002\u0012\u0006\u0010_\u001a\u00020\u0002\u0012\u0006\u0010`\u001a\u00020\u0002\u0012\u0006\u0010a\u001a\u00020\u0002\u0012\u0006\u0010b\u001a\u00020\u0002\u0012\u0006\u0010c\u001a\u00020\u0002¢\u0006\u0004\bd\u0010eB»\u0006\b\u0010\u0012\u0006\u0010g\u001a\u00020f\u0012\u0006\u0010h\u001a\u00020f\u0012\u0006\u0010i\u001a\u00020f\u0012\u0006\u0010j\u001a\u00020f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u0012\u0006\u0010\u001a\u001a\u00020\u0002\u0012\u0006\u0010\u001b\u001a\u00020\u0002\u0012\u0006\u0010\u001c\u001a\u00020\u0002\u0012\u0006\u0010\u001d\u001a\u00020\u0002\u0012\u0006\u0010\u001e\u001a\u00020\u0002\u0012\u0006\u0010\u001f\u001a\u00020\u0002\u0012\u0006\u0010 \u001a\u00020\u0002\u0012\u0006\u0010!\u001a\u00020\u0002\u0012\u0006\u0010\"\u001a\u00020\u0002\u0012\u0006\u0010#\u001a\u00020\u0002\u0012\u0006\u0010$\u001a\u00020\u0002\u0012\u0006\u0010%\u001a\u00020\u0002\u0012\u0006\u0010&\u001a\u00020\u0002\u0012\u0006\u0010'\u001a\u00020\u0002\u0012\u0006\u0010(\u001a\u00020\u0002\u0012\u0006\u0010)\u001a\u00020\u0002\u0012\u0006\u0010*\u001a\u00020\u0002\u0012\u0006\u0010+\u001a\u00020\u0002\u0012\u0006\u0010,\u001a\u00020\u0002\u0012\u0006\u0010-\u001a\u00020\u0002\u0012\u0006\u0010.\u001a\u00020\u0002\u0012\u0006\u0010/\u001a\u00020\u0002\u0012\u0006\u00100\u001a\u00020\u0002\u0012\u0006\u00101\u001a\u00020\u0002\u0012\u0006\u00102\u001a\u00020\u0002\u0012\u0006\u00103\u001a\u00020\u0002\u0012\u0006\u00104\u001a\u00020\u0002\u0012\u0006\u00105\u001a\u00020\u0002\u0012\u0006\u00106\u001a\u00020\u0002\u0012\u0006\u00107\u001a\u00020\u0002\u0012\u0006\u00108\u001a\u00020\u0002\u0012\u0006\u00109\u001a\u00020\u0002\u0012\u0006\u0010:\u001a\u00020\u0002\u0012\u0006\u0010;\u001a\u00020\u0002\u0012\u0006\u0010<\u001a\u00020\u0002\u0012\u0006\u0010=\u001a\u00020\u0002\u0012\u0006\u0010>\u001a\u00020\u0002\u0012\u0006\u0010?\u001a\u00020\u0002\u0012\u0006\u0010@\u001a\u00020\u0002\u0012\u0006\u0010A\u001a\u00020\u0002\u0012\u0006\u0010B\u001a\u00020\u0002\u0012\u0006\u0010C\u001a\u00020\u0002\u0012\u0006\u0010D\u001a\u00020\u0002\u0012\u0006\u0010E\u001a\u00020\u0002\u0012\u0006\u0010F\u001a\u00020\u0002\u0012\u0006\u0010G\u001a\u00020\u0002\u0012\u0006\u0010H\u001a\u00020\u0002\u0012\u0006\u0010I\u001a\u00020\u0002\u0012\u0006\u0010J\u001a\u00020\u0002\u0012\u0006\u0010K\u001a\u00020\u0002\u0012\u0006\u0010L\u001a\u00020\u0002\u0012\u0006\u0010M\u001a\u00020\u0002\u0012\u0006\u0010N\u001a\u00020\u0002\u0012\u0006\u0010O\u001a\u00020\u0002\u0012\u0006\u0010P\u001a\u00020\u0002\u0012\u0006\u0010Q\u001a\u00020\u0002\u0012\u0006\u0010R\u001a\u00020\u0002\u0012\u0006\u0010S\u001a\u00020\u0002\u0012\u0006\u0010T\u001a\u00020\u0002\u0012\u0006\u0010U\u001a\u00020\u0002\u0012\u0006\u0010V\u001a\u00020\u0002\u0012\u0006\u0010W\u001a\u00020\u0002\u0012\u0006\u0010X\u001a\u00020\u0002\u0012\u0006\u0010Y\u001a\u00020\u0002\u0012\u0006\u0010Z\u001a\u00020\u0002\u0012\u0006\u0010[\u001a\u00020\u0002\u0012\u0006\u0010\\\u001a\u00020\u0002\u0012\u0006\u0010]\u001a\u00020\u0002\u0012\u0006\u0010^\u001a\u00020\u0002\u0012\u0006\u0010_\u001a\u00020\u0002\u0012\u0006\u0010`\u001a\u00020\u0002\u0012\u0006\u0010a\u001a\u00020\u0002\u0012\u0006\u0010b\u001a\u00020\u0002\u0012\u0006\u0010c\u001a\u00020\u0002\u0012\b\u0010l\u001a\u0004\u0018\u00010k¢\u0006\u0004\bd\u0010m¨\u0006p"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;", "", "", "isAccessibilityDisableAutoplayEnabled", "isAccessibilityEnhancedContrastEnabled", "isAccessibilitySimplifyNavigationEnabled", "isAccessibilityStatementEnabled", "isAddressAutocompleteEnabled", "isAddToCartCrossSellEnabled", "isAICompanionEnabled", "isAICompanionPdpEnabled", "isAICompanionSessionIdEnabled", "isAppsflyerEnabled", "isAutocompletePostalCodeEnabled", "isBackInStockEnabled", "isBackInStockLegalConsentEnabled", "isBackInStockPreviewModeEnabled", "isBackOrderDisclaimerEnabled", "isBackOrderDisclaimerEnhancementEnabled", "isBatchSdkEnabled", "isBookingMyExperiencesEnabled", "isCareServicesEnabled", "isCareServicesMigrationEnabled", "isCertificatesMockVisionnaireLockedStatusEnabled", "isChinaPrivacyEnabled", "isContactUsCareServiceEnabled", "isContactUsEnabled", "isDiamondsPdpEnabled", "isDistantRepairsBillingAddressEnabled", "isDistantRepairsCallEnabled", "isDistantRepairsCancellationReasonEnabled", "isDistantRepairsEmailEnabled", "isDistantRepairsEnabled", "isDistantRepairsModifyEnabled", "isDistantRepairsPaymentMethodsIconsEnabled", "isDistantRepairsShippedFromEhubEnabled", "isDistantRepairsTutorialEnabled", "isDistantRepairsVideoCallEnabled", "isDistantRepairsZipCodeEnabled", "isDynamicYieldEnabled", "isDynatraceSdkEnabled", "isEmailTrackingConsentEnabled", "isExclusiveOfferEnabled", "isFeedForYouDefaultTabEnabled", "isFindAStoreEnabled", "isGcmOptOutEnabled", "isGoogleAnalyticsEnabled", "isGoogleCustomerMatchEnabled", "isGoogleSignInEnabled", "isHorizonSpeakerEnabled", "isInboxEnabled", "isKakaoSignInEnabled", "isKeepAllEnabled", "isLegalNoticeRegisterEnabled", "isLineSignInEnabled", "isMyCertificatesEnabled", "isNativeAccountActivationEnabled", "isNativeCartEnabled", "isNativeLoginEnabled", "isNativeRegisterEnabled", "isNativeRegisterKisaEnabled", "isNativeShareCatalogEnabled", "isNativeShareImmersiveEnabled", "isNativeShareWishlistEnabled", "isNativeThankYouPageFeedbackEnabled", "isNativeThankYouPageRedirectEnabled", "isOnboardingEnabled", "isOnlineStoreAppointmentCidEnabled", "isOnlineStoreAppointmentCreationEnabled", "isOrderExchangeEnabled", "isOrderReturnEnabled", "isOrdersInvoiceEnabled", "isOsaGuestEnabled", "isOsaKisaEnabled", "isOsaModifyEnabled", "isOsaReasonsEnabled", "isPayByLinkEnabled", "isPdpAGECLawEnabled", "isPerfectLogsEnabled", "isPersonalSelectionsEnabled", "isPlpRevampV3Phase2Enabled", "isPlpV3GridViewEnabled", "isPowerFrontCareServiceEnabled", "isPowerFrontEnabled", "isProfilePhoneNumberEnabled", "isPuertoRicoEnabled", "isQrCodeEnabled", "isRefreshAuthCheckoutEnabled", "isRegistrationAddressStepEnabled", "isSensorDataEnabled", "isSizeGuidePimEnabled", "isSmsConsentEnabled", "isSneakerEnabled", "isSocialSignInDebugEnabled", "isStoreModeEnabled", "isStoreModeV2Enabled", "isTingyunSdkEnabled", "isTrunkSpeakerEnabled", "isTwistEnabled", "isYMALEnabled", "<init>", "(ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ)V", "", "seen0", "seen1", "seen2", "seen3", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IIIIZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class FeaturesConfigCache {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public final boolean A;
    public final boolean A0;
    public final boolean B;
    public final boolean B0;
    public final boolean C;
    public final boolean C0;
    public final boolean D;
    public final boolean D0;
    public final boolean E;
    public final boolean E0;
    public final boolean F;
    public final boolean F0;
    public final boolean G;
    public final boolean G0;
    public final boolean H;
    public final boolean H0;
    public final boolean I;
    public final boolean I0;
    public final boolean J;
    public final boolean J0;
    public final boolean K;
    public final boolean K0;
    public final boolean L;
    public final boolean L0;
    public final boolean M;
    public final boolean M0;
    public final boolean N;
    public final boolean N0;
    public final boolean O;
    public final boolean O0;
    public final boolean P;
    public final boolean P0;
    public final boolean Q;
    public final boolean Q0;
    public final boolean R;
    public final boolean R0;
    public final boolean S;
    public final boolean S0;
    public final boolean T;
    public final boolean U;
    public final boolean V;
    public final boolean W;
    public final boolean X;
    public final boolean Y;
    public final boolean Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f45496a;
    public final boolean a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f45497b;
    public final boolean b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f45498c;
    public final boolean c0;
    public final boolean d;
    public final boolean d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f45499e;
    public final boolean e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f45500f;
    public final boolean f0;
    public final boolean g;
    public final boolean g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f45501h;
    public final boolean h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f45502i;
    public final boolean i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f45503j;
    public final boolean j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f45504k;
    public final boolean k0;
    public final boolean l;
    public final boolean l0;
    public final boolean m;
    public final boolean m0;
    public final boolean n;
    public final boolean n0;
    public final boolean o;
    public final boolean o0;
    public final boolean p;
    public final boolean p0;
    public final boolean q;
    public final boolean q0;
    public final boolean r;
    public final boolean r0;
    public final boolean s;
    public final boolean s0;
    public final boolean t;
    public final boolean t0;
    public final boolean u;
    public final boolean u0;
    public final boolean v;
    public final boolean v0;
    public final boolean w;
    public final boolean w0;
    public final boolean x;
    public final boolean x0;
    public final boolean y;
    public final boolean y0;
    public final boolean z;
    public final boolean z0;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<FeaturesConfigCache> serializer() {
            return FeaturesConfigCache$$serializer.f45505a;
        }
    }

    public /* synthetic */ FeaturesConfigCache(int i2, int i3, int i4, int i5, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, boolean z20, boolean z21, boolean z22, boolean z23, boolean z24, boolean z25, boolean z26, boolean z27, boolean z28, boolean z29, boolean z30, boolean z31, boolean z32, boolean z33, boolean z34, boolean z35, boolean z36, boolean z37, boolean z38, boolean z39, boolean z40, boolean z41, boolean z42, boolean z43, boolean z44, boolean z45, boolean z46, boolean z47, boolean z48, boolean z49, boolean z50, boolean z51, boolean z52, boolean z53, boolean z54, boolean z55, boolean z56, boolean z57, boolean z58, boolean z59, boolean z60, boolean z61, boolean z62, boolean z63, boolean z64, boolean z65, boolean z66, boolean z67, boolean z68, boolean z69, boolean z70, boolean z71, boolean z72, boolean z73, boolean z74, boolean z75, boolean z76, boolean z77, boolean z78, boolean z79, boolean z80, boolean z81, boolean z82, boolean z83, boolean z84, boolean z85, boolean z86, boolean z87, boolean z88, boolean z89, boolean z90, boolean z91, boolean z92, boolean z93, boolean z94, boolean z95, boolean z96, boolean z97, SerializationConstructorMarker serializationConstructorMarker) {
        if ((1 != (i5 & 1)) || (((-1 != i2) | (-1 != i3)) | (-1 != i4))) {
            PluginExceptionsKt.a(new int[]{i2, i3, i4, i5}, new int[]{-1, -1, -1, 1}, FeaturesConfigCache$$serializer.f45505a.getF19838b());
            throw null;
        }
        this.f45496a = z;
        this.f45497b = z2;
        this.f45498c = z3;
        this.d = z4;
        this.f45499e = z5;
        this.f45500f = z6;
        this.g = z7;
        this.f45501h = z8;
        this.f45502i = z9;
        this.f45503j = z10;
        this.f45504k = z11;
        this.l = z12;
        this.m = z13;
        this.n = z14;
        this.o = z15;
        this.p = z16;
        this.q = z17;
        this.r = z18;
        this.s = z19;
        this.t = z20;
        this.u = z21;
        this.v = z22;
        this.w = z23;
        this.x = z24;
        this.y = z25;
        this.z = z26;
        this.A = z27;
        this.B = z28;
        this.C = z29;
        this.D = z30;
        this.E = z31;
        this.F = z32;
        this.G = z33;
        this.H = z34;
        this.I = z35;
        this.J = z36;
        this.K = z37;
        this.L = z38;
        this.M = z39;
        this.N = z40;
        this.O = z41;
        this.P = z42;
        this.Q = z43;
        this.R = z44;
        this.S = z45;
        this.T = z46;
        this.U = z47;
        this.V = z48;
        this.W = z49;
        this.X = z50;
        this.Y = z51;
        this.Z = z52;
        this.a0 = z53;
        this.b0 = z54;
        this.c0 = z55;
        this.d0 = z56;
        this.e0 = z57;
        this.f0 = z58;
        this.g0 = z59;
        this.h0 = z60;
        this.i0 = z61;
        this.j0 = z62;
        this.k0 = z63;
        this.l0 = z64;
        this.m0 = z65;
        this.n0 = z66;
        this.o0 = z67;
        this.p0 = z68;
        this.q0 = z69;
        this.r0 = z70;
        this.s0 = z71;
        this.t0 = z72;
        this.u0 = z73;
        this.v0 = z74;
        this.w0 = z75;
        this.x0 = z76;
        this.y0 = z77;
        this.z0 = z78;
        this.A0 = z79;
        this.B0 = z80;
        this.C0 = z81;
        this.D0 = z82;
        this.E0 = z83;
        this.F0 = z84;
        this.G0 = z85;
        this.H0 = z86;
        this.I0 = z87;
        this.J0 = z88;
        this.K0 = z89;
        this.L0 = z90;
        this.M0 = z91;
        this.N0 = z92;
        this.O0 = z93;
        this.P0 = z94;
        this.Q0 = z95;
        this.R0 = z96;
        this.S0 = z97;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FeaturesConfigCache)) {
            return false;
        }
        FeaturesConfigCache featuresConfigCache = (FeaturesConfigCache) obj;
        return this.f45496a == featuresConfigCache.f45496a && this.f45497b == featuresConfigCache.f45497b && this.f45498c == featuresConfigCache.f45498c && this.d == featuresConfigCache.d && this.f45499e == featuresConfigCache.f45499e && this.f45500f == featuresConfigCache.f45500f && this.g == featuresConfigCache.g && this.f45501h == featuresConfigCache.f45501h && this.f45502i == featuresConfigCache.f45502i && this.f45503j == featuresConfigCache.f45503j && this.f45504k == featuresConfigCache.f45504k && this.l == featuresConfigCache.l && this.m == featuresConfigCache.m && this.n == featuresConfigCache.n && this.o == featuresConfigCache.o && this.p == featuresConfigCache.p && this.q == featuresConfigCache.q && this.r == featuresConfigCache.r && this.s == featuresConfigCache.s && this.t == featuresConfigCache.t && this.u == featuresConfigCache.u && this.v == featuresConfigCache.v && this.w == featuresConfigCache.w && this.x == featuresConfigCache.x && this.y == featuresConfigCache.y && this.z == featuresConfigCache.z && this.A == featuresConfigCache.A && this.B == featuresConfigCache.B && this.C == featuresConfigCache.C && this.D == featuresConfigCache.D && this.E == featuresConfigCache.E && this.F == featuresConfigCache.F && this.G == featuresConfigCache.G && this.H == featuresConfigCache.H && this.I == featuresConfigCache.I && this.J == featuresConfigCache.J && this.K == featuresConfigCache.K && this.L == featuresConfigCache.L && this.M == featuresConfigCache.M && this.N == featuresConfigCache.N && this.O == featuresConfigCache.O && this.P == featuresConfigCache.P && this.Q == featuresConfigCache.Q && this.R == featuresConfigCache.R && this.S == featuresConfigCache.S && this.T == featuresConfigCache.T && this.U == featuresConfigCache.U && this.V == featuresConfigCache.V && this.W == featuresConfigCache.W && this.X == featuresConfigCache.X && this.Y == featuresConfigCache.Y && this.Z == featuresConfigCache.Z && this.a0 == featuresConfigCache.a0 && this.b0 == featuresConfigCache.b0 && this.c0 == featuresConfigCache.c0 && this.d0 == featuresConfigCache.d0 && this.e0 == featuresConfigCache.e0 && this.f0 == featuresConfigCache.f0 && this.g0 == featuresConfigCache.g0 && this.h0 == featuresConfigCache.h0 && this.i0 == featuresConfigCache.i0 && this.j0 == featuresConfigCache.j0 && this.k0 == featuresConfigCache.k0 && this.l0 == featuresConfigCache.l0 && this.m0 == featuresConfigCache.m0 && this.n0 == featuresConfigCache.n0 && this.o0 == featuresConfigCache.o0 && this.p0 == featuresConfigCache.p0 && this.q0 == featuresConfigCache.q0 && this.r0 == featuresConfigCache.r0 && this.s0 == featuresConfigCache.s0 && this.t0 == featuresConfigCache.t0 && this.u0 == featuresConfigCache.u0 && this.v0 == featuresConfigCache.v0 && this.w0 == featuresConfigCache.w0 && this.x0 == featuresConfigCache.x0 && this.y0 == featuresConfigCache.y0 && this.z0 == featuresConfigCache.z0 && this.A0 == featuresConfigCache.A0 && this.B0 == featuresConfigCache.B0 && this.C0 == featuresConfigCache.C0 && this.D0 == featuresConfigCache.D0 && this.E0 == featuresConfigCache.E0 && this.F0 == featuresConfigCache.F0 && this.G0 == featuresConfigCache.G0 && this.H0 == featuresConfigCache.H0 && this.I0 == featuresConfigCache.I0 && this.J0 == featuresConfigCache.J0 && this.K0 == featuresConfigCache.K0 && this.L0 == featuresConfigCache.L0 && this.M0 == featuresConfigCache.M0 && this.N0 == featuresConfigCache.N0 && this.O0 == featuresConfigCache.O0 && this.P0 == featuresConfigCache.P0 && this.Q0 == featuresConfigCache.Q0 && this.R0 == featuresConfigCache.R0 && this.S0 == featuresConfigCache.S0;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.S0) + o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(Boolean.hashCode(this.f45496a) * 31, 31, this.f45497b), 31, this.f45498c), 31, this.d), 31, this.f45499e), 31, this.f45500f), 31, this.g), 31, this.f45501h), 31, this.f45502i), 31, this.f45503j), 31, this.f45504k), 31, this.l), 31, this.m), 31, this.n), 31, this.o), 31, this.p), 31, this.q), 31, this.r), 31, this.s), 31, this.t), 31, this.u), 31, this.v), 31, this.w), 31, this.x), 31, this.y), 31, this.z), 31, this.A), 31, this.B), 31, this.C), 31, this.D), 31, this.E), 31, this.F), 31, this.G), 31, this.H), 31, this.I), 31, this.J), 31, this.K), 31, this.L), 31, this.M), 31, this.N), 31, this.O), 31, this.P), 31, this.Q), 31, this.R), 31, this.S), 31, this.T), 31, this.U), 31, this.V), 31, this.W), 31, this.X), 31, this.Y), 31, this.Z), 31, this.a0), 31, this.b0), 31, this.c0), 31, this.d0), 31, this.e0), 31, this.f0), 31, this.g0), 31, this.h0), 31, this.i0), 31, this.j0), 31, this.k0), 31, this.l0), 31, this.m0), 31, this.n0), 31, this.o0), 31, this.p0), 31, this.q0), 31, this.r0), 31, this.s0), 31, this.t0), 31, this.u0), 31, this.v0), 31, this.w0), 31, this.x0), 31, this.y0), 31, this.z0), 31, this.A0), 31, this.B0), 31, this.C0), 31, this.D0), 31, this.E0), 31, this.F0), 31, this.G0), 31, this.H0), 31, this.I0), 31, this.J0), 31, this.K0), 31, this.L0), 31, this.M0), 31, this.N0), 31, this.O0), 31, this.P0), 31, this.Q0), 31, this.R0);
    }

    public final String toString() {
        StringBuilder sbM = cj.m("FeaturesConfigCache(isAccessibilityDisableAutoplayEnabled=", ", isAccessibilityEnhancedContrastEnabled=", ", isAccessibilitySimplifyNavigationEnabled=", this.f45496a, this.f45497b);
        fc.y(sbM, this.f45498c, ", isAccessibilityStatementEnabled=", this.d, ", isAddressAutocompleteEnabled=");
        fc.y(sbM, this.f45499e, ", isAddToCartCrossSellEnabled=", this.f45500f, ", isAICompanionEnabled=");
        fc.y(sbM, this.g, ", isAICompanionPdpEnabled=", this.f45501h, ", isAICompanionSessionIdEnabled=");
        fc.y(sbM, this.f45502i, ", isAppsflyerEnabled=", this.f45503j, ", isAutocompletePostalCodeEnabled=");
        fc.y(sbM, this.f45504k, ", isBackInStockEnabled=", this.l, ", isBackInStockLegalConsentEnabled=");
        fc.y(sbM, this.m, ", isBackInStockPreviewModeEnabled=", this.n, ", isBackOrderDisclaimerEnabled=");
        fc.y(sbM, this.o, ", isBackOrderDisclaimerEnhancementEnabled=", this.p, ", isBatchSdkEnabled=");
        fc.y(sbM, this.q, ", isBookingMyExperiencesEnabled=", this.r, ", isCareServicesEnabled=");
        fc.y(sbM, this.s, ", isCareServicesMigrationEnabled=", this.t, ", isCertificatesMockVisionnaireLockedStatusEnabled=");
        fc.y(sbM, this.u, ", isChinaPrivacyEnabled=", this.v, ", isContactUsCareServiceEnabled=");
        fc.y(sbM, this.w, ", isContactUsEnabled=", this.x, ", isDiamondsPdpEnabled=");
        fc.y(sbM, this.y, ", isDistantRepairsBillingAddressEnabled=", this.z, ", isDistantRepairsCallEnabled=");
        fc.y(sbM, this.A, ", isDistantRepairsCancellationReasonEnabled=", this.B, ", isDistantRepairsEmailEnabled=");
        fc.y(sbM, this.C, ", isDistantRepairsEnabled=", this.D, ", isDistantRepairsModifyEnabled=");
        fc.y(sbM, this.E, ", isDistantRepairsPaymentMethodsIconsEnabled=", this.F, ", isDistantRepairsShippedFromEhubEnabled=");
        fc.y(sbM, this.G, ", isDistantRepairsTutorialEnabled=", this.H, ", isDistantRepairsVideoCallEnabled=");
        fc.y(sbM, this.I, ", isDistantRepairsZipCodeEnabled=", this.J, ", isDynamicYieldEnabled=");
        fc.y(sbM, this.K, ", isDynatraceSdkEnabled=", this.L, ", isEmailTrackingConsentEnabled=");
        fc.y(sbM, this.M, ", isExclusiveOfferEnabled=", this.N, ", isFeedForYouDefaultTabEnabled=");
        fc.y(sbM, this.O, ", isFindAStoreEnabled=", this.P, ", isGcmOptOutEnabled=");
        fc.y(sbM, this.Q, ", isGoogleAnalyticsEnabled=", this.R, ", isGoogleCustomerMatchEnabled=");
        fc.y(sbM, this.S, ", isGoogleSignInEnabled=", this.T, ", isHorizonSpeakerEnabled=");
        fc.y(sbM, this.U, ", isInboxEnabled=", this.V, ", isKakaoSignInEnabled=");
        fc.y(sbM, this.W, ", isKeepAllEnabled=", this.X, ", isLegalNoticeRegisterEnabled=");
        fc.y(sbM, this.Y, ", isLineSignInEnabled=", this.Z, ", isMyCertificatesEnabled=");
        fc.y(sbM, this.a0, ", isNativeAccountActivationEnabled=", this.b0, ", isNativeCartEnabled=");
        fc.y(sbM, this.c0, ", isNativeLoginEnabled=", this.d0, ", isNativeRegisterEnabled=");
        fc.y(sbM, this.e0, ", isNativeRegisterKisaEnabled=", this.f0, ", isNativeShareCatalogEnabled=");
        fc.y(sbM, this.g0, ", isNativeShareImmersiveEnabled=", this.h0, ", isNativeShareWishlistEnabled=");
        fc.y(sbM, this.i0, ", isNativeThankYouPageFeedbackEnabled=", this.j0, ", isNativeThankYouPageRedirectEnabled=");
        fc.y(sbM, this.k0, ", isOnboardingEnabled=", this.l0, ", isOnlineStoreAppointmentCidEnabled=");
        fc.y(sbM, this.m0, ", isOnlineStoreAppointmentCreationEnabled=", this.n0, ", isOrderExchangeEnabled=");
        fc.y(sbM, this.o0, ", isOrderReturnEnabled=", this.p0, ", isOrdersInvoiceEnabled=");
        fc.y(sbM, this.q0, ", isOsaGuestEnabled=", this.r0, ", isOsaKisaEnabled=");
        fc.y(sbM, this.s0, ", isOsaModifyEnabled=", this.t0, ", isOsaReasonsEnabled=");
        fc.y(sbM, this.u0, ", isPayByLinkEnabled=", this.v0, ", isPdpAGECLawEnabled=");
        fc.y(sbM, this.w0, ", isPerfectLogsEnabled=", this.x0, ", isPersonalSelectionsEnabled=");
        fc.y(sbM, this.y0, ", isPlpRevampV3Phase2Enabled=", this.z0, ", isPlpV3GridViewEnabled=");
        fc.y(sbM, this.A0, ", isPowerFrontCareServiceEnabled=", this.B0, ", isPowerFrontEnabled=");
        fc.y(sbM, this.C0, ", isProfilePhoneNumberEnabled=", this.D0, ", isPuertoRicoEnabled=");
        fc.y(sbM, this.E0, ", isQrCodeEnabled=", this.F0, ", isRefreshAuthCheckoutEnabled=");
        fc.y(sbM, this.G0, ", isRegistrationAddressStepEnabled=", this.H0, ", isSensorDataEnabled=");
        fc.y(sbM, this.I0, ", isSizeGuidePimEnabled=", this.J0, ", isSmsConsentEnabled=");
        fc.y(sbM, this.K0, ", isSneakerEnabled=", this.L0, ", isSocialSignInDebugEnabled=");
        fc.y(sbM, this.M0, ", isStoreModeEnabled=", this.N0, ", isStoreModeV2Enabled=");
        fc.y(sbM, this.O0, ", isTingyunSdkEnabled=", this.P0, ", isTrunkSpeakerEnabled=");
        fc.y(sbM, this.Q0, ", isTwistEnabled=", this.R0, ", isYMALEnabled=");
        return a.p(sbM, this.S0, ")");
    }

    public FeaturesConfigCache(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, boolean z20, boolean z21, boolean z22, boolean z23, boolean z24, boolean z25, boolean z26, boolean z27, boolean z28, boolean z29, boolean z30, boolean z31, boolean z32, boolean z33, boolean z34, boolean z35, boolean z36, boolean z37, boolean z38, boolean z39, boolean z40, boolean z41, boolean z42, boolean z43, boolean z44, boolean z45, boolean z46, boolean z47, boolean z48, boolean z49, boolean z50, boolean z51, boolean z52, boolean z53, boolean z54, boolean z55, boolean z56, boolean z57, boolean z58, boolean z59, boolean z60, boolean z61, boolean z62, boolean z63, boolean z64, boolean z65, boolean z66, boolean z67, boolean z68, boolean z69, boolean z70, boolean z71, boolean z72, boolean z73, boolean z74, boolean z75, boolean z76, boolean z77, boolean z78, boolean z79, boolean z80, boolean z81, boolean z82, boolean z83, boolean z84, boolean z85, boolean z86, boolean z87, boolean z88, boolean z89, boolean z90, boolean z91, boolean z92, boolean z93, boolean z94, boolean z95, boolean z96, boolean z97) {
        this.f45496a = z;
        this.f45497b = z2;
        this.f45498c = z3;
        this.d = z4;
        this.f45499e = z5;
        this.f45500f = z6;
        this.g = z7;
        this.f45501h = z8;
        this.f45502i = z9;
        this.f45503j = z10;
        this.f45504k = z11;
        this.l = z12;
        this.m = z13;
        this.n = z14;
        this.o = z15;
        this.p = z16;
        this.q = z17;
        this.r = z18;
        this.s = z19;
        this.t = z20;
        this.u = z21;
        this.v = z22;
        this.w = z23;
        this.x = z24;
        this.y = z25;
        this.z = z26;
        this.A = z27;
        this.B = z28;
        this.C = z29;
        this.D = z30;
        this.E = z31;
        this.F = z32;
        this.G = z33;
        this.H = z34;
        this.I = z35;
        this.J = z36;
        this.K = z37;
        this.L = z38;
        this.M = z39;
        this.N = z40;
        this.O = z41;
        this.P = z42;
        this.Q = z43;
        this.R = z44;
        this.S = z45;
        this.T = z46;
        this.U = z47;
        this.V = z48;
        this.W = z49;
        this.X = z50;
        this.Y = z51;
        this.Z = z52;
        this.a0 = z53;
        this.b0 = z54;
        this.c0 = z55;
        this.d0 = z56;
        this.e0 = z57;
        this.f0 = z58;
        this.g0 = z59;
        this.h0 = z60;
        this.i0 = z61;
        this.j0 = z62;
        this.k0 = z63;
        this.l0 = z64;
        this.m0 = z65;
        this.n0 = z66;
        this.o0 = z67;
        this.p0 = z68;
        this.q0 = z69;
        this.r0 = z70;
        this.s0 = z71;
        this.t0 = z72;
        this.u0 = z73;
        this.v0 = z74;
        this.w0 = z75;
        this.x0 = z76;
        this.y0 = z77;
        this.z0 = z78;
        this.A0 = z79;
        this.B0 = z80;
        this.C0 = z81;
        this.D0 = z82;
        this.E0 = z83;
        this.F0 = z84;
        this.G0 = z85;
        this.H0 = z86;
        this.I0 = z87;
        this.J0 = z88;
        this.K0 = z89;
        this.L0 = z90;
        this.M0 = z91;
        this.N0 = z92;
        this.O0 = z93;
        this.P0 = z94;
        this.Q0 = z95;
        this.R0 = z96;
        this.S0 = z97;
    }
}

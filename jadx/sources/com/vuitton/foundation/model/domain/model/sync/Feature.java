package com.vuitton.foundation.model.domain.model.sync;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.ew;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.foundation.model.domain.model.sync.Feature[], still in use, count: 1, list:
  (r0v1 com.vuitton.foundation.model.domain.model.sync.Feature[]) from 0x080e: INVOKE (r0v1 com.vuitton.foundation.model.domain.model.sync.Feature[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\bl\b\u0087\u0081\u0002\u0018\u0000 \u00112\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006R\u0017\u0010\n\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\n\u0010\fR\u0017\u0010\r\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000b\u001a\u0004\b\u000e\u0010\fR\u0017\u0010\u000f\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u000b\u001a\u0004\b\u0010\u0010\fj\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7j\u0002\b8j\u0002\b9j\u0002\b:j\u0002\b;j\u0002\b<j\u0002\b=j\u0002\b>j\u0002\b?j\u0002\b@j\u0002\bAj\u0002\bBj\u0002\bCj\u0002\bDj\u0002\bEj\u0002\bFj\u0002\bGj\u0002\bHj\u0002\bIj\u0002\bJj\u0002\bKj\u0002\bLj\u0002\bMj\u0002\bNj\u0002\bOj\u0002\bPj\u0002\bQj\u0002\bRj\u0002\bSj\u0002\bTj\u0002\bUj\u0002\bVj\u0002\bWj\u0002\bXj\u0002\bYj\u0002\bZj\u0002\b[j\u0002\b\\j\u0002\b]j\u0002\b^j\u0002\b_j\u0002\b`j\u0002\baj\u0002\bbj\u0002\bcj\u0002\bdj\u0002\bej\u0002\bfj\u0002\bgj\u0002\bhj\u0002\bij\u0002\bjj\u0002\bkj\u0002\blj\u0002\bmj\u0002\bnj\u0002\boj\u0002\bpj\u0002\bqj\u0002\brj\u0002\bsj\u0002\bt¨\u0006u"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/sync/Feature;", "", "", ConfigurationName.KEY, "Ljava/lang/String;", NBSSpanMetricUnit.Bit, "()Ljava/lang/String;", "description", "getDescription", "", "isOverrideable", "Z", "()Z", "requiresRestart", "getRequiresRestart", "isPreprodOnly", "c", "Companion", "ACCESSIBILITY_DISABLE_AUTOPLAY", "ACCESSIBILITY_ENHANCED_CONTRAST", "ACCESSIBILITY_SIMPLIFY_NAVIGATION", "ACCESSIBILITY_STATEMENT", "ADDRESS_AUTO_COMPLETE", "ADD_TO_CART_CROSS_SELL", "AGEC_LAW", "AI_COMPANION", "AI_COMPANION_PDP", "AI_COMPANION_SESSION_ID_ENABLED", "APPSFLYER", "AUTOCOMPLETE_POSTAL_CODE", "BACK_IN_STOCK", "BACK_IN_STOCK_LEGAL_CONSENT", "BACK_IN_STOCK_PREVIEW_MODE", "BACK_ORDER_DISCLAIMER", "BACK_ORDER_DISCLAIMER_ENHANCEMENT", "BATCH_SDK", "BOOKING_MY_EXPERIENCES", "CARE_SERVICES_MIGRATION", "CERTIFICATES_VISIONNAIRE_LOCKED_STATUS", "CHINA_PRIVACY", "CLIENT_QR_CODE", "CONTACT_US", "CONTACT_US_CARE_SERVICE", "DIAMONDS_PDP", "DISTANT_REPAIRS", "DISTANT_REPAIRS_BILLING_ADDRESS", "DISTANT_REPAIRS_CALL", "DISTANT_REPAIRS_CANCELLATION_REASON", "DISTANT_REPAIRS_EMAIL", "DISTANT_REPAIRS_MODIFY", "DISTANT_REPAIRS_PAYMENT_METHODS_ICONS", "DISTANT_REPAIRS_SHIPPED_FROM_EHUB", "DISTANT_REPAIRS_TUTORIAL", "DISTANT_REPAIRS_VIDEO_CALL", "DISTANT_REPAIRS_ZIP_CODE", "DYNAMIC_YIELD", "DYNATRACE_SDK", "EMAIL_TRACKING_CONSENT", "EXCLUSIVE_OFFER", "FEED_FOR_YOU_DEFAULT_TAB", "FEED_REVAMP_V2", "FIND_A_STORE", "GCM_OPT_OUT", "GOOGLE_ANALYTICS", "GOOGLE_CUSTOMER_MATCH", "GOOGLE_SIGN_IN", "HORIZON_SPEAKER", "INBOX", "KAKAO_SIGN_IN", "KEEP_ALL", "LEGAL_NOTICE_REGISTER", "LINE_SIGN_IN", "MY_CARE_SERVICES", "MY_CERTIFICATES", "NATIVE_ACCOUNT_ACTIVATION", "NATIVE_CART", "NATIVE_LOGIN", "NATIVE_REGISTER", "NATIVE_REGISTER_KISA", "NATIVE_SHARE_CATALOG", "NATIVE_SHARE_IMMERSIVE", "NATIVE_SHARE_WISHLIST", "NATIVE_THANK_YOU_PAGE_FEEDBACK", "NATIVE_THANK_YOU_PAGE_REDIRECT", "ONBOARDING", "ONBOARDING_FORCED", "ORDERS_INVOICE", "ORDER_EXCHANGE", "ORDER_RETURN", "OSA_CID", "OSA_CREATE", "OSA_GUEST", "OSA_KISA_V2", "OSA_MODIFY", "OSA_REASONS", "PAY_BY_LINK", "PERFECT_LOGS", "PERSONAL_SELECTIONS", "PLP_REVAMP_V3_PHASE2", "PLP_V3_GRID_VIEW", "POWERFRONT", "POWERFRONT_CARE_SERVICE", "PROFILE_PHONE_NUMBER", "PUERTO_RICO", "REFRESH_AUTH_CHECKOUT", "REGISTRATION_ADDRESS_STEP", "SENSORS_DATA_ENABLED_STATUS", "SIZE_GUIDE_PIM_ANDROID", "SMS_CONSENT", "SNEAKERS", "SOCIAL_SIGN_IN_DEBUG", "STORE_MODE", "STORE_MODE_V2", "TINGYUN_SDK", "TRUNK_SPEAKER", "TWIST", "YMAL", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final class Feature {
    ACCESSIBILITY_DISABLE_AUTOPLAY("accessibility_disable_autoplay_android", "Accessibility - Disable autoplay", false, 28),
    ACCESSIBILITY_ENHANCED_CONTRAST("accessibility_enhanced_contrast_android", "Accessibility - Enhanced contrast", false, 28),
    ACCESSIBILITY_SIMPLIFY_NAVIGATION("accessibility_simplify_navigation_android", "Accessibility - Simplify navigation", false, 28),
    ACCESSIBILITY_STATEMENT("accessibility_statement_android", "Accessibility - Statement article", false, 28),
    ADDRESS_AUTO_COMPLETE("address_auto_complete_android", "Address auto completion", false, 28),
    ADD_TO_CART_CROSS_SELL("add_to_cart_cross_sell_android", "Cross-sell products in Add To Cart bottom sheet", false, 28),
    AGEC_LAW("pdp_agec_law_android", "AGEC Law", false, 28),
    AI_COMPANION("ai_companion_android", "AI Companion", true, 20),
    AI_COMPANION_PDP("ai_companion_pdp_android", "AI Companion PDP", false, 28),
    AI_COMPANION_SESSION_ID_ENABLED("ai_companion_session_id_android", "AI Companion - display session Id", false, 4),
    APPSFLYER("appsflyer_android", "AppsFlyer", false, 28),
    AUTOCOMPLETE_POSTAL_CODE("autocomplete_postalcode_android", "Autocomplete postal code", false, 28),
    BACK_IN_STOCK("back_in_stock", "Back in stock", false, 28),
    BACK_IN_STOCK_LEGAL_CONSENT("back_in_stock_legal_consent_android", "Back In Stock legal consent", false, 28),
    BACK_IN_STOCK_PREVIEW_MODE("back_in_stock_preview_mode", "Back In Stock Preview", false, 12),
    BACK_ORDER_DISCLAIMER("back_order_disclaimer", "Back order disclaimer", false, 28),
    BACK_ORDER_DISCLAIMER_ENHANCEMENT("dynamic_back_order_enhancement", "Back order disclaimer enhancement", false, 28),
    BATCH_SDK("batch_notifications_android_release", "Batch SDK", false, 28),
    BOOKING_MY_EXPERIENCES("booking_my_experiences_android", "Booking - My Experiences", false, 12),
    CARE_SERVICES_MIGRATION("care_services_migration_android", "Care Services BFF Migration", false, 28),
    CERTIFICATES_VISIONNAIRE_LOCKED_STATUS("certificates_mock_visionnaire_locked_status_android", "Certificates - Mock Visionnaire locked status", false, 12),
    CHINA_PRIVACY("cn_privacy", "CN Privacy Checkbox", false, 28),
    CLIENT_QR_CODE("client_qr_code_android", "Force display of QRCode in MyLv", false, 28),
    CONTACT_US("contact_us_android", "Contact methods", false, 28),
    CONTACT_US_CARE_SERVICE("contact_us_care_service_android", "Contact Us - Care Services", false, 28),
    DIAMONDS_PDP("diamonds_pdp_android", "Diamond PDP", false, 28),
    DISTANT_REPAIRS("distant_repairs_Android", "Distant Repairs", false, 28),
    DISTANT_REPAIRS_BILLING_ADDRESS("distant_repairs_billing_address_android", "Distant Repairs - Billing Address", false, 28),
    DISTANT_REPAIRS_CALL("distant_repairs_enable_call_android", "Distant Repairs Call", false, 28),
    DISTANT_REPAIRS_CANCELLATION_REASON("distant_repairs_cancellation_reason_android", "Distant Repairs cancellation reason", false, 28),
    DISTANT_REPAIRS_EMAIL("distant_repairs_enable_email_android", "Distant Repairs Email", false, 28),
    DISTANT_REPAIRS_MODIFY("distant_repairs_modify_android", "Distant Repairs Modify appointment", false, 12),
    DISTANT_REPAIRS_PAYMENT_METHODS_ICONS("distant_repairs_payment_methods_icons_android", "Distant Repairs Payment Methods Icons", false, 28),
    DISTANT_REPAIRS_SHIPPED_FROM_EHUB("distant_repairs_shipped_from_ehub_android", "Distant Repairs Shipped From Ehub", false, 28),
    DISTANT_REPAIRS_TUTORIAL("distant_repairs_webview_tuto_android", "Distant Repairs Tutorial", false, 28),
    DISTANT_REPAIRS_VIDEO_CALL("distant_repairs_enable_video_call_android", "Distant Repairs Video Call", false, 28),
    DISTANT_REPAIRS_ZIP_CODE("distant_repairs_zipcode_android", "Distant Repairs - Zipcode in contact form", false, 28),
    DYNAMIC_YIELD("dynamic_yield_android", "Dynamic Yield", false, 28),
    DYNATRACE_SDK("dynatrace_sdk_android", "Dynatrace", false, 28),
    EMAIL_TRACKING_CONSENT("email_tracking_consent_android", "Email tracking consent (CNIL)", false, 28),
    EXCLUSIVE_OFFER("exclusive_offer_android", "Exclusive offer", false, 28),
    FEED_FOR_YOU_DEFAULT_TAB("feed_foryou_default_tab_android", "Feed default tab : For You", false, 28),
    FEED_REVAMP_V2("feed_revamp_V2_android", "Feed revamp V2", true, 20),
    FIND_A_STORE("find_a_store_android", "Find a store", false, 28),
    GCM_OPT_OUT("gcm_opt_out_android", "GCM Opt Out", false, 28),
    GOOGLE_ANALYTICS("googleanalytics_disabled_android", "Google Analytics", true, 20),
    GOOGLE_CUSTOMER_MATCH("google_customer_match_android", "Google Customer Match (GCM)", false, 28),
    GOOGLE_SIGN_IN("google_sign_in_android", "Google Sign-In", false, 28),
    HORIZON_SPEAKER("lvconnect_horizon_speaker", "Horizon Speaker", false, 28),
    INBOX("inbox_android", "Inbox notification", false, 28),
    KAKAO_SIGN_IN("kakao_sign_in_android", "Kakao Sign-In", false, 28),
    KEEP_ALL("light_up_keepall_android", "Keepall", false, 28),
    LEGAL_NOTICE_REGISTER("legal_notice_register_android", "Register Legal notice", false, 28),
    LINE_SIGN_IN("line_sign_in_android", "LINE Sign-In", false, 28),
    MY_CARE_SERVICES("my_care_service_android", "Repairs", false, 28),
    MY_CERTIFICATES("diamonds_my_certificates_android", "Diamonds - My Certificates", false, 28),
    NATIVE_ACCOUNT_ACTIVATION("native_account_activation_android", "Native Account Activation", false, 12),
    NATIVE_CART("native_cart_android", "Native Cart", false, 28),
    NATIVE_LOGIN("native_login_android", "Native Login", false, 28),
    NATIVE_REGISTER("native_register_android", "Native Register", false, 28),
    NATIVE_REGISTER_KISA("native_register_kisa_android", "Native Register KISA", false, 28),
    NATIVE_SHARE_CATALOG("native_share_catalog_android", "Native Share Catalog", false, 12),
    NATIVE_SHARE_IMMERSIVE("native_share_immersive_android", "Native Share Immersive", false, 12),
    NATIVE_SHARE_WISHLIST("native_share_wishlist_android", "Activate wishlist native share", false, 28),
    NATIVE_THANK_YOU_PAGE_FEEDBACK("native_thank_you_page_feedback_android", "Native Thank You Page Feedback", false, 28),
    NATIVE_THANK_YOU_PAGE_REDIRECT("native_thank_you_page_redirect_android", "Native Thank You Page Redirect", false, 28),
    ONBOARDING("onboarding_android", "Enable onboarding", false, 28),
    ONBOARDING_FORCED("onboarding_forced_android", "Force display of onboarding", false, 28),
    ORDERS_INVOICE("orders_invoice_android", "Display invoice for orders", false, 28),
    ORDER_EXCHANGE("order_exchange_android", "Activate Exchange Order", false, 28),
    ORDER_RETURN("order_return_android", "Activate Return Order", false, 28),
    OSA_CID("osa_cid_android", "Activate OSA CId", false, 28),
    OSA_CREATE("store_appointment_android", "Online Store Appointment (OSA)", false, 28),
    OSA_GUEST("osa_guest_android", "Activate guest OSA", false, 28),
    OSA_KISA_V2("osa_kisa_v2_android", "Activate KISA V2 OSA", false, 28),
    OSA_MODIFY("osa_modify_android", "Activate OSA Modify", false, 28),
    OSA_REASONS("osa_reasons_android", "Activate Reason when requesting OSA", false, 28),
    PAY_BY_LINK("pbl_android", "Pay By Link", false, 28),
    PERFECT_LOGS("perfect_logs_android", "Perfect Corp Logging files", true, 4),
    PERSONAL_SELECTIONS("personal_selection_android", "Personal Selections", false, 28),
    PLP_REVAMP_V3_PHASE2("plp_revamp_v3_phase2_android", "PLP Revamp V3 Phase 2", false, 28),
    PLP_V3_GRID_VIEW("plp_v3_gridview_android", "PLP V3 Grid View (plp revamp)", false, 28),
    POWERFRONT("powerfront_android", "PowerFront", false, 28),
    POWERFRONT_CARE_SERVICE("powerfront_care_service_android", "PowerFront Care Service", false, 12),
    PROFILE_PHONE_NUMBER("profile_mobile_phone_android", "Profile Phone Number", false, 28),
    PUERTO_RICO("puerto_rico_android", "Enable Puerto Rico locale", false, 28),
    REFRESH_AUTH_CHECKOUT("refresh_auth_checkout_android", "Refresh auth from Checkout WebView", false, 28),
    REGISTRATION_ADDRESS_STEP("registration_address_step_android", "JUSO - Korea registration address step ", false, 28),
    SENSORS_DATA_ENABLED_STATUS("sensordata_enabled_android", "Enable Sensor Data", true, 20),
    SIZE_GUIDE_PIM_ANDROID("size_guide_pim_android", "Size Guide - PIM migration", false, 28),
    SMS_CONSENT("sms_consent_android", "Enable SMS Consent", false, 28),
    SNEAKERS("sneakers_x408_android", "Trainers", false, 28),
    SOCIAL_SIGN_IN_DEBUG("debug_social_sign_in_android", "Debug Social Sign-In (all providers)", false, 12),
    STORE_MODE("store_mode", "Activate store mode", false, 28),
    STORE_MODE_V2("store_mode_v2", "Activate store mode V2", false, 28),
    TINGYUN_SDK("tingyun_sdk_android", "Tingyun", false, 12),
    TRUNK_SPEAKER("trunk_speaker", "Trunk Speaker", false, 28),
    TWIST("twist_android", "Twist", true, 16),
    YMAL("ymal_android", "YMAL (You May Also Like)", false, 28);

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final String description;
    private final boolean isOverrideable;
    private final boolean isPreprodOnly;
    private final String key;
    private final boolean requiresRestart;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Object(null) { // from class: com.vuitton.foundation.model.domain.model.sync.Feature.Companion
        public final KSerializer<Feature> serializer() {
            return (KSerializer) Feature.$cachedSerializer$delegate.getF71699b();
        }
    };
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ew(22));

    /* JADX WARN: Type inference failed for: r0v3, types: [com.vuitton.foundation.model.domain.model.sync.Feature$Companion] */
    static {
        $ENTRIES = EnumEntriesKt.a(new Feature[]{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r16, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r32, r32, r33, r34, r35, r36, r37, r38, r39, r40, r41, r42, r43, r44, r45, r46, r48, r48, r49, r50, r51, r52, r53, r54, r55, r56, r57, r58, r59, r60, r61, r62, r64, r64, r65, r66, r67, r68, r69, r70, r71, r72, r73, r74, r75, r76, r77, r78, r80, r80, r81, r82, r83, r84, r85, r86, r87, r88, r89, r90, r91, r92, r93, r94, r96, r96, r97, r98});
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Feature(String str, String str2, boolean z, int i2) {
        super(str, i);
        boolean z2 = (i2 & 4) != 0;
        z = (i2 & 8) != 0 ? false : z;
        boolean z3 = (i2 & 16) == 0;
        this.key = str;
        this.description = str2;
        this.isOverrideable = z2;
        this.requiresRestart = z;
        this.isPreprodOnly = z3;
    }

    public static Feature valueOf(String str) {
        return (Feature) Enum.valueOf(Feature.class, str);
    }

    public static Feature[] values() {
        return (Feature[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getKey() {
        return this.key;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final boolean getIsPreprodOnly() {
        return this.isPreprodOnly;
    }
}

package com.vuitton.android.data.dto.config;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/config/FeaturesConfigDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class FeaturesConfigDto$$serializer implements GeneratedSerializer<FeaturesConfigDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FeaturesConfigDto$$serializer f45413a;
    private static final SerialDescriptor descriptor;

    static {
        FeaturesConfigDto$$serializer featuresConfigDto$$serializer = new FeaturesConfigDto$$serializer();
        f45413a = featuresConfigDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.config.FeaturesConfigDto", featuresConfigDto$$serializer, 95);
        pluginGeneratedSerialDescriptor.k("accessibility_disable_autoplay_android", true);
        pluginGeneratedSerialDescriptor.k("accessibility_enhanced_contrast_android", true);
        pluginGeneratedSerialDescriptor.k("accessibility_simplify_navigation_android", true);
        pluginGeneratedSerialDescriptor.k("accessibility_statement_android", true);
        pluginGeneratedSerialDescriptor.k("address_auto_complete_android", true);
        pluginGeneratedSerialDescriptor.k("add_to_cart_cross_sell_android", true);
        pluginGeneratedSerialDescriptor.k("ai_companion_android", true);
        pluginGeneratedSerialDescriptor.k("ai_companion_pdp_android", true);
        pluginGeneratedSerialDescriptor.k("ai_companion_session_id_android", true);
        pluginGeneratedSerialDescriptor.k("appsflyer_android", true);
        pluginGeneratedSerialDescriptor.k("autocomplete_postalcode_android", true);
        pluginGeneratedSerialDescriptor.k("back_in_stock", true);
        pluginGeneratedSerialDescriptor.k("back_in_stock_legal_consent_android", true);
        pluginGeneratedSerialDescriptor.k("back_order_disclaimer", true);
        pluginGeneratedSerialDescriptor.k("back_order_disclaimer_enhancement", true);
        pluginGeneratedSerialDescriptor.k("batch_notifications_android_release", true);
        pluginGeneratedSerialDescriptor.k("booking_my_experiences_android", true);
        pluginGeneratedSerialDescriptor.k("my_care_service_android", true);
        pluginGeneratedSerialDescriptor.k("care_services_migration_android", false);
        pluginGeneratedSerialDescriptor.k("cn_privacy", true);
        pluginGeneratedSerialDescriptor.k("contact_us_care_service_android", true);
        pluginGeneratedSerialDescriptor.k("contact_us_android", true);
        pluginGeneratedSerialDescriptor.k("diamonds_pdp_android", true);
        pluginGeneratedSerialDescriptor.k("distant_repairs_billing_address_android", true);
        pluginGeneratedSerialDescriptor.k("distant_repairs_enable_call_android", true);
        pluginGeneratedSerialDescriptor.k("distant_repairs_cancellation_reason_android", true);
        pluginGeneratedSerialDescriptor.k("distant_repairs_enable_email_android", true);
        pluginGeneratedSerialDescriptor.k("distant_repairs_Android", true);
        pluginGeneratedSerialDescriptor.k("distant_repairs_modify_android", true);
        pluginGeneratedSerialDescriptor.k("distant_repairs_payment_methods_icons_android", true);
        pluginGeneratedSerialDescriptor.k("distant_repairs_shipped_from_ehub_android", true);
        pluginGeneratedSerialDescriptor.k("distant_repairs_webview_tuto_android", true);
        pluginGeneratedSerialDescriptor.k("distant_repairs_enable_video_call_android", true);
        pluginGeneratedSerialDescriptor.k("distant_repairs_zipcode_android", true);
        pluginGeneratedSerialDescriptor.k("dynamic_yield_android", true);
        pluginGeneratedSerialDescriptor.k("dynatrace_sdk_android", true);
        pluginGeneratedSerialDescriptor.k("email_tracking_consent_android", true);
        pluginGeneratedSerialDescriptor.k("exclusive_offer_android", true);
        pluginGeneratedSerialDescriptor.k("feed_foryou_default_tab_android", true);
        pluginGeneratedSerialDescriptor.k("find_a_store_android", true);
        pluginGeneratedSerialDescriptor.k("gcm_optout_android", true);
        pluginGeneratedSerialDescriptor.k("googleanalytics_disabled_android", true);
        pluginGeneratedSerialDescriptor.k("google_customer_match_android", true);
        pluginGeneratedSerialDescriptor.k("google_sign_in_android", true);
        pluginGeneratedSerialDescriptor.k("lvconnect_horizon_speaker", true);
        pluginGeneratedSerialDescriptor.k("inbox_android", true);
        pluginGeneratedSerialDescriptor.k("kakao_sign_in_android", true);
        pluginGeneratedSerialDescriptor.k("lightup_keepall_android", true);
        pluginGeneratedSerialDescriptor.k("legal_notice_register_android", true);
        pluginGeneratedSerialDescriptor.k("line_sign_in_android", true);
        pluginGeneratedSerialDescriptor.k("diamonds_my_certificates_android", true);
        pluginGeneratedSerialDescriptor.k("native_account_activation_android", true);
        pluginGeneratedSerialDescriptor.k("native_cart_android", true);
        pluginGeneratedSerialDescriptor.k("native_login_android", true);
        pluginGeneratedSerialDescriptor.k("native_register_android", true);
        pluginGeneratedSerialDescriptor.k("native_register_kisa_android", true);
        pluginGeneratedSerialDescriptor.k("native_share_catalog_android", true);
        pluginGeneratedSerialDescriptor.k("native_share_immersive_android", true);
        pluginGeneratedSerialDescriptor.k("wishlist_native_share_android", true);
        pluginGeneratedSerialDescriptor.k("native_thank_you_page_feedback_android", true);
        pluginGeneratedSerialDescriptor.k("native_thank_you_page_redirect_android", true);
        pluginGeneratedSerialDescriptor.k("onboarding_android", true);
        pluginGeneratedSerialDescriptor.k("osa_cid_android", true);
        pluginGeneratedSerialDescriptor.k("store_appointment_android", true);
        pluginGeneratedSerialDescriptor.k("order_exchange_android", true);
        pluginGeneratedSerialDescriptor.k("order_return_android", true);
        pluginGeneratedSerialDescriptor.k("orders_invoice_android", true);
        pluginGeneratedSerialDescriptor.k("osa_guest_android", true);
        pluginGeneratedSerialDescriptor.k("osa_kisa_v2_android", true);
        pluginGeneratedSerialDescriptor.k("osa_modify_android", true);
        pluginGeneratedSerialDescriptor.k("osa_reasons_android", true);
        pluginGeneratedSerialDescriptor.k("pbl_android", true);
        pluginGeneratedSerialDescriptor.k("pdp_agec_law_android", true);
        pluginGeneratedSerialDescriptor.k("perfect_logs_android", true);
        pluginGeneratedSerialDescriptor.k("personal_selection_android", true);
        pluginGeneratedSerialDescriptor.k("plp_revamp_v3_phase2_android", true);
        pluginGeneratedSerialDescriptor.k("plp_v3_gridview_android", true);
        pluginGeneratedSerialDescriptor.k("powerfront_care_service_android", true);
        pluginGeneratedSerialDescriptor.k("powerfront_android", true);
        pluginGeneratedSerialDescriptor.k("profile_mobile_phone_android", true);
        pluginGeneratedSerialDescriptor.k("puerto_rico_android", true);
        pluginGeneratedSerialDescriptor.k("client_qr_code_android", true);
        pluginGeneratedSerialDescriptor.k("refresh_auth_checkout_android", true);
        pluginGeneratedSerialDescriptor.k("registration_address_step_android", true);
        pluginGeneratedSerialDescriptor.k("sensordata_enabled_android", true);
        pluginGeneratedSerialDescriptor.k("size_guide_pim_android", true);
        pluginGeneratedSerialDescriptor.k("sms_consent_android", true);
        pluginGeneratedSerialDescriptor.k("lightup_sneakers_x408_android", true);
        pluginGeneratedSerialDescriptor.k("debug_social_sign_in_android", true);
        pluginGeneratedSerialDescriptor.k("store_mode_android", true);
        pluginGeneratedSerialDescriptor.k("store_mode_V2_android", true);
        pluginGeneratedSerialDescriptor.k("tingyun_sdk_android", true);
        pluginGeneratedSerialDescriptor.k("trunk_speaker", true);
        pluginGeneratedSerialDescriptor.k("twist_android", true);
        pluginGeneratedSerialDescriptor.k("ymal_android", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        int i2;
        Boolean bool;
        int i3;
        int i4;
        Boolean bool2;
        int i5;
        Boolean bool3;
        Boolean bool4;
        Boolean bool5;
        int i6;
        int i7;
        Boolean bool6;
        int i8;
        Boolean bool7;
        int i9;
        int i10;
        int i11;
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        Boolean bool8 = null;
        Boolean bool9 = null;
        Boolean bool10 = null;
        Boolean bool11 = null;
        Boolean bool12 = null;
        Boolean bool13 = null;
        Boolean bool14 = null;
        Boolean bool15 = null;
        Boolean bool16 = null;
        Boolean bool17 = null;
        Boolean bool18 = null;
        Boolean bool19 = null;
        Boolean bool20 = null;
        Boolean bool21 = null;
        boolean z = true;
        Boolean bool22 = null;
        Boolean bool23 = null;
        Boolean bool24 = null;
        Boolean bool25 = null;
        Boolean bool26 = null;
        Boolean bool27 = null;
        Boolean bool28 = null;
        Boolean bool29 = null;
        Boolean bool30 = null;
        Boolean bool31 = null;
        Boolean bool32 = null;
        Boolean bool33 = null;
        Boolean bool34 = null;
        Boolean bool35 = null;
        int i12 = 0;
        Boolean bool36 = null;
        Boolean bool37 = null;
        Boolean bool38 = null;
        Boolean bool39 = null;
        Boolean bool40 = null;
        Boolean bool41 = null;
        Boolean bool42 = null;
        Boolean bool43 = null;
        Boolean bool44 = null;
        Boolean bool45 = null;
        Boolean bool46 = null;
        Boolean bool47 = null;
        Boolean bool48 = null;
        Boolean bool49 = null;
        Boolean bool50 = null;
        Boolean bool51 = null;
        Boolean bool52 = null;
        Boolean bool53 = null;
        Boolean bool54 = null;
        Boolean bool55 = null;
        Boolean bool56 = null;
        Boolean bool57 = null;
        Boolean bool58 = null;
        Boolean bool59 = null;
        Boolean bool60 = null;
        Boolean bool61 = null;
        Boolean bool62 = null;
        Boolean bool63 = null;
        Boolean bool64 = null;
        Boolean bool65 = null;
        Boolean bool66 = null;
        Boolean bool67 = null;
        int i13 = 0;
        Boolean bool68 = null;
        Boolean bool69 = null;
        Boolean bool70 = null;
        Boolean bool71 = null;
        Boolean bool72 = null;
        Boolean bool73 = null;
        Boolean bool74 = null;
        Boolean bool75 = null;
        Boolean bool76 = null;
        Boolean bool77 = null;
        Boolean bool78 = null;
        Boolean bool79 = null;
        Boolean bool80 = null;
        Boolean bool81 = null;
        Boolean bool82 = null;
        Boolean bool83 = null;
        Boolean bool84 = null;
        Boolean bool85 = null;
        Boolean bool86 = null;
        Boolean bool87 = null;
        Boolean bool88 = null;
        Boolean bool89 = null;
        Boolean bool90 = null;
        Boolean bool91 = null;
        Boolean bool92 = null;
        Boolean bool93 = null;
        Boolean bool94 = null;
        Boolean bool95 = null;
        Boolean bool96 = null;
        Boolean bool97 = null;
        Boolean bool98 = null;
        Boolean bool99 = null;
        int i14 = 0;
        Boolean bool100 = null;
        Boolean bool101 = null;
        Boolean bool102 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    Boolean bool103 = bool100;
                    Boolean bool104 = bool11;
                    Boolean bool105 = bool29;
                    int i15 = i12;
                    Boolean bool106 = bool36;
                    Boolean bool107 = bool61;
                    int i16 = i13;
                    bool9 = bool9;
                    bool10 = bool10;
                    bool29 = bool105;
                    bool11 = bool104;
                    bool100 = bool103;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i16;
                    bool61 = bool107;
                    bool36 = bool106;
                    i12 = i15;
                    z = false;
                    bool23 = bool23;
                    bool8 = bool8;
                    bool22 = bool22;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 0:
                    Boolean bool108 = bool100;
                    Boolean bool109 = bool11;
                    Boolean bool110 = bool29;
                    int i17 = i12;
                    bool36 = bool36;
                    bool61 = bool61;
                    i13 = i13;
                    bool68 = bool68;
                    bool93 = bool93;
                    i14 = i14;
                    bool9 = bool9;
                    bool10 = bool10;
                    i2 = i17 | 1;
                    bool29 = bool110;
                    bool23 = bool23;
                    bool11 = bool109;
                    bool22 = (Boolean) compositeDecoderB.m(serialDescriptor, 0, BooleanSerializer.f75574a, bool22);
                    bool100 = bool108;
                    bool8 = bool8;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i13;
                    bool61 = bool61;
                    bool36 = bool36;
                    i12 = i2;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 1:
                    Boolean bool111 = bool100;
                    Boolean bool112 = bool11;
                    Boolean bool113 = bool29;
                    int i18 = i12;
                    Boolean bool114 = bool36;
                    Boolean bool115 = bool61;
                    int i19 = i13;
                    bool10 = bool10;
                    int i20 = i18 | 2;
                    bool29 = bool113;
                    bool24 = bool24;
                    bool11 = bool112;
                    bool9 = bool9;
                    bool23 = (Boolean) compositeDecoderB.m(serialDescriptor, 1, BooleanSerializer.f75574a, bool23);
                    bool100 = bool111;
                    bool8 = bool8;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i19;
                    bool61 = bool115;
                    bool36 = bool114;
                    i12 = i20;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 2:
                    bool = bool100;
                    i2 = i12 | 4;
                    bool24 = (Boolean) compositeDecoderB.m(serialDescriptor, 2, BooleanSerializer.f75574a, bool24);
                    bool29 = bool29;
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i13;
                    bool61 = bool61;
                    bool36 = bool36;
                    i12 = i2;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 3:
                    bool = bool100;
                    i2 = i12 | 8;
                    bool25 = (Boolean) compositeDecoderB.m(serialDescriptor, 3, BooleanSerializer.f75574a, bool25);
                    bool29 = bool29;
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i13;
                    bool61 = bool61;
                    bool36 = bool36;
                    i12 = i2;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 4:
                    bool = bool100;
                    i2 = i12 | 16;
                    bool26 = (Boolean) compositeDecoderB.m(serialDescriptor, 4, BooleanSerializer.f75574a, bool26);
                    bool29 = bool29;
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i13;
                    bool61 = bool61;
                    bool36 = bool36;
                    i12 = i2;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 5:
                    bool = bool100;
                    i2 = i12 | 32;
                    bool27 = (Boolean) compositeDecoderB.m(serialDescriptor, 5, BooleanSerializer.f75574a, bool27);
                    bool29 = bool29;
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i13;
                    bool61 = bool61;
                    bool36 = bool36;
                    i12 = i2;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 6:
                    bool = bool100;
                    i2 = i12 | 64;
                    bool28 = (Boolean) compositeDecoderB.m(serialDescriptor, 6, BooleanSerializer.f75574a, bool28);
                    bool29 = bool29;
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i13;
                    bool61 = bool61;
                    bool36 = bool36;
                    i12 = i2;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 7:
                    i3 = i12 | 128;
                    bool29 = (Boolean) compositeDecoderB.m(serialDescriptor, 7, BooleanSerializer.f75574a, bool29);
                    bool100 = bool100;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i13;
                    bool61 = bool61;
                    bool36 = bool36;
                    i12 = i3;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 8:
                    bool8 = bool8;
                    bool9 = bool9;
                    bool10 = bool10;
                    int i21 = i12;
                    bool36 = bool36;
                    bool61 = bool61;
                    i13 = i13;
                    bool68 = bool68;
                    bool93 = bool93;
                    i14 = i14;
                    bool = bool100;
                    bool11 = bool11;
                    i2 = i21 | 256;
                    bool30 = (Boolean) compositeDecoderB.m(serialDescriptor, 8, BooleanSerializer.f75574a, bool30);
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i13;
                    bool61 = bool61;
                    bool36 = bool36;
                    i12 = i2;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 9:
                    bool8 = bool8;
                    bool9 = bool9;
                    bool10 = bool10;
                    int i22 = i12;
                    bool36 = bool36;
                    bool61 = bool61;
                    i13 = i13;
                    bool68 = bool68;
                    bool93 = bool93;
                    i14 = i14;
                    bool = bool100;
                    bool11 = bool11;
                    i2 = i22 | 512;
                    bool31 = (Boolean) compositeDecoderB.m(serialDescriptor, 9, BooleanSerializer.f75574a, bool31);
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i13;
                    bool61 = bool61;
                    bool36 = bool36;
                    i12 = i2;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 10:
                    i3 = i12 | 1024;
                    bool32 = (Boolean) compositeDecoderB.m(serialDescriptor, 10, BooleanSerializer.f75574a, bool32);
                    bool100 = bool100;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i13;
                    bool61 = bool61;
                    bool36 = bool36;
                    i12 = i3;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 11:
                    bool8 = bool8;
                    bool9 = bool9;
                    bool10 = bool10;
                    int i23 = i12;
                    bool36 = bool36;
                    bool61 = bool61;
                    i13 = i13;
                    bool68 = bool68;
                    bool93 = bool93;
                    i14 = i14;
                    bool = bool100;
                    bool11 = bool11;
                    i2 = i23 | 2048;
                    bool33 = (Boolean) compositeDecoderB.m(serialDescriptor, 11, BooleanSerializer.f75574a, bool33);
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i13;
                    bool61 = bool61;
                    bool36 = bool36;
                    i12 = i2;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 12:
                    bool8 = bool8;
                    bool9 = bool9;
                    bool10 = bool10;
                    int i24 = i12;
                    bool36 = bool36;
                    bool61 = bool61;
                    i13 = i13;
                    bool68 = bool68;
                    bool93 = bool93;
                    i14 = i14;
                    bool = bool100;
                    bool11 = bool11;
                    i2 = i24 | 4096;
                    bool34 = (Boolean) compositeDecoderB.m(serialDescriptor, 12, BooleanSerializer.f75574a, bool34);
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i13;
                    bool61 = bool61;
                    bool36 = bool36;
                    i12 = i2;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 13:
                    Boolean bool116 = bool100;
                    bool11 = bool11;
                    Boolean bool117 = bool61;
                    i13 = i13;
                    bool68 = bool68;
                    bool93 = bool93;
                    i14 = i14;
                    bool = bool116;
                    bool8 = bool8;
                    bool9 = bool9;
                    bool10 = bool10;
                    int i25 = i12;
                    bool36 = bool36;
                    bool61 = bool117;
                    i2 = i25 | 8192;
                    bool35 = (Boolean) compositeDecoderB.m(serialDescriptor, 13, BooleanSerializer.f75574a, bool35);
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i13;
                    bool61 = bool61;
                    bool36 = bool36;
                    i12 = i2;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 14:
                    Boolean bool118 = bool100;
                    Boolean bool119 = bool11;
                    Boolean bool120 = bool61;
                    int i26 = i13;
                    i4 = i12 | 16384;
                    bool61 = bool120;
                    bool11 = bool119;
                    bool100 = bool118;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i26;
                    bool36 = (Boolean) compositeDecoderB.m(serialDescriptor, 14, BooleanSerializer.f75574a, bool36);
                    i12 = i4;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 15:
                    Boolean bool121 = bool100;
                    Boolean bool122 = bool11;
                    Boolean bool123 = bool61;
                    int i27 = i13;
                    i4 = i12 | 32768;
                    bool61 = bool123;
                    bool11 = bool122;
                    bool100 = bool121;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i27;
                    bool37 = (Boolean) compositeDecoderB.m(serialDescriptor, 15, BooleanSerializer.f75574a, bool37);
                    i12 = i4;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 16:
                    Boolean bool124 = bool100;
                    Boolean bool125 = bool11;
                    Boolean bool126 = bool61;
                    int i28 = i13;
                    i4 = i12 | 65536;
                    bool61 = bool126;
                    bool11 = bool125;
                    bool100 = bool124;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i28;
                    bool38 = (Boolean) compositeDecoderB.m(serialDescriptor, 16, BooleanSerializer.f75574a, bool38);
                    i12 = i4;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 17:
                    Boolean bool127 = bool100;
                    Boolean bool128 = bool11;
                    Boolean bool129 = bool61;
                    int i29 = i13;
                    i4 = i12 | 131072;
                    bool61 = bool129;
                    bool11 = bool128;
                    bool100 = bool127;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i29;
                    bool39 = (Boolean) compositeDecoderB.m(serialDescriptor, 17, BooleanSerializer.f75574a, bool39);
                    i12 = i4;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 18:
                    Boolean bool130 = bool100;
                    Boolean bool131 = bool11;
                    Boolean bool132 = bool61;
                    int i30 = i13;
                    bool8 = bool8;
                    bool9 = bool9;
                    bool10 = bool10;
                    bool61 = bool132;
                    bool11 = bool131;
                    bool100 = bool130;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i30;
                    i12 |= 262144;
                    bool40 = (Boolean) compositeDecoderB.m(serialDescriptor, 18, BooleanSerializer.f75574a, bool40);
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 19:
                    Boolean bool133 = bool100;
                    Boolean bool134 = bool11;
                    Boolean bool135 = bool61;
                    int i31 = i13;
                    bool8 = bool8;
                    bool9 = bool9;
                    bool10 = bool10;
                    bool61 = bool135;
                    bool11 = bool134;
                    bool100 = bool133;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i31;
                    i12 |= 524288;
                    bool41 = (Boolean) compositeDecoderB.m(serialDescriptor, 19, BooleanSerializer.f75574a, bool41);
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 20:
                    Boolean bool136 = bool100;
                    Boolean bool137 = bool11;
                    Boolean bool138 = bool61;
                    int i32 = i13;
                    i4 = i12 | 1048576;
                    bool61 = bool138;
                    bool11 = bool137;
                    bool100 = bool136;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i32;
                    bool42 = (Boolean) compositeDecoderB.m(serialDescriptor, 20, BooleanSerializer.f75574a, bool42);
                    i12 = i4;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 21:
                    Boolean bool139 = bool100;
                    Boolean bool140 = bool11;
                    Boolean bool141 = bool61;
                    int i33 = i13;
                    Boolean bool142 = (Boolean) compositeDecoderB.m(serialDescriptor, 21, BooleanSerializer.f75574a, bool43);
                    i4 = i12 | PKIFailureInfo.badSenderNonce;
                    bool61 = bool141;
                    bool11 = bool140;
                    bool100 = bool139;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i33;
                    bool43 = bool142;
                    i12 = i4;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 22:
                    Boolean bool143 = bool100;
                    Boolean bool144 = bool11;
                    Boolean bool145 = bool61;
                    int i34 = i13;
                    i4 = i12 | 4194304;
                    bool61 = bool145;
                    bool11 = bool144;
                    bool100 = bool143;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i34;
                    bool44 = (Boolean) compositeDecoderB.m(serialDescriptor, 22, BooleanSerializer.f75574a, bool44);
                    i12 = i4;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 23:
                    Boolean bool146 = bool100;
                    Boolean bool147 = bool11;
                    Boolean bool148 = bool61;
                    int i35 = i13;
                    i4 = i12 | 8388608;
                    bool61 = bool148;
                    bool11 = bool147;
                    bool100 = bool146;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i35;
                    bool45 = (Boolean) compositeDecoderB.m(serialDescriptor, 23, BooleanSerializer.f75574a, bool45);
                    i12 = i4;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 24:
                    Boolean bool149 = bool100;
                    Boolean bool150 = bool11;
                    Boolean bool151 = bool61;
                    int i36 = i13;
                    i4 = i12 | 16777216;
                    bool61 = bool151;
                    bool11 = bool150;
                    bool100 = bool149;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i36;
                    bool46 = (Boolean) compositeDecoderB.m(serialDescriptor, 24, BooleanSerializer.f75574a, bool46);
                    i12 = i4;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 25:
                    Boolean bool152 = bool100;
                    Boolean bool153 = bool11;
                    Boolean bool154 = bool61;
                    int i37 = i13;
                    i4 = i12 | 33554432;
                    bool61 = bool154;
                    bool11 = bool153;
                    bool100 = bool152;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i37;
                    bool47 = (Boolean) compositeDecoderB.m(serialDescriptor, 25, BooleanSerializer.f75574a, bool47);
                    i12 = i4;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 26:
                    Boolean bool155 = bool100;
                    Boolean bool156 = bool11;
                    Boolean bool157 = bool61;
                    int i38 = i13;
                    i4 = i12 | 67108864;
                    bool61 = bool157;
                    bool11 = bool156;
                    bool100 = bool155;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i38;
                    bool48 = (Boolean) compositeDecoderB.m(serialDescriptor, 26, BooleanSerializer.f75574a, bool48);
                    i12 = i4;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 27:
                    Boolean bool158 = bool100;
                    Boolean bool159 = bool11;
                    Boolean bool160 = bool61;
                    int i39 = i13;
                    i4 = i12 | 134217728;
                    bool61 = bool160;
                    bool11 = bool159;
                    bool100 = bool158;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i39;
                    bool49 = (Boolean) compositeDecoderB.m(serialDescriptor, 27, BooleanSerializer.f75574a, bool49);
                    i12 = i4;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 28:
                    Boolean bool161 = bool100;
                    Boolean bool162 = bool11;
                    Boolean bool163 = bool61;
                    int i40 = i13;
                    i4 = i12 | 268435456;
                    bool61 = bool163;
                    bool11 = bool162;
                    bool100 = bool161;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i40;
                    bool50 = (Boolean) compositeDecoderB.m(serialDescriptor, 28, BooleanSerializer.f75574a, bool50);
                    i12 = i4;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 29:
                    Boolean bool164 = bool100;
                    Boolean bool165 = bool11;
                    Boolean bool166 = bool61;
                    int i41 = i13;
                    Boolean bool167 = (Boolean) compositeDecoderB.m(serialDescriptor, 29, BooleanSerializer.f75574a, bool51);
                    i4 = i12 | PKIFailureInfo.duplicateCertReq;
                    bool61 = bool166;
                    bool11 = bool165;
                    bool100 = bool164;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i41;
                    bool51 = bool167;
                    i12 = i4;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 30:
                    Boolean bool168 = bool100;
                    Boolean bool169 = bool11;
                    Boolean bool170 = bool61;
                    int i42 = i13;
                    bool8 = bool8;
                    bool9 = bool9;
                    bool10 = bool10;
                    bool61 = bool170;
                    bool11 = bool169;
                    bool100 = bool168;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i42;
                    i12 |= 1073741824;
                    bool52 = (Boolean) compositeDecoderB.m(serialDescriptor, 30, BooleanSerializer.f75574a, bool52);
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 31:
                    Boolean bool171 = bool100;
                    Boolean bool172 = bool11;
                    Boolean bool173 = bool61;
                    int i43 = i13;
                    bool8 = bool8;
                    bool9 = bool9;
                    bool10 = bool10;
                    bool61 = bool173;
                    bool11 = bool172;
                    bool100 = bool171;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i43;
                    i12 |= Integer.MIN_VALUE;
                    bool53 = (Boolean) compositeDecoderB.m(serialDescriptor, 31, BooleanSerializer.f75574a, bool53);
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 32:
                    bool2 = bool100;
                    i5 = i13 | 1;
                    bool54 = (Boolean) compositeDecoderB.m(serialDescriptor, 32, BooleanSerializer.f75574a, bool54);
                    bool61 = bool61;
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool2;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i5;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 33:
                    bool2 = bool100;
                    i5 = i13 | 2;
                    bool55 = (Boolean) compositeDecoderB.m(serialDescriptor, 33, BooleanSerializer.f75574a, bool55);
                    bool61 = bool61;
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool2;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i5;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 34:
                    bool2 = bool100;
                    i5 = i13 | 4;
                    bool56 = (Boolean) compositeDecoderB.m(serialDescriptor, 34, BooleanSerializer.f75574a, bool56);
                    bool61 = bool61;
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool2;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i5;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 35:
                    bool2 = bool100;
                    i5 = i13 | 8;
                    bool57 = (Boolean) compositeDecoderB.m(serialDescriptor, 35, BooleanSerializer.f75574a, bool57);
                    bool61 = bool61;
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool2;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i5;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 36:
                    bool2 = bool100;
                    i5 = i13 | 16;
                    bool58 = (Boolean) compositeDecoderB.m(serialDescriptor, 36, BooleanSerializer.f75574a, bool58);
                    bool61 = bool61;
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool2;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i5;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 37:
                    bool2 = bool100;
                    i5 = i13 | 32;
                    bool59 = (Boolean) compositeDecoderB.m(serialDescriptor, 37, BooleanSerializer.f75574a, bool59);
                    bool61 = bool61;
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool2;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i5;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 38:
                    bool2 = bool100;
                    i5 = i13 | 64;
                    bool60 = (Boolean) compositeDecoderB.m(serialDescriptor, 38, BooleanSerializer.f75574a, bool60);
                    bool61 = bool61;
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool2;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i5;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 39:
                    bool8 = bool8;
                    bool9 = bool9;
                    bool10 = bool10;
                    int i44 = i13;
                    bool68 = bool68;
                    bool93 = bool93;
                    i14 = i14;
                    bool2 = bool100;
                    bool11 = bool11;
                    i5 = i44 | 128;
                    bool61 = (Boolean) compositeDecoderB.m(serialDescriptor, 39, BooleanSerializer.f75574a, bool61);
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool2;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i5;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 40:
                    bool8 = bool8;
                    bool9 = bool9;
                    bool10 = bool10;
                    int i45 = i13;
                    bool68 = bool68;
                    bool93 = bool93;
                    i14 = i14;
                    bool2 = bool100;
                    bool11 = bool11;
                    i5 = i45 | 256;
                    bool62 = (Boolean) compositeDecoderB.m(serialDescriptor, 40, BooleanSerializer.f75574a, bool62);
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool2;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i5;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 41:
                    bool8 = bool8;
                    bool9 = bool9;
                    bool10 = bool10;
                    int i46 = i13;
                    bool68 = bool68;
                    bool93 = bool93;
                    i14 = i14;
                    bool2 = bool100;
                    bool11 = bool11;
                    i5 = i46 | 512;
                    bool63 = (Boolean) compositeDecoderB.m(serialDescriptor, 41, BooleanSerializer.f75574a, bool63);
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool2;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i5;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case EACTags.CURRENCY_CODE /* 42 */:
                    bool8 = bool8;
                    bool9 = bool9;
                    bool10 = bool10;
                    int i47 = i13;
                    bool68 = bool68;
                    bool93 = bool93;
                    i14 = i14;
                    bool2 = bool100;
                    bool11 = bool11;
                    i5 = i47 | 1024;
                    bool64 = (Boolean) compositeDecoderB.m(serialDescriptor, 42, BooleanSerializer.f75574a, bool64);
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool2;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i5;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case EACTags.DATE_OF_BIRTH /* 43 */:
                    int i48 = i13;
                    bool3 = bool68;
                    bool4 = bool93;
                    bool5 = bool100;
                    i6 = i48 | 2048;
                    bool65 = (Boolean) compositeDecoderB.m(serialDescriptor, 43, BooleanSerializer.f75574a, bool65);
                    bool100 = bool5;
                    i14 = i14;
                    bool93 = bool4;
                    bool68 = bool3;
                    i13 = i6;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                    bool8 = bool8;
                    bool9 = bool9;
                    bool10 = bool10;
                    int i49 = i13;
                    bool68 = bool68;
                    bool93 = bool93;
                    i14 = i14;
                    bool2 = bool100;
                    bool11 = bool11;
                    i5 = i49 | 4096;
                    bool66 = (Boolean) compositeDecoderB.m(serialDescriptor, 44, BooleanSerializer.f75574a, bool66);
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool2;
                    i14 = i14;
                    bool93 = bool93;
                    bool68 = bool68;
                    i13 = i5;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                    bool5 = bool100;
                    int i50 = i13;
                    bool3 = bool68;
                    bool4 = bool93;
                    i6 = i50 | 8192;
                    bool67 = (Boolean) compositeDecoderB.m(serialDescriptor, 45, BooleanSerializer.f75574a, bool67);
                    bool100 = bool5;
                    i14 = i14;
                    bool93 = bool4;
                    bool68 = bool3;
                    i13 = i6;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 46:
                    Boolean bool174 = bool100;
                    i7 = i13 | 16384;
                    bool93 = bool93;
                    bool11 = bool11;
                    bool100 = bool174;
                    i14 = i14;
                    bool68 = (Boolean) compositeDecoderB.m(serialDescriptor, 46, BooleanSerializer.f75574a, bool68);
                    i13 = i7;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case EACTags.PIN_USAGE_POLICY /* 47 */:
                    Boolean bool175 = bool100;
                    i7 = i13 | 32768;
                    bool93 = bool93;
                    bool11 = bool11;
                    bool100 = bool175;
                    i14 = i14;
                    bool69 = (Boolean) compositeDecoderB.m(serialDescriptor, 47, BooleanSerializer.f75574a, bool69);
                    i13 = i7;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 48:
                    Boolean bool176 = bool100;
                    i7 = i13 | 65536;
                    bool93 = bool93;
                    bool11 = bool11;
                    bool100 = bool176;
                    i14 = i14;
                    bool70 = (Boolean) compositeDecoderB.m(serialDescriptor, 48, BooleanSerializer.f75574a, bool70);
                    i13 = i7;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 49:
                    Boolean bool177 = bool100;
                    i7 = i13 | 131072;
                    bool93 = bool93;
                    bool11 = bool11;
                    bool100 = bool177;
                    i14 = i14;
                    bool71 = (Boolean) compositeDecoderB.m(serialDescriptor, 49, BooleanSerializer.f75574a, bool71);
                    i13 = i7;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 50:
                    Boolean bool178 = bool100;
                    i7 = i13 | 262144;
                    bool93 = bool93;
                    bool11 = bool11;
                    bool100 = bool178;
                    i14 = i14;
                    bool72 = (Boolean) compositeDecoderB.m(serialDescriptor, 50, BooleanSerializer.f75574a, bool72);
                    i13 = i7;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case EACTags.TRANSACTION_DATE /* 51 */:
                    Boolean bool179 = bool100;
                    i7 = i13 | 524288;
                    bool93 = bool93;
                    bool11 = bool11;
                    bool100 = bool179;
                    i14 = i14;
                    bool73 = (Boolean) compositeDecoderB.m(serialDescriptor, 51, BooleanSerializer.f75574a, bool73);
                    i13 = i7;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                    Boolean bool180 = bool100;
                    i7 = i13 | 1048576;
                    bool93 = bool93;
                    bool11 = bool11;
                    bool100 = bool180;
                    i14 = i14;
                    bool74 = (Boolean) compositeDecoderB.m(serialDescriptor, 52, BooleanSerializer.f75574a, bool74);
                    i13 = i7;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case EACTags.SEX /* 53 */:
                    Boolean bool181 = bool100;
                    Boolean bool182 = (Boolean) compositeDecoderB.m(serialDescriptor, 53, BooleanSerializer.f75574a, bool75);
                    i7 = i13 | PKIFailureInfo.badSenderNonce;
                    bool93 = bool93;
                    bool11 = bool11;
                    bool100 = bool181;
                    i14 = i14;
                    bool75 = bool182;
                    i13 = i7;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case EACTags.CURRENCY_EXPONENT /* 54 */:
                    Boolean bool183 = bool100;
                    bool8 = bool8;
                    bool9 = bool9;
                    bool10 = bool10;
                    bool93 = bool93;
                    bool11 = bool11;
                    bool100 = bool183;
                    i14 = i14;
                    i13 |= 4194304;
                    bool76 = (Boolean) compositeDecoderB.m(serialDescriptor, 54, BooleanSerializer.f75574a, bool76);
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 55:
                    Boolean bool184 = bool100;
                    bool8 = bool8;
                    bool9 = bool9;
                    bool10 = bool10;
                    bool93 = bool93;
                    bool11 = bool11;
                    bool100 = bool184;
                    i14 = i14;
                    i13 |= 8388608;
                    bool77 = (Boolean) compositeDecoderB.m(serialDescriptor, 55, BooleanSerializer.f75574a, bool77);
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 56:
                    Boolean bool185 = bool100;
                    i7 = i13 | 16777216;
                    bool93 = bool93;
                    bool11 = bool11;
                    bool100 = bool185;
                    i14 = i14;
                    bool78 = (Boolean) compositeDecoderB.m(serialDescriptor, 56, BooleanSerializer.f75574a, bool78);
                    i13 = i7;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 57:
                    Boolean bool186 = bool100;
                    i7 = i13 | 33554432;
                    bool93 = bool93;
                    bool11 = bool11;
                    bool100 = bool186;
                    i14 = i14;
                    bool79 = (Boolean) compositeDecoderB.m(serialDescriptor, 57, BooleanSerializer.f75574a, bool79);
                    i13 = i7;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                    Boolean bool187 = bool100;
                    i7 = i13 | 67108864;
                    bool93 = bool93;
                    bool11 = bool11;
                    bool100 = bool187;
                    i14 = i14;
                    bool80 = (Boolean) compositeDecoderB.m(serialDescriptor, 58, BooleanSerializer.f75574a, bool80);
                    i13 = i7;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    Boolean bool188 = bool100;
                    i7 = i13 | 134217728;
                    bool93 = bool93;
                    bool11 = bool11;
                    bool100 = bool188;
                    i14 = i14;
                    bool81 = (Boolean) compositeDecoderB.m(serialDescriptor, 59, BooleanSerializer.f75574a, bool81);
                    i13 = i7;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 60:
                    Boolean bool189 = bool100;
                    i7 = i13 | 268435456;
                    bool93 = bool93;
                    bool11 = bool11;
                    bool100 = bool189;
                    i14 = i14;
                    bool82 = (Boolean) compositeDecoderB.m(serialDescriptor, 60, BooleanSerializer.f75574a, bool82);
                    i13 = i7;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 61:
                    Boolean bool190 = bool100;
                    Boolean bool191 = (Boolean) compositeDecoderB.m(serialDescriptor, 61, BooleanSerializer.f75574a, bool83);
                    i7 = i13 | PKIFailureInfo.duplicateCertReq;
                    bool93 = bool93;
                    bool11 = bool11;
                    bool100 = bool190;
                    i14 = i14;
                    bool83 = bool191;
                    i13 = i7;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 62:
                    Boolean bool192 = bool100;
                    i7 = i13 | 1073741824;
                    bool93 = bool93;
                    bool11 = bool11;
                    bool100 = bool192;
                    i14 = i14;
                    bool84 = (Boolean) compositeDecoderB.m(serialDescriptor, 62, BooleanSerializer.f75574a, bool84);
                    i13 = i7;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 63:
                    Boolean bool193 = bool100;
                    i7 = i13 | Integer.MIN_VALUE;
                    bool93 = bool93;
                    bool11 = bool11;
                    bool100 = bool193;
                    i14 = i14;
                    bool85 = (Boolean) compositeDecoderB.m(serialDescriptor, 63, BooleanSerializer.f75574a, bool85);
                    i13 = i7;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 64:
                    int i51 = i14;
                    bool6 = bool100;
                    i8 = i51 | 1;
                    bool86 = (Boolean) compositeDecoderB.m(serialDescriptor, 64, BooleanSerializer.f75574a, bool86);
                    bool93 = bool93;
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool6;
                    i14 = i8;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case EACTags.ELEMENT_LIST /* 65 */:
                    int i52 = i14;
                    bool6 = bool100;
                    i8 = i52 | 2;
                    bool87 = (Boolean) compositeDecoderB.m(serialDescriptor, 65, BooleanSerializer.f75574a, bool87);
                    bool93 = bool93;
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool6;
                    i14 = i8;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case EACTags.ADDRESS /* 66 */:
                    int i53 = i14;
                    bool6 = bool100;
                    i8 = i53 | 4;
                    bool88 = (Boolean) compositeDecoderB.m(serialDescriptor, 66, BooleanSerializer.f75574a, bool88);
                    bool93 = bool93;
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool6;
                    i14 = i8;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    int i54 = i14;
                    bool7 = bool100;
                    i9 = i54 | 8;
                    bool89 = (Boolean) compositeDecoderB.m(serialDescriptor, 67, BooleanSerializer.f75574a, bool89);
                    bool93 = bool93;
                    bool100 = bool7;
                    i14 = i9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    int i55 = i14;
                    bool7 = bool100;
                    i9 = i55 | 16;
                    bool90 = (Boolean) compositeDecoderB.m(serialDescriptor, 68, BooleanSerializer.f75574a, bool90);
                    bool93 = bool93;
                    bool100 = bool7;
                    i14 = i9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case EACTags.DISPLAY_IMAGE /* 69 */:
                    int i56 = i14;
                    bool6 = bool100;
                    i8 = i56 | 32;
                    bool91 = (Boolean) compositeDecoderB.m(serialDescriptor, 69, BooleanSerializer.f75574a, bool91);
                    bool93 = bool93;
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool6;
                    i14 = i8;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 70:
                    int i57 = i14;
                    bool6 = bool100;
                    i8 = i57 | 64;
                    bool92 = (Boolean) compositeDecoderB.m(serialDescriptor, 70, BooleanSerializer.f75574a, bool92);
                    bool93 = bool93;
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool6;
                    i14 = i8;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case EACTags.MESSAGE_REFERENCE /* 71 */:
                    bool8 = bool8;
                    bool9 = bool9;
                    bool10 = bool10;
                    int i58 = i14;
                    bool6 = bool100;
                    bool11 = bool11;
                    i8 = i58 | 128;
                    bool93 = (Boolean) compositeDecoderB.m(serialDescriptor, 71, BooleanSerializer.f75574a, bool93);
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool6;
                    i14 = i8;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 72:
                    bool8 = bool8;
                    bool9 = bool9;
                    bool10 = bool10;
                    int i59 = i14;
                    bool6 = bool100;
                    bool11 = bool11;
                    i8 = i59 | 256;
                    bool94 = (Boolean) compositeDecoderB.m(serialDescriptor, 72, BooleanSerializer.f75574a, bool94);
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool6;
                    i14 = i8;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 73:
                    bool8 = bool8;
                    bool9 = bool9;
                    bool10 = bool10;
                    int i60 = i14;
                    bool6 = bool100;
                    bool11 = bool11;
                    i8 = i60 | 512;
                    bool95 = (Boolean) compositeDecoderB.m(serialDescriptor, 73, BooleanSerializer.f75574a, bool95);
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool6;
                    i14 = i8;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY /* 74 */:
                    bool8 = bool8;
                    bool9 = bool9;
                    bool10 = bool10;
                    int i61 = i14;
                    bool6 = bool100;
                    bool11 = bool11;
                    i8 = i61 | 1024;
                    bool96 = (Boolean) compositeDecoderB.m(serialDescriptor, 74, BooleanSerializer.f75574a, bool96);
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool6;
                    i14 = i8;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case EACTags.DEPRECATED /* 75 */:
                    bool8 = bool8;
                    bool9 = bool9;
                    bool10 = bool10;
                    int i62 = i14;
                    bool6 = bool100;
                    bool11 = bool11;
                    i8 = i62 | 2048;
                    bool97 = (Boolean) compositeDecoderB.m(serialDescriptor, 75, BooleanSerializer.f75574a, bool97);
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool6;
                    i14 = i8;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 76:
                    bool8 = bool8;
                    bool9 = bool9;
                    bool10 = bool10;
                    int i63 = i14;
                    bool6 = bool100;
                    bool11 = bool11;
                    i8 = i63 | 4096;
                    bool98 = (Boolean) compositeDecoderB.m(serialDescriptor, 76, BooleanSerializer.f75574a, bool98);
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool6;
                    i14 = i8;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID /* 77 */:
                    bool8 = bool8;
                    bool9 = bool9;
                    bool10 = bool10;
                    int i64 = i14;
                    bool6 = bool100;
                    bool11 = bool11;
                    i8 = i64 | 8192;
                    bool99 = (Boolean) compositeDecoderB.m(serialDescriptor, 77, BooleanSerializer.f75574a, bool99);
                    bool23 = bool23;
                    bool11 = bool11;
                    bool8 = bool8;
                    bool100 = bool6;
                    i14 = i8;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 78:
                    i10 = i14 | 16384;
                    bool100 = (Boolean) compositeDecoderB.m(serialDescriptor, 78, BooleanSerializer.f75574a, bool100);
                    i14 = i10;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 79:
                    i10 = i14 | 32768;
                    bool101 = (Boolean) compositeDecoderB.m(serialDescriptor, 79, BooleanSerializer.f75574a, bool101);
                    i14 = i10;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case EACTags.UNIFORM_RESOURCE_LOCATOR /* 80 */:
                    bool8 = bool8;
                    bool10 = bool10;
                    bool9 = bool9;
                    i14 |= 65536;
                    bool102 = (Boolean) compositeDecoderB.m(serialDescriptor, 80, BooleanSerializer.f75574a, bool102);
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case EACTags.ANSWER_TO_RESET /* 81 */:
                    bool10 = bool10;
                    bool8 = bool8;
                    bool9 = (Boolean) compositeDecoderB.m(serialDescriptor, 81, BooleanSerializer.f75574a, bool9);
                    i14 |= 131072;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case EACTags.HISTORICAL_BYTES /* 82 */:
                    bool10 = bool10;
                    bool8 = (Boolean) compositeDecoderB.m(serialDescriptor, 82, BooleanSerializer.f75574a, bool8);
                    i14 |= 262144;
                    bool23 = bool23;
                    bool9 = bool9;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 83:
                    bool11 = (Boolean) compositeDecoderB.m(serialDescriptor, 83, BooleanSerializer.f75574a, bool11);
                    i11 = i14 | 524288;
                    i14 = i11;
                    bool10 = bool10;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 84:
                    bool14 = (Boolean) compositeDecoderB.m(serialDescriptor, 84, BooleanSerializer.f75574a, bool14);
                    i11 = i14 | 1048576;
                    i14 = i11;
                    bool10 = bool10;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 85:
                    bool16 = (Boolean) compositeDecoderB.m(serialDescriptor, 85, BooleanSerializer.f75574a, bool16);
                    i11 = i14 | PKIFailureInfo.badSenderNonce;
                    i14 = i11;
                    bool10 = bool10;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 86:
                    bool17 = (Boolean) compositeDecoderB.m(serialDescriptor, 86, BooleanSerializer.f75574a, bool17);
                    i11 = i14 | 4194304;
                    i14 = i11;
                    bool10 = bool10;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 87:
                    bool18 = (Boolean) compositeDecoderB.m(serialDescriptor, 87, BooleanSerializer.f75574a, bool18);
                    i11 = i14 | 8388608;
                    i14 = i11;
                    bool10 = bool10;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 88:
                    bool13 = (Boolean) compositeDecoderB.m(serialDescriptor, 88, BooleanSerializer.f75574a, bool13);
                    i11 = i14 | 16777216;
                    i14 = i11;
                    bool10 = bool10;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 89:
                    bool19 = (Boolean) compositeDecoderB.m(serialDescriptor, 89, BooleanSerializer.f75574a, bool19);
                    i11 = i14 | 33554432;
                    i14 = i11;
                    bool10 = bool10;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case Sink.ORIENTATION_90 /* 90 */:
                    bool20 = (Boolean) compositeDecoderB.m(serialDescriptor, 90, BooleanSerializer.f75574a, bool20);
                    i11 = i14 | 67108864;
                    i14 = i11;
                    bool10 = bool10;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 91:
                    bool15 = (Boolean) compositeDecoderB.m(serialDescriptor, 91, BooleanSerializer.f75574a, bool15);
                    i11 = i14 | 134217728;
                    i14 = i11;
                    bool10 = bool10;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 92:
                    bool21 = (Boolean) compositeDecoderB.m(serialDescriptor, 92, BooleanSerializer.f75574a, bool21);
                    i11 = i14 | 268435456;
                    i14 = i11;
                    bool10 = bool10;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 93:
                    bool12 = (Boolean) compositeDecoderB.m(serialDescriptor, 93, BooleanSerializer.f75574a, bool12);
                    i11 = i14 | PKIFailureInfo.duplicateCertReq;
                    i14 = i11;
                    bool10 = bool10;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                case 94:
                    bool10 = (Boolean) compositeDecoderB.m(serialDescriptor, 94, BooleanSerializer.f75574a, bool10);
                    i11 = i14 | 1073741824;
                    i14 = i11;
                    bool10 = bool10;
                    bool9 = bool9;
                    bool8 = bool8;
                    bool23 = bool23;
                    bool10 = bool10;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        Boolean bool194 = bool100;
        Boolean bool195 = bool11;
        Boolean bool196 = bool29;
        int i65 = i12;
        Boolean bool197 = bool36;
        Boolean bool198 = bool61;
        int i66 = i13;
        Boolean bool199 = bool68;
        Boolean bool200 = bool93;
        Boolean bool201 = bool9;
        Boolean bool202 = bool22;
        Boolean bool203 = bool23;
        Boolean bool204 = bool24;
        compositeDecoderB.c(serialDescriptor);
        return new FeaturesConfigDto(i65, i66, i14, bool202, bool203, bool204, bool25, bool26, bool27, bool28, bool196, bool30, bool31, bool32, bool33, bool34, bool35, bool197, bool37, bool38, bool39, bool40, bool41, bool42, bool43, bool44, bool45, bool46, bool47, bool48, bool49, bool50, bool51, bool52, bool53, bool54, bool55, bool56, bool57, bool58, bool59, bool60, bool198, bool62, bool63, bool64, bool65, bool66, bool67, bool199, bool69, bool70, bool71, bool72, bool73, bool74, bool75, bool76, bool77, bool78, bool79, bool80, bool81, bool82, bool83, bool84, bool85, bool86, bool87, bool88, bool89, bool90, bool91, bool92, bool200, bool94, bool95, bool96, bool97, bool98, bool99, bool194, bool101, bool102, bool201, bool8, bool195, bool14, bool16, bool17, bool18, bool13, bool19, bool20, bool15, bool21, bool12, bool10, (SerializationConstructorMarker) null);
    }

    /* JADX WARN: Code duplicated, block: B:290:0x044f  */
    /* JADX WARN: Code duplicated, block: B:296:0x0461  */
    /* JADX WARN: Code duplicated, block: B:302:0x0473  */
    /* JADX WARN: Code duplicated, block: B:308:0x0485  */
    /* JADX WARN: Code duplicated, block: B:314:0x0497  */
    /* JADX WARN: Code duplicated, block: B:320:0x04a9  */
    /* JADX WARN: Code duplicated, block: B:326:0x04bb  */
    /* JADX WARN: Code duplicated, block: B:332:0x04cd  */
    /* JADX WARN: Code duplicated, block: B:338:0x04df  */
    /* JADX WARN: Code duplicated, block: B:344:0x04f1  */
    /* JADX WARN: Code duplicated, block: B:350:0x0503  */
    /* JADX WARN: Code duplicated, block: B:356:0x0515  */
    /* JADX WARN: Code duplicated, block: B:362:0x0527  */
    /* JADX WARN: Code duplicated, block: B:368:0x0539  */
    /* JADX WARN: Code duplicated, block: B:374:0x054b  */
    /* JADX WARN: Code duplicated, block: B:380:0x055d  */
    /* JADX WARN: Code duplicated, block: B:386:0x056f  */
    /* JADX WARN: Code duplicated, block: B:392:0x0581  */
    /* JADX WARN: Code duplicated, block: B:398:0x0593  */
    /* JADX WARN: Code duplicated, block: B:404:0x05a5  */
    /* JADX WARN: Code duplicated, block: B:410:0x05b7  */
    /* JADX WARN: Code duplicated, block: B:416:0x05c9  */
    /* JADX WARN: Code duplicated, block: B:422:0x05db  */
    /* JADX WARN: Code duplicated, block: B:428:0x05ed  */
    /* JADX WARN: Code duplicated, block: B:434:0x05ff  */
    /* JADX WARN: Code duplicated, block: B:440:0x0611  */
    /* JADX WARN: Code duplicated, block: B:446:0x0623  */
    /* JADX WARN: Code duplicated, block: B:452:0x0635  */
    /* JADX WARN: Code duplicated, block: B:458:0x0647  */
    /* JADX WARN: Code duplicated, block: B:464:0x0659  */
    /* JADX WARN: Code duplicated, block: B:470:0x066b  */
    /* JADX WARN: Code duplicated, block: B:476:0x067d  */
    /* JADX WARN: Code duplicated, block: B:482:0x068f  */
    /* JADX WARN: Code duplicated, block: B:488:0x06a1  */
    /* JADX WARN: Code duplicated, block: B:494:0x06b3  */
    /* JADX WARN: Code duplicated, block: B:500:0x06c5  */
    /* JADX WARN: Code duplicated, block: B:506:0x06d7  */
    /* JADX WARN: Code duplicated, block: B:512:0x06e9  */
    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        FeaturesConfigDto featuresConfigDto;
        FeaturesConfigDto featuresConfigDto2 = (FeaturesConfigDto) obj;
        featuresConfigDto2.getClass();
        Boolean bool = featuresConfigDto2.d0;
        Boolean bool2 = featuresConfigDto2.c0;
        Boolean bool3 = featuresConfigDto2.b0;
        Boolean bool4 = featuresConfigDto2.a0;
        Boolean bool5 = featuresConfigDto2.Z;
        Boolean bool6 = featuresConfigDto2.Y;
        Boolean bool7 = featuresConfigDto2.X;
        Boolean bool8 = featuresConfigDto2.W;
        Boolean bool9 = featuresConfigDto2.V;
        Boolean bool10 = featuresConfigDto2.U;
        Boolean bool11 = featuresConfigDto2.T;
        Boolean bool12 = featuresConfigDto2.S;
        Boolean bool13 = featuresConfigDto2.R;
        Boolean bool14 = featuresConfigDto2.Q;
        Boolean bool15 = featuresConfigDto2.P;
        Boolean bool16 = featuresConfigDto2.O;
        Boolean bool17 = featuresConfigDto2.N;
        Boolean bool18 = featuresConfigDto2.M;
        Boolean bool19 = featuresConfigDto2.L;
        Boolean bool20 = featuresConfigDto2.K;
        Boolean bool21 = featuresConfigDto2.J;
        Boolean bool22 = featuresConfigDto2.I;
        Boolean bool23 = featuresConfigDto2.H;
        Boolean bool24 = featuresConfigDto2.G;
        Boolean bool25 = featuresConfigDto2.r;
        Boolean bool26 = featuresConfigDto2.q;
        Boolean bool27 = featuresConfigDto2.p;
        Boolean bool28 = featuresConfigDto2.o;
        Boolean bool29 = featuresConfigDto2.n;
        Boolean bool30 = featuresConfigDto2.m;
        Boolean bool31 = featuresConfigDto2.l;
        Boolean bool32 = featuresConfigDto2.f45412k;
        Boolean bool33 = featuresConfigDto2.f45411j;
        Boolean bool34 = featuresConfigDto2.f45410i;
        Boolean bool35 = featuresConfigDto2.f45409h;
        Boolean bool36 = featuresConfigDto2.g;
        Boolean bool37 = featuresConfigDto2.f45408f;
        Boolean bool38 = featuresConfigDto2.f45407e;
        Boolean bool39 = featuresConfigDto2.d;
        Boolean bool40 = featuresConfigDto2.f45406c;
        Boolean bool41 = featuresConfigDto2.f45405b;
        Boolean bool42 = featuresConfigDto2.f45404a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || bool42 != null) {
            compositeEncoderB.h(serialDescriptor, 0, BooleanSerializer.f75574a, bool42);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool41 != null) {
            compositeEncoderB.h(serialDescriptor, 1, BooleanSerializer.f75574a, bool41);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool40 != null) {
            compositeEncoderB.h(serialDescriptor, 2, BooleanSerializer.f75574a, bool40);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool39 != null) {
            compositeEncoderB.h(serialDescriptor, 3, BooleanSerializer.f75574a, bool39);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool38 != null) {
            compositeEncoderB.h(serialDescriptor, 4, BooleanSerializer.f75574a, bool38);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool37 != null) {
            compositeEncoderB.h(serialDescriptor, 5, BooleanSerializer.f75574a, bool37);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool36 != null) {
            compositeEncoderB.h(serialDescriptor, 6, BooleanSerializer.f75574a, bool36);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool35 != null) {
            compositeEncoderB.h(serialDescriptor, 7, BooleanSerializer.f75574a, bool35);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool34 != null) {
            compositeEncoderB.h(serialDescriptor, 8, BooleanSerializer.f75574a, bool34);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool33 != null) {
            compositeEncoderB.h(serialDescriptor, 9, BooleanSerializer.f75574a, bool33);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool32 != null) {
            compositeEncoderB.h(serialDescriptor, 10, BooleanSerializer.f75574a, bool32);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool31 != null) {
            compositeEncoderB.h(serialDescriptor, 11, BooleanSerializer.f75574a, bool31);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool30 != 0) {
            compositeEncoderB.h(serialDescriptor, 12, BooleanSerializer.f75574a, bool30);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool29 != 0) {
            compositeEncoderB.h(serialDescriptor, 13, BooleanSerializer.f75574a, bool29);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool28 != null) {
            compositeEncoderB.h(serialDescriptor, 14, BooleanSerializer.f75574a, bool28);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool27 != null) {
            compositeEncoderB.h(serialDescriptor, 15, BooleanSerializer.f75574a, bool27);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool26 != null) {
            compositeEncoderB.h(serialDescriptor, 16, BooleanSerializer.f75574a, bool26);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool25 != null) {
            compositeEncoderB.h(serialDescriptor, 17, BooleanSerializer.f75574a, bool25);
        }
        BooleanSerializer booleanSerializer = BooleanSerializer.f75574a;
        Boolean bool43 = featuresConfigDto2.s;
        Boolean bool44 = featuresConfigDto2.F;
        Boolean bool45 = featuresConfigDto2.E;
        Boolean bool46 = featuresConfigDto2.D;
        Boolean bool47 = featuresConfigDto2.C;
        Boolean bool48 = featuresConfigDto2.B;
        Boolean bool49 = featuresConfigDto2.A;
        Boolean bool50 = featuresConfigDto2.z;
        Boolean bool51 = featuresConfigDto2.y;
        Boolean bool52 = featuresConfigDto2.x;
        Boolean bool53 = featuresConfigDto2.w;
        Boolean bool54 = featuresConfigDto2.v;
        Boolean bool55 = featuresConfigDto2.u;
        Boolean bool56 = featuresConfigDto2.t;
        compositeEncoderB.h(serialDescriptor, 18, booleanSerializer, bool43);
        if (compositeEncoderB.o(serialDescriptor) || bool56 != null) {
            compositeEncoderB.h(serialDescriptor, 19, booleanSerializer, bool56);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool55 != null) {
            compositeEncoderB.h(serialDescriptor, 20, booleanSerializer, bool55);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool54 != null) {
            compositeEncoderB.h(serialDescriptor, 21, booleanSerializer, bool54);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool53 != null) {
            compositeEncoderB.h(serialDescriptor, 22, booleanSerializer, bool53);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool52 != null) {
            compositeEncoderB.h(serialDescriptor, 23, booleanSerializer, bool52);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool51 != null) {
            compositeEncoderB.h(serialDescriptor, 24, booleanSerializer, bool51);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool50 != null) {
            compositeEncoderB.h(serialDescriptor, 25, booleanSerializer, bool50);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool49 != null) {
            compositeEncoderB.h(serialDescriptor, 26, booleanSerializer, bool49);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool48 != null) {
            compositeEncoderB.h(serialDescriptor, 27, booleanSerializer, bool48);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool47 != null) {
            compositeEncoderB.h(serialDescriptor, 28, booleanSerializer, bool47);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool46 != null) {
            compositeEncoderB.h(serialDescriptor, 29, booleanSerializer, bool46);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool45 != null) {
            compositeEncoderB.h(serialDescriptor, 30, booleanSerializer, bool45);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool44 != null) {
            compositeEncoderB.h(serialDescriptor, 31, booleanSerializer, bool44);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool24 != null) {
            compositeEncoderB.h(serialDescriptor, 32, booleanSerializer, bool24);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool23 != null) {
            compositeEncoderB.h(serialDescriptor, 33, booleanSerializer, bool23);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool22 != null) {
            compositeEncoderB.h(serialDescriptor, 34, booleanSerializer, bool22);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool21 != null) {
            compositeEncoderB.h(serialDescriptor, 35, booleanSerializer, bool21);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool20 != null) {
            compositeEncoderB.h(serialDescriptor, 36, booleanSerializer, bool20);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool19 != null) {
            compositeEncoderB.h(serialDescriptor, 37, booleanSerializer, bool19);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool18 != null) {
            compositeEncoderB.h(serialDescriptor, 38, booleanSerializer, bool18);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool17 != null) {
            compositeEncoderB.h(serialDescriptor, 39, booleanSerializer, bool17);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool16 != null) {
            compositeEncoderB.h(serialDescriptor, 40, booleanSerializer, bool16);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool15 != null) {
            compositeEncoderB.h(serialDescriptor, 41, booleanSerializer, bool15);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool14 != null) {
            compositeEncoderB.h(serialDescriptor, 42, booleanSerializer, bool14);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool13 != null) {
            compositeEncoderB.h(serialDescriptor, 43, booleanSerializer, bool13);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool12 != null) {
            compositeEncoderB.h(serialDescriptor, 44, booleanSerializer, bool12);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool11 != null) {
            compositeEncoderB.h(serialDescriptor, 45, booleanSerializer, bool11);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool10 != null) {
            compositeEncoderB.h(serialDescriptor, 46, booleanSerializer, bool10);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool9 != null) {
            compositeEncoderB.h(serialDescriptor, 47, booleanSerializer, bool9);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool8 != null) {
            compositeEncoderB.h(serialDescriptor, 48, booleanSerializer, bool8);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool7 != null) {
            compositeEncoderB.h(serialDescriptor, 49, booleanSerializer, bool7);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool6 != null) {
            compositeEncoderB.h(serialDescriptor, 50, booleanSerializer, bool6);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool5 != null) {
            compositeEncoderB.h(serialDescriptor, 51, booleanSerializer, bool5);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool4 != null) {
            compositeEncoderB.h(serialDescriptor, 52, booleanSerializer, bool4);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool3 != null) {
            compositeEncoderB.h(serialDescriptor, 53, booleanSerializer, bool3);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool2 != null) {
            compositeEncoderB.h(serialDescriptor, 54, booleanSerializer, bool2);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool != null) {
            compositeEncoderB.h(serialDescriptor, 55, booleanSerializer, bool);
        }
        if (!compositeEncoderB.o(serialDescriptor)) {
            featuresConfigDto = featuresConfigDto2;
            if (featuresConfigDto.e0 != null) {
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.f0 != null) {
                compositeEncoderB.h(serialDescriptor, 57, booleanSerializer, featuresConfigDto.f0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.g0 != null) {
                compositeEncoderB.h(serialDescriptor, 58, booleanSerializer, featuresConfigDto.g0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.h0 != null) {
                compositeEncoderB.h(serialDescriptor, 59, booleanSerializer, featuresConfigDto.h0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.i0 != null) {
                compositeEncoderB.h(serialDescriptor, 60, booleanSerializer, featuresConfigDto.i0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.j0 != null) {
                compositeEncoderB.h(serialDescriptor, 61, booleanSerializer, featuresConfigDto.j0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.k0 != null) {
                compositeEncoderB.h(serialDescriptor, 62, booleanSerializer, featuresConfigDto.k0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.l0 != null) {
                compositeEncoderB.h(serialDescriptor, 63, booleanSerializer, featuresConfigDto.l0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.m0 != null) {
                compositeEncoderB.h(serialDescriptor, 64, booleanSerializer, featuresConfigDto.m0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.n0 != null) {
                compositeEncoderB.h(serialDescriptor, 65, booleanSerializer, featuresConfigDto.n0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.o0 != null) {
                compositeEncoderB.h(serialDescriptor, 66, booleanSerializer, featuresConfigDto.o0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.p0 != null) {
                compositeEncoderB.h(serialDescriptor, 67, booleanSerializer, featuresConfigDto.p0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.q0 != null) {
                compositeEncoderB.h(serialDescriptor, 68, booleanSerializer, featuresConfigDto.q0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.r0 != null) {
                compositeEncoderB.h(serialDescriptor, 69, booleanSerializer, featuresConfigDto.r0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.s0 != null) {
                compositeEncoderB.h(serialDescriptor, 70, booleanSerializer, featuresConfigDto.s0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.t0 != null) {
                compositeEncoderB.h(serialDescriptor, 71, booleanSerializer, featuresConfigDto.t0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.u0 != null) {
                compositeEncoderB.h(serialDescriptor, 72, booleanSerializer, featuresConfigDto.u0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.v0 != null) {
                compositeEncoderB.h(serialDescriptor, 73, booleanSerializer, featuresConfigDto.v0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.w0 != null) {
                compositeEncoderB.h(serialDescriptor, 74, booleanSerializer, featuresConfigDto.w0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.x0 != null) {
                compositeEncoderB.h(serialDescriptor, 75, booleanSerializer, featuresConfigDto.x0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.y0 != null) {
                compositeEncoderB.h(serialDescriptor, 76, booleanSerializer, featuresConfigDto.y0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.z0 != null) {
                compositeEncoderB.h(serialDescriptor, 77, booleanSerializer, featuresConfigDto.z0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.A0 != null) {
                compositeEncoderB.h(serialDescriptor, 78, booleanSerializer, featuresConfigDto.A0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.B0 != null) {
                compositeEncoderB.h(serialDescriptor, 79, booleanSerializer, featuresConfigDto.B0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.C0 != null) {
                compositeEncoderB.h(serialDescriptor, 80, booleanSerializer, featuresConfigDto.C0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.D0 != null) {
                compositeEncoderB.h(serialDescriptor, 81, booleanSerializer, featuresConfigDto.D0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.E0 != null) {
                compositeEncoderB.h(serialDescriptor, 82, booleanSerializer, featuresConfigDto.E0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.F0 != null) {
                compositeEncoderB.h(serialDescriptor, 83, booleanSerializer, featuresConfigDto.F0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.G0 != null) {
                compositeEncoderB.h(serialDescriptor, 84, booleanSerializer, featuresConfigDto.G0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.H0 != null) {
                compositeEncoderB.h(serialDescriptor, 85, booleanSerializer, featuresConfigDto.H0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.I0 != null) {
                compositeEncoderB.h(serialDescriptor, 86, booleanSerializer, featuresConfigDto.I0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.J0 != null) {
                compositeEncoderB.h(serialDescriptor, 87, booleanSerializer, featuresConfigDto.J0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.K0 != null) {
                compositeEncoderB.h(serialDescriptor, 88, booleanSerializer, featuresConfigDto.K0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.L0 != null) {
                compositeEncoderB.h(serialDescriptor, 89, booleanSerializer, featuresConfigDto.L0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.M0 != null) {
                compositeEncoderB.h(serialDescriptor, 90, booleanSerializer, featuresConfigDto.M0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.N0 != null) {
                compositeEncoderB.h(serialDescriptor, 91, booleanSerializer, featuresConfigDto.N0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.O0 != null) {
                compositeEncoderB.h(serialDescriptor, 92, booleanSerializer, featuresConfigDto.O0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.P0 != null) {
                compositeEncoderB.h(serialDescriptor, 93, booleanSerializer, featuresConfigDto.P0);
            }
            if (compositeEncoderB.o(serialDescriptor) || featuresConfigDto.Q0 != null) {
                compositeEncoderB.h(serialDescriptor, 94, booleanSerializer, featuresConfigDto.Q0);
            }
            compositeEncoderB.c(serialDescriptor);
        }
        featuresConfigDto = featuresConfigDto2;
        compositeEncoderB.h(serialDescriptor, 56, booleanSerializer, featuresConfigDto.e0);
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 57, booleanSerializer, featuresConfigDto.f0);
        } else {
            compositeEncoderB.h(serialDescriptor, 57, booleanSerializer, featuresConfigDto.f0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 58, booleanSerializer, featuresConfigDto.g0);
        } else {
            compositeEncoderB.h(serialDescriptor, 58, booleanSerializer, featuresConfigDto.g0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 59, booleanSerializer, featuresConfigDto.h0);
        } else {
            compositeEncoderB.h(serialDescriptor, 59, booleanSerializer, featuresConfigDto.h0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 60, booleanSerializer, featuresConfigDto.i0);
        } else {
            compositeEncoderB.h(serialDescriptor, 60, booleanSerializer, featuresConfigDto.i0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 61, booleanSerializer, featuresConfigDto.j0);
        } else {
            compositeEncoderB.h(serialDescriptor, 61, booleanSerializer, featuresConfigDto.j0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 62, booleanSerializer, featuresConfigDto.k0);
        } else {
            compositeEncoderB.h(serialDescriptor, 62, booleanSerializer, featuresConfigDto.k0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 63, booleanSerializer, featuresConfigDto.l0);
        } else {
            compositeEncoderB.h(serialDescriptor, 63, booleanSerializer, featuresConfigDto.l0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 64, booleanSerializer, featuresConfigDto.m0);
        } else {
            compositeEncoderB.h(serialDescriptor, 64, booleanSerializer, featuresConfigDto.m0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 65, booleanSerializer, featuresConfigDto.n0);
        } else {
            compositeEncoderB.h(serialDescriptor, 65, booleanSerializer, featuresConfigDto.n0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 66, booleanSerializer, featuresConfigDto.o0);
        } else {
            compositeEncoderB.h(serialDescriptor, 66, booleanSerializer, featuresConfigDto.o0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 67, booleanSerializer, featuresConfigDto.p0);
        } else {
            compositeEncoderB.h(serialDescriptor, 67, booleanSerializer, featuresConfigDto.p0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 68, booleanSerializer, featuresConfigDto.q0);
        } else {
            compositeEncoderB.h(serialDescriptor, 68, booleanSerializer, featuresConfigDto.q0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 69, booleanSerializer, featuresConfigDto.r0);
        } else {
            compositeEncoderB.h(serialDescriptor, 69, booleanSerializer, featuresConfigDto.r0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 70, booleanSerializer, featuresConfigDto.s0);
        } else {
            compositeEncoderB.h(serialDescriptor, 70, booleanSerializer, featuresConfigDto.s0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 71, booleanSerializer, featuresConfigDto.t0);
        } else {
            compositeEncoderB.h(serialDescriptor, 71, booleanSerializer, featuresConfigDto.t0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 72, booleanSerializer, featuresConfigDto.u0);
        } else {
            compositeEncoderB.h(serialDescriptor, 72, booleanSerializer, featuresConfigDto.u0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 73, booleanSerializer, featuresConfigDto.v0);
        } else {
            compositeEncoderB.h(serialDescriptor, 73, booleanSerializer, featuresConfigDto.v0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 74, booleanSerializer, featuresConfigDto.w0);
        } else {
            compositeEncoderB.h(serialDescriptor, 74, booleanSerializer, featuresConfigDto.w0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 75, booleanSerializer, featuresConfigDto.x0);
        } else {
            compositeEncoderB.h(serialDescriptor, 75, booleanSerializer, featuresConfigDto.x0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 76, booleanSerializer, featuresConfigDto.y0);
        } else {
            compositeEncoderB.h(serialDescriptor, 76, booleanSerializer, featuresConfigDto.y0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 77, booleanSerializer, featuresConfigDto.z0);
        } else {
            compositeEncoderB.h(serialDescriptor, 77, booleanSerializer, featuresConfigDto.z0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 78, booleanSerializer, featuresConfigDto.A0);
        } else {
            compositeEncoderB.h(serialDescriptor, 78, booleanSerializer, featuresConfigDto.A0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 79, booleanSerializer, featuresConfigDto.B0);
        } else {
            compositeEncoderB.h(serialDescriptor, 79, booleanSerializer, featuresConfigDto.B0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 80, booleanSerializer, featuresConfigDto.C0);
        } else {
            compositeEncoderB.h(serialDescriptor, 80, booleanSerializer, featuresConfigDto.C0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 81, booleanSerializer, featuresConfigDto.D0);
        } else {
            compositeEncoderB.h(serialDescriptor, 81, booleanSerializer, featuresConfigDto.D0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 82, booleanSerializer, featuresConfigDto.E0);
        } else {
            compositeEncoderB.h(serialDescriptor, 82, booleanSerializer, featuresConfigDto.E0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 83, booleanSerializer, featuresConfigDto.F0);
        } else {
            compositeEncoderB.h(serialDescriptor, 83, booleanSerializer, featuresConfigDto.F0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 84, booleanSerializer, featuresConfigDto.G0);
        } else {
            compositeEncoderB.h(serialDescriptor, 84, booleanSerializer, featuresConfigDto.G0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 85, booleanSerializer, featuresConfigDto.H0);
        } else {
            compositeEncoderB.h(serialDescriptor, 85, booleanSerializer, featuresConfigDto.H0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 86, booleanSerializer, featuresConfigDto.I0);
        } else {
            compositeEncoderB.h(serialDescriptor, 86, booleanSerializer, featuresConfigDto.I0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 87, booleanSerializer, featuresConfigDto.J0);
        } else {
            compositeEncoderB.h(serialDescriptor, 87, booleanSerializer, featuresConfigDto.J0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 88, booleanSerializer, featuresConfigDto.K0);
        } else {
            compositeEncoderB.h(serialDescriptor, 88, booleanSerializer, featuresConfigDto.K0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 89, booleanSerializer, featuresConfigDto.L0);
        } else {
            compositeEncoderB.h(serialDescriptor, 89, booleanSerializer, featuresConfigDto.L0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 90, booleanSerializer, featuresConfigDto.M0);
        } else {
            compositeEncoderB.h(serialDescriptor, 90, booleanSerializer, featuresConfigDto.M0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 91, booleanSerializer, featuresConfigDto.N0);
        } else {
            compositeEncoderB.h(serialDescriptor, 91, booleanSerializer, featuresConfigDto.N0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 92, booleanSerializer, featuresConfigDto.O0);
        } else {
            compositeEncoderB.h(serialDescriptor, 92, booleanSerializer, featuresConfigDto.O0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 93, booleanSerializer, featuresConfigDto.P0);
        } else {
            compositeEncoderB.h(serialDescriptor, 93, booleanSerializer, featuresConfigDto.P0);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 94, booleanSerializer, featuresConfigDto.Q0);
        } else {
            compositeEncoderB.h(serialDescriptor, 94, booleanSerializer, featuresConfigDto.Q0);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        BooleanSerializer booleanSerializer = BooleanSerializer.f75574a;
        return new KSerializer[]{BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer)};
    }
}

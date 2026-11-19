package com.vuitton.android.data.dto.config;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.g5;
import defpackage.pq0;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 V2\u00020\u0001:\u0002WVB\u0085\u0005\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0007\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0013\u001a\u00020\u0007\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010&\u001a\u00020\u0007\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010)\u001a\u00020\u0007\u0012\u0006\u0010*\u001a\u00020\u0007\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010.\u001a\n\u0012\u0004\u0012\u00020-\u0018\u00010\u0002\u0012\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\u001a\u0012\u0010\b\u0002\u00100\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002\u0012\u0006\u00102\u001a\u000201\u0012\n\b\u0002\u00104\u001a\u0004\u0018\u000103\u0012\n\b\u0002\u00105\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u00107\u001a\u0004\u0018\u000106\u0012\n\b\u0002\u00109\u001a\u0004\u0018\u000108\u0012\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\u001a\u0012\u0006\u0010=\u001a\u00020<\u0012\n\b\u0002\u0010?\u001a\u0004\u0018\u00010>\u0012\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010A\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010B\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010D\u001a\u0004\u0018\u00010C\u0012\n\b\u0002\u0010F\u001a\u0004\u0018\u00010E\u0012\n\b\u0002\u0010G\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010H\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010I\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010K\u001a\u0004\u0018\u00010J\u0012\u0006\u0010M\u001a\u00020L¢\u0006\u0004\bN\u0010OBõ\u0004\b\u0010\u0012\u0006\u0010Q\u001a\u00020P\u0012\u0006\u0010R\u001a\u00020P\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010 \u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\"\u001a\u0004\u0018\u00010!\u0012\b\u0010$\u001a\u0004\u0018\u00010#\u0012\b\u0010%\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010&\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010'\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010(\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010)\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010*\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010+\u001a\u0004\u0018\u00010\u001a\u0012\b\u0010,\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010.\u001a\n\u0012\u0004\u0012\u00020-\u0018\u00010\u0002\u0012\b\u0010/\u001a\u0004\u0018\u00010\u001a\u0012\u000e\u00100\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002\u0012\b\u00102\u001a\u0004\u0018\u000101\u0012\b\u00104\u001a\u0004\u0018\u000103\u0012\b\u00105\u001a\u0004\u0018\u00010\u0007\u0012\b\u00107\u001a\u0004\u0018\u000106\u0012\b\u00109\u001a\u0004\u0018\u000108\u0012\b\u0010:\u001a\u0004\u0018\u00010\u001a\u0012\b\u0010;\u001a\u0004\u0018\u00010\u001a\u0012\b\u0010=\u001a\u0004\u0018\u00010<\u0012\b\u0010?\u001a\u0004\u0018\u00010>\u0012\b\u0010@\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010A\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010B\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010D\u001a\u0004\u0018\u00010C\u0012\b\u0010F\u001a\u0004\u0018\u00010E\u0012\b\u0010G\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010H\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010I\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010K\u001a\u0004\u0018\u00010J\u0012\b\u0010M\u001a\u0004\u0018\u00010L\u0012\b\u0010T\u001a\u0004\u0018\u00010S¢\u0006\u0004\bN\u0010U¨\u0006X"}, d2 = {"Lcom/vuitton/android/data/dto/config/AppConfigDto;", "", "", "Lcom/vuitton/android/data/dto/config/AbTestDto;", "abTestDtoList", "Lcom/vuitton/android/data/dto/config/AICompanionConfigDto;", "aiCompanionConfigDto", "", "legalPrivacyUrl", "unformattedSalesforceApiUrl", "bffBaseUrl", "atgApiUrl", "accountCreationUrlLogin", "accountCreationUrlRegistration", "arModelReferenceApiUrl", "bestSellersSkuList", "callForInquiry", "cartUrl", "confirmationPageUrl", "contactFormUrl", "consumerRightsUrl", "customerServicePhoneNumber", "customerServiceSms", "customerServiceEmail", "customerServiceWhatsapp", "customerServiceKakaoTalk", "", "displayRepairs", "Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;", "distantRepairsConfigDto", "unformattedFacadeSecureApiUrl", "unformattedFacadeApiUrl", "unformattedFacadeMyLVApiUrl", "Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;", "featuresConfigDto", "Lcom/vuitton/android/data/dto/config/FeedConfigDto;", "feedConfigDto", "lvStoreLang", "lvWebsiteUrl", "productPageUrl", "salesforceLang", "shareAppUrl", "storeLocatorUrl", "showStoreStockGeolocationButton", "storeStockAvailabilityUrl", "Lcom/vuitton/android/data/dto/config/UrlCatchingConfigDto;", "urlCatchingList", "useCountry", "watchSkuList", "Lcom/vuitton/android/data/dto/config/CertificateConfigDto;", "certificateConfigDto", "Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;", "nativeCartConfigDto", "unformattedBackInStockUrl", "Lcom/vuitton/android/data/dto/config/HelpConfigDto;", "helpConfigDto", "Lcom/vuitton/android/data/dto/config/ServicesConfigDto;", "servicesConfigDto", "isEcommerce", "isEcommerceWebOnly", "Lcom/vuitton/android/data/dto/config/VatIncludedConfigDto;", "displayVatIncludedLabelDto", "Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;", "powerFrontConfigDto", "waitingRoomAssetUrl", "emailUsUrl", "personalDataEmail", "Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;", "virtualStudioConfigDto", "Lcom/vuitton/android/data/dto/config/PersonalSelectionsConfigDto;", "personalSelectionsConfigDto", "googleCheckoutRedirectUrl", "lineCheckoutRedirectUrl", "kakaoCheckoutRedirectUrl", "Lcom/vuitton/android/data/dto/config/AddressAutocompleteConfigDto;", "addressAutocompleteConfigDto", "Lcom/vuitton/android/data/dto/config/PersonalisationConfigDto;", "personalisationConfigDto", "<init>", "(Ljava/util/List;Lcom/vuitton/android/data/dto/config/AICompanionConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;Lcom/vuitton/android/data/dto/config/FeedConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Lcom/vuitton/android/data/dto/config/CertificateConfigDto;Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/HelpConfigDto;Lcom/vuitton/android/data/dto/config/ServicesConfigDto;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/config/VatIncludedConfigDto;Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;Lcom/vuitton/android/data/dto/config/PersonalSelectionsConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/AddressAutocompleteConfigDto;Lcom/vuitton/android/data/dto/config/PersonalisationConfigDto;)V", "", "seen0", "seen1", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IILjava/util/List;Lcom/vuitton/android/data/dto/config/AICompanionConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;Lcom/vuitton/android/data/dto/config/FeedConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Lcom/vuitton/android/data/dto/config/CertificateConfigDto;Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/HelpConfigDto;Lcom/vuitton/android/data/dto/config/ServicesConfigDto;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/config/VatIncludedConfigDto;Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;Lcom/vuitton/android/data/dto/config/PersonalSelectionsConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/AddressAutocompleteConfigDto;Lcom/vuitton/android/data/dto/config/PersonalisationConfigDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AppConfigDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] f0;
    public final FeedConfigDto A;
    public final String B;
    public final String C;
    public final String D;
    public final String E;
    public final String F;
    public final String G;
    public final Boolean H;
    public final String I;
    public final List J;
    public final Boolean K;
    public final List L;
    public final CertificateConfigDto M;
    public final NativeCartConfigDto N;
    public final String O;
    public final HelpConfigDto P;
    public final ServicesConfigDto Q;
    public final Boolean R;
    public final Boolean S;
    public final VatIncludedConfigDto T;
    public final PowerFrontConfigDto U;
    public final String V;
    public final String W;
    public final String X;
    public final VirtualStudioConfigDto Y;
    public final PersonalSelectionsConfigDto Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f45380a;
    public final String a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AICompanionConfigDto f45381b;
    public final String b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45382c;
    public final String c0;
    public final String d;
    public final AddressAutocompleteConfigDto d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45383e;
    public final PersonalisationConfigDto e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f45384f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f45385h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f45386i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f45387j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f45388k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;
    public final String p;
    public final String q;
    public final String r;
    public final String s;
    public final String t;
    public final Boolean u;
    public final DistantRepairsConfigDto v;
    public final String w;
    public final String x;
    public final String y;
    public final FeaturesConfigDto z;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/config/AppConfigDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/config/AppConfigDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AppConfigDto> serializer() {
            return AppConfigDto$$serializer.f45389a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f0 = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new g5(11)), null, null, null, null, null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new g5(12)), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new g5(13)), null, LazyKt.a(lazyThreadSafetyMode, new g5(14)), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null};
    }

    public /* synthetic */ AppConfigDto(int i2, int i3, List list, AICompanionConfigDto aICompanionConfigDto, String str, String str2, String str3, String str4, String str5, String str6, String str7, List list2, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, Boolean bool, DistantRepairsConfigDto distantRepairsConfigDto, String str18, String str19, String str20, FeaturesConfigDto featuresConfigDto, FeedConfigDto feedConfigDto, String str21, String str22, String str23, String str24, String str25, String str26, Boolean bool2, String str27, List list3, Boolean bool3, List list4, CertificateConfigDto certificateConfigDto, NativeCartConfigDto nativeCartConfigDto, String str28, HelpConfigDto helpConfigDto, ServicesConfigDto servicesConfigDto, Boolean bool4, Boolean bool5, VatIncludedConfigDto vatIncludedConfigDto, PowerFrontConfigDto powerFrontConfigDto, String str29, String str30, String str31, VirtualStudioConfigDto virtualStudioConfigDto, PersonalSelectionsConfigDto personalSelectionsConfigDto, String str32, String str33, String str34, AddressAutocompleteConfigDto addressAutocompleteConfigDto, PersonalisationConfigDto personalisationConfigDto, SerializationConstructorMarker serializationConstructorMarker) {
        if ((-1776278275 != (i2 & (-1776278275))) || (16785473 != (i3 & 16785473))) {
            PluginExceptionsKt.a(new int[]{i2, i3}, new int[]{-1776278275, 16785473}, AppConfigDto$$serializer.f45389a.getF19838b());
            throw null;
        }
        this.f45380a = list;
        if ((i2 & 2) == 0) {
            this.f45381b = null;
        } else {
            this.f45381b = aICompanionConfigDto;
        }
        this.f45382c = str;
        this.d = str2;
        this.f45383e = str3;
        this.f45384f = str4;
        this.g = str5;
        this.f45385h = str6;
        if ((i2 & 256) == 0) {
            this.f45386i = null;
        } else {
            this.f45386i = str7;
        }
        if ((i2 & 512) == 0) {
            this.f45387j = null;
        } else {
            this.f45387j = list2;
        }
        this.f45388k = str8;
        if ((i2 & 2048) == 0) {
            this.l = null;
        } else {
            this.l = str9;
        }
        if ((i2 & 4096) == 0) {
            this.m = null;
        } else {
            this.m = str10;
        }
        this.n = str11;
        if ((i2 & 16384) == 0) {
            this.o = null;
        } else {
            this.o = str12;
        }
        if ((i2 & 32768) == 0) {
            this.p = null;
        } else {
            this.p = str13;
        }
        if ((i2 & 65536) == 0) {
            this.q = null;
        } else {
            this.q = str14;
        }
        if ((i2 & 131072) == 0) {
            this.r = null;
        } else {
            this.r = str15;
        }
        if ((i2 & 262144) == 0) {
            this.s = null;
        } else {
            this.s = str16;
        }
        if ((i2 & 524288) == 0) {
            this.t = null;
        } else {
            this.t = str17;
        }
        if ((i2 & 1048576) == 0) {
            this.u = null;
        } else {
            this.u = bool;
        }
        this.v = distantRepairsConfigDto;
        if ((i2 & 4194304) == 0) {
            this.w = null;
        } else {
            this.w = str18;
        }
        if ((i2 & 8388608) == 0) {
            this.x = null;
        } else {
            this.x = str19;
        }
        if ((16777216 & i2) == 0) {
            this.y = null;
        } else {
            this.y = str20;
        }
        this.z = featuresConfigDto;
        this.A = feedConfigDto;
        if ((134217728 & i2) == 0) {
            this.B = null;
        } else {
            this.B = str21;
        }
        this.C = str22;
        if ((536870912 & i2) == 0) {
            this.D = null;
        } else {
            this.D = str23;
        }
        if ((i2 & 1073741824) == 0) {
            this.E = null;
        } else {
            this.E = str24;
        }
        this.F = str25;
        this.G = str26;
        if ((i3 & 2) == 0) {
            this.H = null;
        } else {
            this.H = bool2;
        }
        if ((i3 & 4) == 0) {
            this.I = null;
        } else {
            this.I = str27;
        }
        if ((i3 & 8) == 0) {
            this.J = null;
        } else {
            this.J = list3;
        }
        if ((i3 & 16) == 0) {
            this.K = null;
        } else {
            this.K = bool3;
        }
        if ((i3 & 32) == 0) {
            this.L = null;
        } else {
            this.L = list4;
        }
        this.M = certificateConfigDto;
        if ((i3 & 128) == 0) {
            this.N = null;
        } else {
            this.N = nativeCartConfigDto;
        }
        if ((i3 & 256) == 0) {
            this.O = null;
        } else {
            this.O = str28;
        }
        if ((i3 & 512) == 0) {
            this.P = null;
        } else {
            this.P = helpConfigDto;
        }
        if ((i3 & 1024) == 0) {
            this.Q = null;
        } else {
            this.Q = servicesConfigDto;
        }
        if ((i3 & 2048) == 0) {
            this.R = null;
        } else {
            this.R = bool4;
        }
        if ((i3 & 4096) == 0) {
            this.S = null;
        } else {
            this.S = bool5;
        }
        this.T = vatIncludedConfigDto;
        if ((i3 & 16384) == 0) {
            this.U = null;
        } else {
            this.U = powerFrontConfigDto;
        }
        if ((i3 & 32768) == 0) {
            this.V = null;
        } else {
            this.V = str29;
        }
        if ((i3 & 65536) == 0) {
            this.W = null;
        } else {
            this.W = str30;
        }
        if ((i3 & 131072) == 0) {
            this.X = null;
        } else {
            this.X = str31;
        }
        if ((i3 & 262144) == 0) {
            this.Y = null;
        } else {
            this.Y = virtualStudioConfigDto;
        }
        if ((i3 & 524288) == 0) {
            this.Z = null;
        } else {
            this.Z = personalSelectionsConfigDto;
        }
        if ((i3 & 1048576) == 0) {
            this.a0 = null;
        } else {
            this.a0 = str32;
        }
        if ((2097152 & i3) == 0) {
            this.b0 = null;
        } else {
            this.b0 = str33;
        }
        if ((i3 & 4194304) == 0) {
            this.c0 = null;
        } else {
            this.c0 = str34;
        }
        if ((i3 & 8388608) == 0) {
            this.d0 = null;
        } else {
            this.d0 = addressAutocompleteConfigDto;
        }
        this.e0 = personalisationConfigDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppConfigDto)) {
            return false;
        }
        AppConfigDto appConfigDto = (AppConfigDto) obj;
        return Intrinsics.c(this.f45380a, appConfigDto.f45380a) && Intrinsics.c(this.f45381b, appConfigDto.f45381b) && Intrinsics.c(this.f45382c, appConfigDto.f45382c) && Intrinsics.c(this.d, appConfigDto.d) && Intrinsics.c(this.f45383e, appConfigDto.f45383e) && Intrinsics.c(this.f45384f, appConfigDto.f45384f) && Intrinsics.c(this.g, appConfigDto.g) && Intrinsics.c(this.f45385h, appConfigDto.f45385h) && Intrinsics.c(this.f45386i, appConfigDto.f45386i) && Intrinsics.c(this.f45387j, appConfigDto.f45387j) && Intrinsics.c(this.f45388k, appConfigDto.f45388k) && Intrinsics.c(this.l, appConfigDto.l) && Intrinsics.c(this.m, appConfigDto.m) && Intrinsics.c(this.n, appConfigDto.n) && Intrinsics.c(this.o, appConfigDto.o) && Intrinsics.c(this.p, appConfigDto.p) && Intrinsics.c(this.q, appConfigDto.q) && Intrinsics.c(this.r, appConfigDto.r) && Intrinsics.c(this.s, appConfigDto.s) && Intrinsics.c(this.t, appConfigDto.t) && Intrinsics.c(this.u, appConfigDto.u) && Intrinsics.c(this.v, appConfigDto.v) && Intrinsics.c(this.w, appConfigDto.w) && Intrinsics.c(this.x, appConfigDto.x) && Intrinsics.c(this.y, appConfigDto.y) && Intrinsics.c(this.z, appConfigDto.z) && Intrinsics.c(this.A, appConfigDto.A) && Intrinsics.c(this.B, appConfigDto.B) && Intrinsics.c(this.C, appConfigDto.C) && Intrinsics.c(this.D, appConfigDto.D) && Intrinsics.c(this.E, appConfigDto.E) && Intrinsics.c(this.F, appConfigDto.F) && Intrinsics.c(this.G, appConfigDto.G) && Intrinsics.c(this.H, appConfigDto.H) && Intrinsics.c(this.I, appConfigDto.I) && Intrinsics.c(this.J, appConfigDto.J) && Intrinsics.c(this.K, appConfigDto.K) && Intrinsics.c(this.L, appConfigDto.L) && Intrinsics.c(this.M, appConfigDto.M) && Intrinsics.c(this.N, appConfigDto.N) && Intrinsics.c(this.O, appConfigDto.O) && Intrinsics.c(this.P, appConfigDto.P) && Intrinsics.c(this.Q, appConfigDto.Q) && Intrinsics.c(this.R, appConfigDto.R) && Intrinsics.c(this.S, appConfigDto.S) && Intrinsics.c(this.T, appConfigDto.T) && Intrinsics.c(this.U, appConfigDto.U) && Intrinsics.c(this.V, appConfigDto.V) && Intrinsics.c(this.W, appConfigDto.W) && Intrinsics.c(this.X, appConfigDto.X) && Intrinsics.c(this.Y, appConfigDto.Y) && Intrinsics.c(this.Z, appConfigDto.Z) && Intrinsics.c(this.a0, appConfigDto.a0) && Intrinsics.c(this.b0, appConfigDto.b0) && Intrinsics.c(this.c0, appConfigDto.c0) && Intrinsics.c(this.d0, appConfigDto.d0) && Intrinsics.c(this.e0, appConfigDto.e0);
    }

    public final int hashCode() {
        List list = this.f45380a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        AICompanionConfigDto aICompanionConfigDto = this.f45381b;
        int iB = fc.b(fc.b(fc.b(fc.b(fc.b(fc.b((iHashCode + (aICompanionConfigDto == null ? 0 : aICompanionConfigDto.hashCode())) * 31, 31, this.f45382c), 31, this.d), 31, this.f45383e), 31, this.f45384f), 31, this.g), 31, this.f45385h);
        String str = this.f45386i;
        int iHashCode2 = (iB + (str == null ? 0 : str.hashCode())) * 31;
        List list2 = this.f45387j;
        int iB2 = fc.b((iHashCode2 + (list2 == null ? 0 : list2.hashCode())) * 31, 31, this.f45388k);
        String str2 = this.l;
        int iHashCode3 = (iB2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.m;
        int iB3 = fc.b((iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31, 31, this.n);
        String str4 = this.o;
        int iHashCode4 = (iB3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.p;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.q;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.r;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.s;
        int iHashCode8 = (iHashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.t;
        int iHashCode9 = (iHashCode8 + (str9 == null ? 0 : str9.hashCode())) * 31;
        Boolean bool = this.u;
        int iHashCode10 = (this.v.hashCode() + ((iHashCode9 + (bool == null ? 0 : bool.hashCode())) * 31)) * 31;
        String str10 = this.w;
        int iHashCode11 = (iHashCode10 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.x;
        int iHashCode12 = (iHashCode11 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.y;
        int iHashCode13 = (this.A.f45415a.hashCode() + ((this.z.hashCode() + ((iHashCode12 + (str12 == null ? 0 : str12.hashCode())) * 31)) * 31)) * 31;
        String str13 = this.B;
        int iB4 = fc.b((iHashCode13 + (str13 == null ? 0 : str13.hashCode())) * 31, 31, this.C);
        String str14 = this.D;
        int iHashCode14 = (iB4 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.E;
        int iB5 = fc.b(fc.b((iHashCode14 + (str15 == null ? 0 : str15.hashCode())) * 31, 31, this.F), 31, this.G);
        Boolean bool2 = this.H;
        int iHashCode15 = (iB5 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        String str16 = this.I;
        int iHashCode16 = (iHashCode15 + (str16 == null ? 0 : str16.hashCode())) * 31;
        List list3 = this.J;
        int iHashCode17 = (iHashCode16 + (list3 == null ? 0 : list3.hashCode())) * 31;
        Boolean bool3 = this.K;
        int iHashCode18 = (iHashCode17 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        List list4 = this.L;
        int iHashCode19 = (this.M.hashCode() + ((iHashCode18 + (list4 == null ? 0 : list4.hashCode())) * 31)) * 31;
        NativeCartConfigDto nativeCartConfigDto = this.N;
        int iHashCode20 = (iHashCode19 + (nativeCartConfigDto == null ? 0 : nativeCartConfigDto.hashCode())) * 31;
        String str17 = this.O;
        int iHashCode21 = (iHashCode20 + (str17 == null ? 0 : str17.hashCode())) * 31;
        HelpConfigDto helpConfigDto = this.P;
        int iHashCode22 = (iHashCode21 + (helpConfigDto == null ? 0 : helpConfigDto.hashCode())) * 31;
        ServicesConfigDto servicesConfigDto = this.Q;
        int iHashCode23 = (iHashCode22 + (servicesConfigDto == null ? 0 : servicesConfigDto.hashCode())) * 31;
        Boolean bool4 = this.R;
        int iHashCode24 = (iHashCode23 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        Boolean bool5 = this.S;
        int iHashCode25 = (this.T.hashCode() + ((iHashCode24 + (bool5 == null ? 0 : bool5.hashCode())) * 31)) * 31;
        PowerFrontConfigDto powerFrontConfigDto = this.U;
        int iHashCode26 = (iHashCode25 + (powerFrontConfigDto == null ? 0 : powerFrontConfigDto.hashCode())) * 31;
        String str18 = this.V;
        int iHashCode27 = (iHashCode26 + (str18 == null ? 0 : str18.hashCode())) * 31;
        String str19 = this.W;
        int iHashCode28 = (iHashCode27 + (str19 == null ? 0 : str19.hashCode())) * 31;
        String str20 = this.X;
        int iHashCode29 = (iHashCode28 + (str20 == null ? 0 : str20.hashCode())) * 31;
        VirtualStudioConfigDto virtualStudioConfigDto = this.Y;
        int iHashCode30 = (iHashCode29 + (virtualStudioConfigDto == null ? 0 : virtualStudioConfigDto.hashCode())) * 31;
        PersonalSelectionsConfigDto personalSelectionsConfigDto = this.Z;
        int iHashCode31 = (iHashCode30 + (personalSelectionsConfigDto == null ? 0 : personalSelectionsConfigDto.hashCode())) * 31;
        String str21 = this.a0;
        int iHashCode32 = (iHashCode31 + (str21 == null ? 0 : str21.hashCode())) * 31;
        String str22 = this.b0;
        int iHashCode33 = (iHashCode32 + (str22 == null ? 0 : str22.hashCode())) * 31;
        String str23 = this.c0;
        int iHashCode34 = (iHashCode33 + (str23 == null ? 0 : str23.hashCode())) * 31;
        AddressAutocompleteConfigDto addressAutocompleteConfigDto = this.d0;
        return this.e0.hashCode() + ((iHashCode34 + (addressAutocompleteConfigDto != null ? addressAutocompleteConfigDto.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AppConfigDto(abTestDtoList=");
        sb.append(this.f45380a);
        sb.append(", aiCompanionConfigDto=");
        sb.append(this.f45381b);
        sb.append(", legalPrivacyUrl=");
        cj.C(sb, this.f45382c, ", unformattedSalesforceApiUrl=", this.d, ", bffBaseUrl=");
        cj.C(sb, this.f45383e, ", atgApiUrl=", this.f45384f, ", accountCreationUrlLogin=");
        cj.C(sb, this.g, ", accountCreationUrlRegistration=", this.f45385h, ", arModelReferenceApiUrl=");
        d21.z(this.f45386i, ", bestSellersSkuList=", ", callForInquiry=", sb, this.f45387j);
        cj.C(sb, this.f45388k, ", cartUrl=", this.l, ", confirmationPageUrl=");
        cj.C(sb, this.m, ", contactFormUrl=", this.n, ", consumerRightsUrl=");
        cj.C(sb, this.o, ", customerServicePhoneNumber=", this.p, ", customerServiceSms=");
        cj.C(sb, this.q, ", customerServiceEmail=", this.r, ", customerServiceWhatsapp=");
        cj.C(sb, this.s, ", customerServiceKakaoTalk=", this.t, ", displayRepairs=");
        sb.append(this.u);
        sb.append(", distantRepairsConfigDto=");
        sb.append(this.v);
        sb.append(", unformattedFacadeSecureApiUrl=");
        cj.C(sb, this.w, ", unformattedFacadeApiUrl=", this.x, ", unformattedFacadeMyLVApiUrl=");
        sb.append(this.y);
        sb.append(", featuresConfigDto=");
        sb.append(this.z);
        sb.append(", feedConfigDto=");
        sb.append(this.A);
        sb.append(", lvStoreLang=");
        sb.append(this.B);
        sb.append(", lvWebsiteUrl=");
        cj.C(sb, this.C, ", productPageUrl=", this.D, ", salesforceLang=");
        cj.C(sb, this.E, ", shareAppUrl=", this.F, ", storeLocatorUrl=");
        sb.append(this.G);
        sb.append(", showStoreStockGeolocationButton=");
        sb.append(this.H);
        sb.append(", storeStockAvailabilityUrl=");
        d21.z(this.I, ", urlCatchingList=", ", useCountry=", sb, this.J);
        sb.append(this.K);
        sb.append(", watchSkuList=");
        sb.append(this.L);
        sb.append(", certificateConfigDto=");
        sb.append(this.M);
        sb.append(", nativeCartConfigDto=");
        sb.append(this.N);
        sb.append(", unformattedBackInStockUrl=");
        sb.append(this.O);
        sb.append(", helpConfigDto=");
        sb.append(this.P);
        sb.append(", servicesConfigDto=");
        sb.append(this.Q);
        sb.append(", isEcommerce=");
        sb.append(this.R);
        sb.append(", isEcommerceWebOnly=");
        sb.append(this.S);
        sb.append(", displayVatIncludedLabelDto=");
        sb.append(this.T);
        sb.append(", powerFrontConfigDto=");
        sb.append(this.U);
        sb.append(", waitingRoomAssetUrl=");
        sb.append(this.V);
        sb.append(", emailUsUrl=");
        cj.C(sb, this.W, ", personalDataEmail=", this.X, ", virtualStudioConfigDto=");
        sb.append(this.Y);
        sb.append(", personalSelectionsConfigDto=");
        sb.append(this.Z);
        sb.append(", googleCheckoutRedirectUrl=");
        cj.C(sb, this.a0, ", lineCheckoutRedirectUrl=", this.b0, ", kakaoCheckoutRedirectUrl=");
        sb.append(this.c0);
        sb.append(", addressAutocompleteConfigDto=");
        sb.append(this.d0);
        sb.append(", personalisationConfigDto=");
        sb.append(this.e0);
        sb.append(")");
        return sb.toString();
    }

    public AppConfigDto(List<AbTestDto> list, AICompanionConfigDto aICompanionConfigDto, String str, String str2, String str3, String str4, String str5, String str6, String str7, List<String> list2, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, Boolean bool, DistantRepairsConfigDto distantRepairsConfigDto, String str18, String str19, String str20, FeaturesConfigDto featuresConfigDto, FeedConfigDto feedConfigDto, String str21, String str22, String str23, String str24, String str25, String str26, Boolean bool2, String str27, List<UrlCatchingConfigDto> list3, Boolean bool3, List<String> list4, CertificateConfigDto certificateConfigDto, NativeCartConfigDto nativeCartConfigDto, String str28, HelpConfigDto helpConfigDto, ServicesConfigDto servicesConfigDto, Boolean bool4, Boolean bool5, VatIncludedConfigDto vatIncludedConfigDto, PowerFrontConfigDto powerFrontConfigDto, String str29, String str30, String str31, VirtualStudioConfigDto virtualStudioConfigDto, PersonalSelectionsConfigDto personalSelectionsConfigDto, String str32, String str33, String str34, AddressAutocompleteConfigDto addressAutocompleteConfigDto, PersonalisationConfigDto personalisationConfigDto) {
        pq0.z(str, str2, str3, str4, str5);
        str6.getClass();
        str8.getClass();
        str11.getClass();
        distantRepairsConfigDto.getClass();
        featuresConfigDto.getClass();
        feedConfigDto.getClass();
        str22.getClass();
        str25.getClass();
        str26.getClass();
        certificateConfigDto.getClass();
        vatIncludedConfigDto.getClass();
        personalisationConfigDto.getClass();
        this.f45380a = list;
        this.f45381b = aICompanionConfigDto;
        this.f45382c = str;
        this.d = str2;
        this.f45383e = str3;
        this.f45384f = str4;
        this.g = str5;
        this.f45385h = str6;
        this.f45386i = str7;
        this.f45387j = list2;
        this.f45388k = str8;
        this.l = str9;
        this.m = str10;
        this.n = str11;
        this.o = str12;
        this.p = str13;
        this.q = str14;
        this.r = str15;
        this.s = str16;
        this.t = str17;
        this.u = bool;
        this.v = distantRepairsConfigDto;
        this.w = str18;
        this.x = str19;
        this.y = str20;
        this.z = featuresConfigDto;
        this.A = feedConfigDto;
        this.B = str21;
        this.C = str22;
        this.D = str23;
        this.E = str24;
        this.F = str25;
        this.G = str26;
        this.H = bool2;
        this.I = str27;
        this.J = list3;
        this.K = bool3;
        this.L = list4;
        this.M = certificateConfigDto;
        this.N = nativeCartConfigDto;
        this.O = str28;
        this.P = helpConfigDto;
        this.Q = servicesConfigDto;
        this.R = bool4;
        this.S = bool5;
        this.T = vatIncludedConfigDto;
        this.U = powerFrontConfigDto;
        this.V = str29;
        this.W = str30;
        this.X = str31;
        this.Y = virtualStudioConfigDto;
        this.Z = personalSelectionsConfigDto;
        this.a0 = str32;
        this.b0 = str33;
        this.c0 = str34;
        this.d0 = addressAutocompleteConfigDto;
        this.e0 = personalisationConfigDto;
    }

    public /* synthetic */ AppConfigDto(List list, AICompanionConfigDto aICompanionConfigDto, String str, String str2, String str3, String str4, String str5, String str6, String str7, List list2, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, Boolean bool, DistantRepairsConfigDto distantRepairsConfigDto, String str18, String str19, String str20, FeaturesConfigDto featuresConfigDto, FeedConfigDto feedConfigDto, String str21, String str22, String str23, String str24, String str25, String str26, Boolean bool2, String str27, List list3, Boolean bool3, List list4, CertificateConfigDto certificateConfigDto, NativeCartConfigDto nativeCartConfigDto, String str28, HelpConfigDto helpConfigDto, ServicesConfigDto servicesConfigDto, Boolean bool4, Boolean bool5, VatIncludedConfigDto vatIncludedConfigDto, PowerFrontConfigDto powerFrontConfigDto, String str29, String str30, String str31, VirtualStudioConfigDto virtualStudioConfigDto, PersonalSelectionsConfigDto personalSelectionsConfigDto, String str32, String str33, String str34, AddressAutocompleteConfigDto addressAutocompleteConfigDto, PersonalisationConfigDto personalisationConfigDto, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i2 & 2) != 0 ? null : aICompanionConfigDto, str, str2, str3, str4, str5, str6, (i2 & 256) != 0 ? null : str7, (i2 & 512) != 0 ? null : list2, str8, (i2 & 2048) != 0 ? null : str9, (i2 & 4096) != 0 ? null : str10, str11, (i2 & 16384) != 0 ? null : str12, (i2 & 32768) != 0 ? null : str13, (i2 & 65536) != 0 ? null : str14, (i2 & 131072) != 0 ? null : str15, (i2 & 262144) != 0 ? null : str16, (i2 & 524288) != 0 ? null : str17, (i2 & 1048576) != 0 ? null : bool, distantRepairsConfigDto, (i2 & 4194304) != 0 ? null : str18, (i2 & 8388608) != 0 ? null : str19, (16777216 & i2) != 0 ? null : str20, featuresConfigDto, feedConfigDto, (134217728 & i2) != 0 ? null : str21, str22, (536870912 & i2) != 0 ? null : str23, (i2 & 1073741824) != 0 ? null : str24, str25, str26, (i3 & 2) != 0 ? null : bool2, (i3 & 4) != 0 ? null : str27, (i3 & 8) != 0 ? null : list3, (i3 & 16) != 0 ? null : bool3, (i3 & 32) != 0 ? null : list4, certificateConfigDto, (i3 & 128) != 0 ? null : nativeCartConfigDto, (i3 & 256) != 0 ? null : str28, (i3 & 512) != 0 ? null : helpConfigDto, (i3 & 1024) != 0 ? null : servicesConfigDto, (i3 & 2048) != 0 ? null : bool4, (i3 & 4096) != 0 ? null : bool5, vatIncludedConfigDto, (i3 & 16384) != 0 ? null : powerFrontConfigDto, (i3 & 32768) != 0 ? null : str29, (i3 & 65536) != 0 ? null : str30, (i3 & 131072) != 0 ? null : str31, (i3 & 262144) != 0 ? null : virtualStudioConfigDto, (i3 & 524288) != 0 ? null : personalSelectionsConfigDto, (i3 & 1048576) != 0 ? null : str32, (2097152 & i3) != 0 ? null : str33, (i3 & 4194304) != 0 ? null : str34, (i3 & 8388608) != 0 ? null : addressAutocompleteConfigDto, personalisationConfigDto);
    }
}
